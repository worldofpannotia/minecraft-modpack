import {LAB, check, safe, NS} from './pack.mjs';
import {norm} from './sources.mjs';

/** Max tag members to exercise per recipe: the first, the middle and the last. */
const MAX_VARIANTS = 3;

const COOKING = {
    'minecraft:smelting': {block: 'furnace', time: 200},
    'minecraft:blasting': {block: 'blast_furnace', time: 100},
    'minecraft:smoking': {block: 'smoker', time: 100},
};

// Items that leave something behind in the crafter.
const REMAINDERS = {
    'minecraft:water_bucket': 'minecraft:bucket',
    'minecraft:lava_bucket': 'minecraft:bucket',
    'minecraft:milk_bucket': 'minecraft:bucket',
    'minecraft:powder_snow_bucket': 'minecraft:bucket',
    'minecraft:honey_bottle': 'minecraft:glass_bottle',
};

/** Which test-plan section a recipe belongs to, so a failure points at the right row. */
function planId(recipe) {
    const {namespace, resource, json} = recipe;
    const out = norm(typeof json.result === 'string' ? json.result : (json.result?.id ?? ''));
    const byNamespace = {
        copper_powered_rails: 'REC-19',
        dropper_to_dispenser: 'REC-18',
        craftable_blackstone: 'REC-17',
        crafting: 'REC-17',
        coral_blocks: 'REC-24',
        craftable_bundles_rabbit_hide: 'REC-24',
        flint_to_gravel: 'REC-24',
        slabs_stairs_to_block: 'REC-15',
        universal_dyeing: 'REC-20',
        sandstone_dyeing: 'REC-21',
        uncraftable_ice: 'REC-22',
        uncraftable_nether_wart_block: 'REC-22',
        wool_to_string: 'REC-22',
        powder_to_glass: 'REC-25',
        rotten_flesh_to_leather: 'REC-25',
        mini_blocks: 'MINI',
    };
    if (byNamespace[namespace]) return byNamespace[namespace];

    if (namespace === 'pannotia') {
        if (resource.startsWith('faster-oxidization/')) return 'REC-1';
        if (resource.startsWith('more-dyes/')) return 'REC-2';
        if (resource.startsWith('coral/')) return 'REC-3';
        if (resource.startsWith('powder-from-concrete-blasting/')) return 'REC-4';
        return 'REC-5';
    }

    // VanillaTweaks overrides of vanilla recipes (namespace minecraft).
    if (out.endsWith('_stairs')) return 'REC-10';
    if (out.endsWith('_trapdoor')) return 'REC-11';
    if (out.endsWith('_wood') || out.endsWith('_hyphae')) return 'REC-12';
    if (out.endsWith('bricks')) return 'REC-13';
    if (out.endsWith('_slab') || resource.startsWith('slabs/')) return 'REC-14';
    return 'REC-23';
}

/** Candidate item ids for one ingredient. */
function members(ingredient, resolveTag, where) {
    if (Array.isArray(ingredient)) return ingredient.flatMap((i) => members(i, resolveTag, where));

    const raw = typeof ingredient === 'string' ? ingredient : (ingredient.item ?? (ingredient.tag ? `#${ingredient.tag}` : undefined));
    if (!raw) throw new Error(`${where}: unsupported ingredient ${JSON.stringify(ingredient)}`);

    if (raw.startsWith('#')) {
        const list = resolveTag(norm(raw.slice(1)));
        if (!list.length) throw new Error(`${where}: tag ${raw} resolved to nothing (refresh the vanilla tag snapshot?)`);
        return list;
    }

    return [norm(raw)];
}

function pickIndexes(length) {
    if (length <= MAX_VARIANTS) return [...Array(length).keys()];
    return [0, Math.floor(length / 2), length - 1];
}

function resultOf(json) {
    if (typeof json.result === 'string') return {id: norm(json.result), count: 1};
    return {id: norm(json.result.id ?? json.result.item), count: json.result.count ?? 1};
}

/** Expands a recipe into concrete grids, one per tag-member variant. */
function expandCrafting(recipe, resolveTag) {
    const {json, id} = recipe;
    const type = json.type.replace(/^minecraft:/, '');
    const where = id;

    // slot -> candidate list
    const slots = new Array(9).fill(null);

    if (type === 'crafting_shaped') {
        const rows = json.pattern;
        if (rows.length > 3 || rows.some((r) => r.length > 3)) throw new Error(`${where}: pattern larger than 3x3`);
        rows.forEach((row, r) => {
            [...row].forEach((ch, c) => {
                if (ch === ' ') return;
                if (!(ch in json.key)) throw new Error(`${where}: pattern key ${ch} missing`);
                slots[r * 3 + c] = members(json.key[ch], resolveTag, where);
            });
        });
    } else if (type === 'crafting_shapeless') {
        if (json.ingredients.length > 9) throw new Error(`${where}: more than 9 ingredients`);
        json.ingredients.forEach((ing, i) => {
            slots[i] = members(ing, resolveTag, where);
        });
    } else {
        return null;
    }

    const lists = slots.filter(Boolean);
    const indexes = lists.map((l) => pickIndexes(l.length));
    const variants = Math.max(...indexes.map((i) => i.length));

    const out = [];
    for (let v = 0; v < variants; v++) {
        const grid = slots.map((list) => {
            if (!list) return null;
            const idx = pickIndexes(list.length);
            return list[idx[v % idx.length]];
        });
        out.push({grid, label: variants > 1 ? ` [${grid.find(Boolean).replace('minecraft:', '')}]` : ''});
    }
    return out;
}

const itemNbt = (grid) =>
    grid
        .map((item, slot) => (item ? `{Slot:${slot}b,id:"${item}",count:1}` : null))
        .filter(Boolean)
        .join(',');

/** Extra hand-written crafter cases from the test plan: things that should keep working or should *not* work. */
const EXTRA_CRAFTS = [
    {id: 'REC-11 iron trapdoor unchanged (2x2 ingots -> 1)', slots: {0: 'iron_ingot', 1: 'iron_ingot', 3: 'iron_ingot', 4: 'iron_ingot'}, result: 'iron_trapdoor', count: 1},
    {id: 'REC-14 vanilla 3 planks -> 6 slabs still works', slots: {0: 'oak_planks', 1: 'oak_planks', 2: 'oak_planks'}, result: 'oak_slab', count: 6},
    {id: 'REC-14 smooth stone block -> 2 slabs (shapeless)', slots: {0: 'smooth_stone'}, result: 'smooth_stone_slab', count: 2},
    {id: 'REC-14 plain planks block alone is NOT covered (no slabs)', slots: {0: 'oak_planks'}, noneOf: 'oak_slab'},
    {id: 'REC-10 purpur pillar must NOT make stairs', slots: {0: 'purpur_pillar', 3: 'purpur_pillar', 4: 'purpur_pillar', 6: 'purpur_pillar', 7: 'purpur_pillar', 8: 'purpur_pillar'}, none: true},
    {id: 'REC-12 oak wood from 4 logs', slots: {0: 'oak_log', 1: 'oak_log', 3: 'oak_log', 4: 'oak_log'}, result: 'oak_wood', count: 4},
    {id: 'REC-24 dead coral does NOT make a coral block', slots: {0: 'dead_tube_coral', 1: 'dead_tube_coral', 3: 'dead_tube_coral', 4: 'dead_tube_coral'}, none: true},
    {id: 'REC-17 cobbled deepslate must NOT make a dropper', slots: {0: 'cobbled_deepslate', 1: 'cobbled_deepslate', 2: 'cobbled_deepslate', 3: 'cobbled_deepslate', 5: 'cobbled_deepslate', 6: 'cobbled_deepslate', 7: 'redstone', 8: 'cobbled_deepslate'}, none: true},
    {id: 'REC-17 cobbled deepslate must NOT make an observer', slots: {0: 'cobbled_deepslate', 1: 'cobbled_deepslate', 2: 'cobbled_deepslate', 3: 'redstone', 4: 'redstone', 5: 'quartz', 6: 'cobbled_deepslate', 7: 'cobbled_deepslate', 8: 'cobbled_deepslate'}, none: true},
    {id: 'REC-20 wool is NOT covered by universal dyeing', slots: {0: 'white_wool', 1: 'white_wool', 2: 'white_wool', 3: 'white_wool', 4: 'red_dye', 5: 'white_wool', 6: 'white_wool', 7: 'white_wool', 8: 'white_wool'}, noneOf: 'red_wool'},
    {id: 'REC-15 smooth stone slab pair -> 1 block', slots: {0: 'smooth_stone_slab', 1: 'smooth_stone_slab'}, result: 'smooth_stone', count: 1},
];

const EXTRA_COOKING = [
    {id: 'REC-25 concrete powder is NOT blasted to glass', block: 'blast_furnace', input: 'red_concrete_powder', none: true},
    {id: 'REC-25 rotten flesh is NOT smoked to leather', block: 'smoker', input: 'rotten_flesh', none: true},
];

const cellPos = (i) => ({
    x: LAB.x + (i % LAB.cols) * LAB.cellX,
    y: LAB.y,
    z: LAB.z + Math.floor(i / LAB.cols) * LAB.cellZ,
});

/**
 * Builds the recipe suite:
 *   recipes/setup   - fills the grid with a crafter+chest (or furnace) per case and triggers them
 *   recipes/check   - after a wait, asserts every chest/furnace holds the expected output
 *   recipes/stonecutting - checks every stonecutting recipe is registered (the crafter can't run those)
 */
export function buildRecipeSuite(pack, {recipes, resolveTag, only}) {
    const crafts = [];
    const cooks = [];
    const stonecutting = [];

    for (const recipe of [...recipes.values()].sort((a, b) => a.id.localeCompare(b.id))) {
        if (only && !only(recipe)) continue;

        const type = recipe.json.type.replace(/^minecraft:/, '');
        const plan = planId(recipe);

        if (type === 'stonecutting') {
            stonecutting.push({id: `${plan} ${recipe.id}`, recipe: recipe.id});
        } else if (type === 'crafting_shaped' || type === 'crafting_shapeless') {
            const result = resultOf(recipe.json);
            for (const variant of expandCrafting(recipe, resolveTag)) {
                const extra = {};
                for (const item of variant.grid) {
                    if (REMAINDERS[item]) extra[REMAINDERS[item]] = (extra[REMAINDERS[item]] ?? 0) + 1;
                }
                crafts.push({id: `${plan} ${recipe.id}${variant.label}`, grid: variant.grid, result, extra});
            }
        } else if (COOKING[`minecraft:${type}`]) {
            const cfg = COOKING[`minecraft:${type}`];
            const result = resultOf(recipe.json);
            const inputs = members(recipe.json.ingredient, resolveTag, recipe.id);
            for (const idx of pickIndexes(inputs.length)) {
                const input = inputs[idx];
                cooks.push({
                    id: `${plan} ${recipe.id}${inputs.length > 1 ? ` [${input.replace('minecraft:', '')}]` : ''}`,
                    recipeId: recipe.id,
                    block: cfg.block,
                    input,
                    result,
                    time: recipe.json.cookingtime ?? cfg.time,
                });
            }
        } else {
            console.warn(`autotest: skipping unsupported recipe type ${recipe.json.type} (${recipe.id})`);
        }
    }

    for (const e of EXTRA_CRAFTS) {
        const grid = new Array(9).fill(null);
        for (const [slot, item] of Object.entries(e.slots)) grid[Number(slot)] = norm(item);
        crafts.push({
            id: e.id,
            grid,
            result: e.none || e.noneOf ? null : {id: norm(e.result), count: e.count},
            noneOf: e.noneOf ? norm(e.noneOf) : null,
            extra: {},
        });
    }
    for (const e of EXTRA_COOKING) {
        cooks.push({id: e.id, block: e.block, input: norm(e.input), result: null, time: 100});
    }

    const total = crafts.length + cooks.length;
    const rows = Math.ceil(total / LAB.cols);

    // ---- setup ----
    const setup = [
        `tellraw @a {"text":"[autotest] recipes: ${crafts.length} crafter cases, ${cooks.length} furnace cases, ${stonecutting.length} stonecutting recipes","color":"gray"}`,
        `fill ${LAB.x} ${LAB.y} ${LAB.z} ${LAB.x + LAB.cols * LAB.cellX} ${LAB.y + 1} ${LAB.z + rows * LAB.cellZ} minecraft:air`,
    ];
    const checks = [];

    crafts.forEach((c, i) => {
        const p = cellPos(i);
        const chest = `${p.x + 1} ${p.y} ${p.z}`;
        setup.push(
            `setblock ${p.x} ${p.y} ${p.z} minecraft:crafter[orientation=east_up]{Items:[${itemNbt(c.grid)}]}`,
            `setblock ${chest} minecraft:chest`,
            `setblock ${p.x} ${p.y + 1} ${p.z} minecraft:redstone_block`,
        );

        if (c.result) {
            checks.push(...check(c.id, `expected ${c.result.count}x ${c.result.id} in the chest`, `data block ${chest} Items[{id:"${c.result.id}",count:${c.result.count}}]`));
            for (const [item, count] of Object.entries(c.extra)) {
                checks.push(...check(`${c.id} remainder`, `expected ${count}x ${item} to be left over`, `data block ${chest} Items[{id:"${item}",count:${count}}]`));
            }
        } else if (c.noneOf) {
            checks.push(...check(c.id, `${c.noneOf} must not be crafted`, `data block ${chest} Items[{id:"${c.noneOf}"}]`, 'unless'));
        } else {
            checks.push(...check(c.id, 'nothing should be crafted', `data block ${chest} Items[0]`, 'unless'));
        }
    });

    cooks.forEach((c, j) => {
        const p = cellPos(crafts.length + j);
        const here = `${p.x} ${p.y} ${p.z}`;
        // Pre-load the progress so the recipe completes within a couple of ticks.
        const spent = Math.max(0, c.time - 2);
        setup.push(
            `setblock ${here} minecraft:${c.block}{Items:[{Slot:0b,id:"${c.input}",count:1},{Slot:1b,id:"minecraft:coal",count:1}],lit_time_remaining:200s,lit_total_time:200s,cooking_time_spent:${spent}s,cooking_total_time:${c.time}s}`,
        );
        if (c.result) {
            checks.push(...check(c.id, `expected ${c.result.count}x ${c.result.id} in the output slot`, `data block ${here} Items[{Slot:2b,id:"${c.result.id}",count:${c.result.count}}]`));
            checks.push(...check(`${c.id} recipe`, `${c.recipeId} should be the recipe used`, `data block ${here} RecipesUsed."${c.recipeId}"`));
        } else {
            checks.push(...check(c.id, 'nothing should be cooked', `data block ${here} Items[{Slot:2b}]`, 'unless'));
        }
    });

    pack.stage('recipes', 'recipes/setup', setup, 60);
    pack.stage('recipes', 'recipes/check', checks);

    // ---- stonecutting: existence only ----
    const stone = [`execute unless entity @a[tag=autotest.runner,limit=1] run return run function ${NS}:lib/skip {id:"stonecutting recipes registered (needs a real player)"}`];
    for (const s of stonecutting) {
        // Take first so an already-unlocked recipe doesn't read as "not found".
        stone.push(
            `recipe take @a[tag=autotest.runner] ${s.recipe}`,
            `execute store success score #ok ${NS} run recipe give @a[tag=autotest.runner] ${s.recipe}`,
            `execute if score #ok ${NS} matches 1 run scoreboard players add #pass ${NS} 1`,
            `execute if score #ok ${NS} matches 0 run function ${NS}:lib/fail {id:"${safe(s.id)}",why:"stonecutting recipe is not registered"}`,
        );
    }
    pack.stage('recipes', 'recipes/stonecutting', stone);

    return {crafts: crafts.length, cooks: cooks.length, stonecutting: stonecutting.length};
}
