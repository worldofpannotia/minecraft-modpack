import {LOOT_LAB, NS, at, check, checkScore, safe, skipUnlessPlayer} from './pack.mjs';

const VICTIM_TAG = 'autotest.victim';
const AS_RUNNER = 'execute as @e[tag=autotest.runner,limit=1] run ';

// Mob variant NBT, as of Minecraft 26.2. Registry-style variants use `variant`; the older mobs still use ints/strings.
const REGISTRY_VARIANT = new Set(['cat', 'frog', 'chicken', 'cow', 'pig', 'wolf', 'zombie_nautilus']);
const INT_VARIANTS = {
    axolotl: {field: 'Variant', map: {lucy: 0, wild: 1, gold: 2, cyan: 3, blue: 4}},
    horse: {field: 'Variant', map: {white: 0, creamy: 1, chestnut: 2, brown: 3, black: 4, gray: 5, dark_brown: 6}},
    llama: {field: 'Variant', map: {creamy: 0, white: 1, brown: 2, gray: 3}},
    parrot: {field: 'Variant', map: {red_blue: 0, blue: 1, green: 2, yellow_blue: 3, gray: 4}},
    rabbit: {field: 'RabbitType', map: {brown: 0, white: 1, black: 2, white_splotched: 3, gold: 4, salt: 5, evil: 99}},
};
const STRING_VARIANTS = {fox: 'Type', mooshroom: 'Type'};

const DYE = ['white', 'orange', 'magenta', 'light_blue', 'yellow', 'lime', 'pink', 'gray', 'light_gray', 'cyan', 'purple', 'blue', 'brown', 'green', 'red', 'black'];
// Packed as size (0 small, 1 large) | index << 8.
const FISH_PATTERN = {kob: 0x000, sunstreak: 0x100, snooper: 0x200, dasher: 0x300, brinely: 0x400, spotty: 0x500, flopper: 0x001, stripey: 0x101, glitter: 0x201, blockfish: 0x301, betty: 0x401, clayfish: 0x501};

/** How many rolls give P(no hit at all) below `miss` when each roll hits with probability p. */
export function sampleSize(p, {miss = 1e-6, min = 20, cap = 4000} = {}) {
    if (p >= 0.999) return 20;
    return Math.min(cap, Math.max(min, Math.ceil(Math.log(miss) / Math.log(1 - p))));
}

/** [lo, hi] hit count that a correct drop rate stays inside (about six sigma). Lo is at least 1 for presence checks. */
export function hitBounds(n, p, {strict = false} = {}) {
    if (p >= 0.999) return [n, n];
    const mean = n * p;
    const sd = Math.sqrt(n * p * (1 - p));
    const lo = strict ? Math.max(0, Math.floor(mean - 5 * sd)) : 1;
    const hi = Math.min(n, Math.ceil(mean + 6 * sd + 2));
    return [lo, hi];
}

// ---------------------------------------------------------------------------------------------------------------------
// Loot table analysis: which named head drops, how often, and for what kind of mob.
// ---------------------------------------------------------------------------------------------------------------------

const strip = (s) => String(s).replace(/^minecraft:/, '');

function applyConditions(ctx, conditions = []) {
    const next = {...ctx, preds: [...ctx.preds]};
    for (const cond of conditions) {
        switch (strip(cond.condition)) {
            case 'killed_by_player':
                next.kbp = true;
                break;
            case 'random_chance_with_enchanted_bonus':
                next.p *= cond.unenchanted_chance;
                break;
            case 'random_chance':
                next.p *= cond.chance;
                break;
            case 'entity_properties':
                if (!cond.entity || cond.entity === 'this') next.preds.push(cond.predicate);
                break;
            default:
                break;
        }
    }
    return next;
}

/** Walks a loot table (following loot_table references) and returns one record per distinct head/item entry. */
export function analyzeLoot(index, tableId) {
    const records = [];

    function visitTable(id, ctx, trail) {
        const table = index.get(id);
        if (!table) {
            records.push({missing: id});
            return;
        }
        if (trail.includes(id)) return;

        for (const pool of table.pools ?? []) {
            const pctx = applyConditions(ctx, pool.conditions);
            // Name-gated pools (jeb_ sheep, Toast rabbit): set_name from @s[name=X], then `filtered` on an empty custom_name.
            // on_pass count 0 means "unnamed drops nothing" (the head needs the name); count 1 is the inverse pool
            // that only applies to mobs *without* that name, which an unnamed test mob satisfies anyway.
            const fns = (pool.functions ?? []).map((f) => ({...f, function: strip(f.function ?? '')}));
            const named = fns.find((f) => f.function === 'set_name')?.name?.selector?.match(/^@s\[name=([^\]]+)\]$/);
            const filtered = fns.find((f) => f.function === 'filtered');
            if (named && filtered && filtered.on_pass?.count === 0) pctx.gate = named[1];
            const entries = pool.entries ?? [];
            const total = entries.reduce((sum, e) => sum + (e.weight ?? 1), 0);
            for (const entry of entries) {
                const share = entries.length > 1 && !(entry.conditions?.length) ? (entry.weight ?? 1) / total : 1;
                visitEntry(entry, {...pctx, p: pctx.p * share}, [...trail, id]);
            }
        }
    }

    function visitEntry(entry, ctx, trail) {
        const ectx = applyConditions(ctx, entry.conditions);
        switch (strip(entry.type)) {
            case 'alternatives':
                for (const child of entry.children ?? []) visitEntry(child, ectx, trail);
                break;
            case 'loot_table':
                visitTable(typeof entry.value === 'string' ? entry.value : undefined, ectx, trail);
                break;
            case 'item': {
                const named = [];
                for (const fn of entry.functions ?? []) {
                    const name = fn.components?.['minecraft:item_name'];
                    if (typeof name === 'string') {
                        named.push({name, ctx: applyConditions(ectx, fn.conditions)});
                    }
                }
                if (named.length) {
                    for (const n of named) {
                        records.push({item: entry.name, name: n.name, p: n.ctx.p, kbp: n.ctx.kbp, preds: n.ctx.preds, gate: n.ctx.gate});
                    }
                } else {
                    records.push({item: entry.name, name: null, p: ectx.p, kbp: ectx.kbp, preds: ectx.preds, gate: ectx.gate});
                }
                break;
            }
            default:
                break;
        }
    }

    visitTable(tableId, {p: 1, kbp: false, preds: []}, []);
    return records;
}

/** Groups records by head name. Identical entries (e.g. Vex's two sounds) add their chances; otherwise first wins. */
function groupByName(records) {
    const groups = new Map();
    for (const r of records) {
        if (r.missing) continue;
        const key = r.name ?? r.item;
        const sig = JSON.stringify(r.preds);
        if (!groups.has(key)) {
            groups.set(key, {...r, sig});
        } else if (groups.get(key).sig === sig) {
            groups.get(key).p += r.p;
        }
    }
    return [...groups.values()];
}

// ---------------------------------------------------------------------------------------------------------------------
// Turning a loot predicate into the NBT of a mob that satisfies it.
// ---------------------------------------------------------------------------------------------------------------------

function variantFragment(entity, key, value) {
    const v = strip(value);
    if (REGISTRY_VARIANT.has(entity)) return `variant:"minecraft:${v}"`;
    if (INT_VARIANTS[entity]) {
        const {field, map} = INT_VARIANTS[entity];
        if (!(v in map)) throw new Error(`autotest: unknown ${entity} variant ${v}`);
        return `${field}:${map[v]}`;
    }
    if (STRING_VARIANTS[entity]) return `${STRING_VARIANTS[entity]}:"${v}"`;
    throw new Error(`autotest: don't know how to summon ${entity} with ${key}=${value}`);
}

function fishVariant(c) {
    const base = DYE.indexOf(strip(c['minecraft:tropical_fish/base_color'] ?? 'white'));
    const pattern = DYE.indexOf(strip(c['minecraft:tropical_fish/pattern_color'] ?? 'white'));
    const shape = FISH_PATTERN[strip(c['minecraft:tropical_fish/pattern'] ?? 'kob')];
    return shape | (base << 16) | (pattern << 24);
}

function nbtFor(entity, preds, name, gate) {
    const parts = [];
    if (gate) parts.push(`CustomName:"${gate}"`);
    for (const pred of preds) {
        const components = pred.components ?? pred['minecraft:components'];
        if (components) {
            if (entity === 'tropical_fish') {
                parts.push(`Variant:${fishVariant(components) | 0}`);
            } else if (entity === 'sheep') {
                parts.push(`Color:${DYE.indexOf(strip(components['minecraft:sheep/color']))}b`, 'Sheared:0b');
            } else {
                for (const [key, value] of Object.entries(components)) parts.push(variantFragment(entity, key, value));
            }
        }
        if (pred.nbt) parts.push(pred.nbt.trim().replace(/^\{/, '').replace(/\}$/, ''));
    }
    // Angry wolves/bees: the table only checks the angry state by *not* matching the calm entry first.
    if (/^Angry /.test(name ?? '')) parts.push('anger_end_time:99999999999L');
    return parts.filter(Boolean).join(',');
}

const slug = (s) => String(s).toLowerCase().replace(/[^a-z0-9]+/g, '_').replace(/^_|_$/g, '');

function summonLine(entity, nbt) {
    const base = `NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["${VICTIM_TAG}"]`;
    return `summon minecraft:${entity} ${at(LOOT_LAB.victim)} {${base}${nbt ? `,${nbt}` : ''}}`;
}

// ---------------------------------------------------------------------------------------------------------------------
// Stage builders
// ---------------------------------------------------------------------------------------------------------------------

/** The common sampling stage: set up a victim/block, roll a loot source n times, then run the given checks. */
function sampleStage(pack, suite, name, o) {
    const lines = [];
    if (o.needsPlayer) lines.push(...skipUnlessPlayer(o.id));
    lines.push(`kill @e[tag=${VICTIM_TAG}]`, ...(o.setup ?? []));
    lines.push(
        `data modify storage ${NS}:q roll set value {as:'${o.as ?? ''}',src:'${o.src}',pred:'${o.pred}',any:'${o.any ?? o.pred}',id:'${o.itemId}'}`,
        `scoreboard players set #n ${NS} ${o.n}`,
        `scoreboard players set #hits ${NS} 0`,
        `scoreboard players set #all ${NS} 0`,
        `scoreboard players set #max ${NS} 0`,
        `scoreboard players set #min ${NS} 999`,
        `function ${NS}:lib/roll with storage ${NS}:q roll`,
        ...o.checks,
    );
    pack.stage(suite, name, lines);
}

const headPred = (name) => `minecraft:player_head[minecraft:item_name="${safe(name)}"]`;

/** Mob heads: one stage per variant, driven by the loot tables themselves. */
export function buildHeadSuite(pack, {lootTables}) {
    const stats = {variants: 0, negatives: 0};

    // ---- More Mob Heads: every named head, for the mob that should drop it ----
    const mobs = [...lootTables.keys()]
        .filter((id) => /^more_mob_heads:entities\/[^/]+$/.test(id))
        .map((id) => id.split('/')[1])
        .sort();

    const claimed = new Map();

    for (const mob of mobs) {
        // The mob's real table is what the game rolls; analyse that so wrapper pools and references count.
        const records = groupByName(analyzeLoot(lootTables, `more_mob_heads:entities/${mob}`));
        const names = records.filter((r) => r.name);

        const missing = analyzeLoot(lootTables, `more_mob_heads:entities/${mob}`).filter((r) => r.missing);
        if (missing.length) throw new Error(`autotest: ${mob} references missing loot tables: ${missing.map((m) => m.missing)}`);

        for (const r of names) {
            claimed.set(r.name, mob);
            const nbt = nbtFor(mob, r.preds, r.name, r.gate);
            const n = sampleSize(r.p);
            const [lo, hi] = hitBounds(n, r.p);
            const plan = r.gate ? 'LOOT-3' : 'LOOT-4';
            const id = `${plan} ${mob}: ${r.name}${r.gate ? ` (named ${r.gate})` : ''}`;
            const exclusive = !(mob === 'wither' || mob === 'strider' || mob === 'vex');

            sampleStage(pack, 'heads', `heads/${mob}/${slug(r.name)}`, {
                id,
                needsPlayer: r.kbp,
                setup: [summonLine(mob, nbt)],
                as: r.kbp ? AS_RUNNER : '',
                src: `kill @e[tag=${VICTIM_TAG},limit=1]`,
                pred: headPred(r.name),
                any: 'minecraft:player_head',
                itemId: 'minecraft:player_head',
                n,
                checks: [
                    ...checkScore(`${id} (rate ${(r.p * 100).toFixed(2)}%)`, '#hits', lo, hi),
                    ...(exclusive ? [`function ${NS}:lib/check_same {id:"${safe(id)} (no other head)"}`] : []),
                ],
            });
            stats.variants++;

            // A name-gated head (jeb_ sheep, Toast rabbit) must not drop from an unnamed mob.
            if (r.gate) {
                sampleStage(pack, 'heads', `heads/${mob}/${slug(r.name)}_unnamed`, {
                    id: `LOOT-3 unnamed ${mob} never drops ${r.name}`,
                    needsPlayer: r.kbp,
                    setup: [summonLine(mob, nbtFor(mob, r.preds, r.name))],
                    as: r.kbp ? AS_RUNNER : '',
                    src: `kill @e[tag=${VICTIM_TAG},limit=1]`,
                    pred: headPred(r.name),
                    any: 'minecraft:player_head',
                    itemId: 'minecraft:player_head',
                    n: 1500,
                    checks: checkScore(`LOOT-3 unnamed ${mob}: no ${r.name}`, '#hits', 0, 0),
                });
                stats.negatives++;
            }
        }
    }

    // ---- Tropical fish heads (pannotia table) ----
    const fish = groupByName(analyzeLoot(lootTables, 'pannotia:entities/tropical_fish')).filter((r) => r.name);
    for (const r of fish) {
        const n = sampleSize(r.p);
        const [lo, hi] = hitBounds(n, r.p);
        const id = `LOOT-2 tropical fish: ${r.name}`;
        const nbt = r.preds.length ? nbtFor('tropical_fish', r.preds, r.name) : 'Variant:0';
        sampleStage(pack, 'heads', `heads/tropical_fish/${slug(r.name)}`, {
            id,
            needsPlayer: r.kbp,
            setup: [summonLine('tropical_fish', nbt)],
            as: r.kbp ? AS_RUNNER : '',
            src: `kill @e[tag=${VICTIM_TAG},limit=1]`,
            pred: headPred(r.name),
            any: 'minecraft:player_head',
            itemId: 'minecraft:player_head',
            n,
            checks: [...checkScore(`${id} (rate ${(r.p * 100).toFixed(1)}%)`, '#hits', lo, hi), `function ${NS}:lib/check_same {id:"${safe(id)} (no other head)"}`],
        });
        stats.variants++;
    }

    // ---- Core heads (World of Pannotia): zombie, skeleton, creeper, piglin ----
    for (const mob of ['zombie', 'skeleton', 'creeper', 'piglin']) {
        const rec = analyzeLoot(lootTables, `pannotia:entities/${mob}`).find((r) => !r.missing);
        if (!rec) throw new Error(`autotest: pannotia:entities/${mob} has no item entry`);
        const n = sampleSize(rec.p);
        const id = `LOOT-1 ${mob}: ${strip(rec.item)}`;
        sampleStage(pack, 'heads', `heads/core/${mob}`, {
            id,
            needsPlayer: rec.kbp,
            setup: [summonLine(mob, '')],
            as: rec.kbp ? AS_RUNNER : '',
            src: `kill @e[tag=${VICTIM_TAG},limit=1]`,
            pred: rec.item,
            itemId: rec.item,
            n,
            checks: checkScore(`${id} (rate ${(rec.p * 100).toFixed(2)}%)`, '#hits', ...hitBounds(n, rec.p)),
        });
        stats.variants++;
    }

    // A charged creeper gives the charged head and must not also drop the plain creeper head.
    sampleStage(pack, 'heads', 'heads/core/charged_creeper_no_double_drop', {
        id: 'LOOT-1 charged creeper does not double-drop',
        needsPlayer: true,
        setup: [summonLine('creeper', 'powered:1b')],
        as: AS_RUNNER,
        src: `kill @e[tag=${VICTIM_TAG},limit=1]`,
        pred: 'minecraft:creeper_head',
        itemId: 'minecraft:creeper_head',
        n: 800,
        checks: checkScore('LOOT-1 charged creeper: no plain creeper head', '#hits', 0, 0),
    });

    // ---- No player, no head (LOOT-5) ----
    for (const mob of ['zombie', 'skeleton', 'warden', 'camel', 'sniffer']) {
        sampleStage(pack, 'heads', `heads/no_player/${mob}`, {
            id: `LOOT-5 ${mob}: a kill without a player drops no head`,
            setup: [summonLine(mob, '')],
            src: `kill @e[tag=${VICTIM_TAG},limit=1]`,
            pred: 'minecraft:player_head',
            any: 'minecraft:player_head',
            itemId: 'minecraft:player_head',
            n: 300,
            checks: [...checkScore(`LOOT-5 ${mob}: no head without a player`, '#all', 0, 0)],
        });
        stats.negatives++;
    }
    sampleStage(pack, 'heads', 'heads/no_player/zombie_core_head', {
        id: 'LOOT-1 zombie head needs a player kill',
        setup: [summonLine('zombie', '')],
        src: `kill @e[tag=${VICTIM_TAG},limit=1]`,
        pred: 'minecraft:zombie_head',
        itemId: 'minecraft:zombie_head',
        n: 1500,
        checks: checkScore('LOOT-1 zombie: no zombie head without a player', '#hits', 0, 0),
    });
    stats.negatives++;

    return {...stats, mobs: mobs.length};
}

/** Non-head mob drops: sand, shulker shells, dragon loot. These don't need a player kill. */
export function buildMobDropSuite(pack, {lootTables}) {
    void lootTables;

    // LOOT-11: 0..2 sand (husk, parched), 0..3 (camel husk).
    for (const [mob, max] of [['husk', 2], ['parched', 2], ['camel_husk', 3]]) {
        sampleStage(pack, 'mobs', `mobs/sand_${mob}`, {
            id: `LOOT-11 ${mob} drops 0-${max} sand`,
            setup: [summonLine(mob, '')],
            src: `kill @e[tag=${VICTIM_TAG},limit=1]`,
            pred: 'minecraft:sand',
            itemId: 'minecraft:sand',
            n: 300,
            checks: [...checkScore(`LOOT-11 ${mob}: max sand per kill is ${max}`, '#max', max, max), ...checkScore(`LOOT-11 ${mob}: sometimes drops none`, '#min', 0, 0)],
        });
    }

    // LOOT-12: at least 2 shulker shells per kill.
    sampleStage(pack, 'mobs', 'mobs/shulker_shells', {
        id: 'LOOT-12 shulker drops at least 2 shells',
        setup: [summonLine('shulker', '')],
        src: `kill @e[tag=${VICTIM_TAG},limit=1]`,
        pred: 'minecraft:shulker_shell',
        itemId: 'minecraft:shulker_shell',
        n: 300,
        checks: [...checkScore('LOOT-12 shulker: always at least 2 shells', '#min', 2, 64), ...checkScore('LOOT-12 shulker: shell count stays small without looting', '#max', 2, 4)],
    });

    // LOOT-10: elytra, egg and head, without needing a player kill.
    const dragonChest = at(LOOT_LAB.chest);
    pack.stage('mobs', 'mobs/ender_dragon', [
        `kill @e[tag=${VICTIM_TAG}]`,
        summonLine('ender_dragon', ''),
        `data modify block ${dragonChest} Items set value []`,
        `loot insert ${dragonChest} kill @e[tag=${VICTIM_TAG},limit=1]`,
        ...check('LOOT-10 dragon drops an elytra', 'no elytra', `items block ${dragonChest} container.* minecraft:elytra`),
        ...check('LOOT-10 dragon drops a dragon egg', 'no dragon egg', `items block ${dragonChest} container.* minecraft:dragon_egg`),
        ...check('LOOT-10 dragon drops a dragon head', 'no dragon head', `items block ${dragonChest} container.* minecraft:dragon_head`),
        // A second kill of the same table drops them again (the guide's "repeatable elytra").
        `data modify block ${dragonChest} Items set value []`,
        `loot insert ${dragonChest} kill @e[tag=${VICTIM_TAG},limit=1]`,
        ...check('LOOT-10 dragon drops repeat on a second kill', 'no elytra on repeat', `items block ${dragonChest} container.* minecraft:elytra`),
    ]);
}

/** Block loot: ancient debris, giant mushrooms, jungle leaves. */
export function buildBlockLootSuite(pack) {
    const b = LOOT_LAB.block;
    const place = (block) => `setblock ${at(b)} minecraft:${block}`;
    const mine = (tool) => `mine ${at(b)} ${tool}`;
    const tool = (item, enchants = '') => `minecraft:${item}${enchants ? `[enchantments={${enchants}}]` : ''}`;

    const blockStage = (name, id, o) =>
        sampleStage(pack, 'blocks', `blocks/${name}`, {
            id,
            setup: [place(o.block)],
            src: mine(o.tool),
            pred: o.pred,
            itemId: o.itemId ?? o.pred,
            n: o.n,
            checks: o.checks,
        });

    blockStage('ancient_debris_plain', 'LOOT-20 ancient debris gives 1 netherite scrap', {
        block: 'ancient_debris',
        tool: tool('diamond_pickaxe'),
        pred: 'minecraft:netherite_scrap',
        n: 100,
        checks: [...checkScore('LOOT-20 ancient debris: scrap on every break', '#hits', 100, 100), ...checkScore('LOOT-20 ancient debris: exactly 1 scrap without Fortune', '#max', 1, 1)],
    });
    blockStage('ancient_debris_fortune', 'LOOT-20 Fortune III raises the scrap count', {
        block: 'ancient_debris',
        tool: tool('diamond_pickaxe', '"minecraft:fortune":3'),
        pred: 'minecraft:netherite_scrap',
        n: 200,
        checks: checkScore('LOOT-20 Fortune III: some break gives 2+ scrap', '#max', 2, 64),
    });
    blockStage('ancient_debris_silk', 'LOOT-20 Silk Touch keeps ancient debris', {
        block: 'ancient_debris',
        tool: tool('diamond_pickaxe', '"minecraft:silk_touch":1'),
        pred: 'minecraft:ancient_debris',
        n: 20,
        checks: [...checkScore('LOOT-20 Silk Touch: debris block drops', '#hits', 20, 20)],
    });

    for (const color of ['brown', 'red']) {
        const n = 600;
        const [lo, hi] = hitBounds(n, 0.4, {strict: true});
        blockStage(`${color}_mushroom_block`, `LOOT-21 ${color} mushroom block drops mushrooms ~40% of the time`, {
            block: `${color}_mushroom_block`,
            tool: tool('iron_axe'),
            pred: `minecraft:${color}_mushroom`,
            n,
            checks: checkScore(`LOOT-21 ${color} mushroom block: ~40% (vanilla ~22%)`, '#hits', lo, hi),
        });
        blockStage(`${color}_mushroom_block_silk`, `LOOT-21 Silk Touch keeps the ${color} mushroom block`, {
            block: `${color}_mushroom_block`,
            tool: tool('iron_axe', '"minecraft:silk_touch":1'),
            pred: `minecraft:${color}_mushroom_block`,
            n: 20,
            checks: checkScore(`LOOT-21 ${color} mushroom block: Silk Touch drops the block`, '#hits', 20, 20),
        });
    }

    {
        const n = 3000;
        const [lo, hi] = hitBounds(n, 0.05, {strict: true});
        blockStage('jungle_leaves_sapling', 'LOOT-22 jungle leaves drop a sapling ~5% of the time', {
            block: 'jungle_leaves',
            tool: tool('iron_sword'),
            pred: 'minecraft:jungle_sapling',
            n,
            checks: checkScore('LOOT-22 jungle leaves: ~5% saplings', '#hits', lo, hi),
        });
    }
}
