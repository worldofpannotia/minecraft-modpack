import path from 'node:path';
import fse from 'fs-extra';
import {LAB, LOOT_LAB, NS, check, checkRun, safe} from './pack.mjs';
import {PATHS, norm} from './sources.mjs';

const CHEST = `${LOOT_LAB.chest.x} ${LOOT_LAB.chest.y} ${LOOT_LAB.chest.z}`;

// Row of single-block test cells, south of the loot lab. Each gets a stone floor so nothing needs support.
const TAG_LAB = {x: LAB.x, y: LAB.y, z: LAB.z - 30, cols: 40};
export const tagCell = (i) => ({x: TAG_LAB.x + (i % TAG_LAB.cols) * 2, y: TAG_LAB.y, z: TAG_LAB.z + Math.floor(i / TAG_LAB.cols) * 2});

async function readTag(packName, namespace, tagPath) {
    const file = path.join(PATHS.datapacks, packName, 'data', namespace, 'tags', 'block', `${tagPath}.json`);
    if (!(await fse.pathExists(file))) return null;
    return (await fse.readJson(file)).values.map((v) => (typeof v === 'string' ? v : v.id));
}

/**
 * Block tag changes: every block a pack adds to a tag should actually be in it.
 * BLK-7 (More Effective Tools) and BLK-8 (beacon bases).
 */
export async function buildTagSuite(pack) {
    const sources = [
        {plan: 'BLK-8', pack: 'world-of-pannotia', namespace: 'minecraft', tag: 'beacon_base_blocks'},
        {plan: 'BLK-7', pack: 'more-effective-tools', namespace: 'minecraft', tag: 'mineable/pickaxe'},
        {plan: 'BLK-7', pack: 'more-effective-tools', namespace: 'minecraft', tag: 'mineable/axe'},
        {plan: 'BLK-7', pack: 'more-effective-tools', namespace: 'minecraft', tag: 'mineable/shovel'},
        {plan: 'BLK-7', pack: 'more-effective-tools', namespace: 'minecraft', tag: 'mineable/hoe'},
    ];

    const cases = [];
    for (const s of sources) {
        const values = await readTag(s.pack, s.namespace, s.tag);
        if (!values) continue;
        for (const value of values) {
            if (value.startsWith('#')) continue;
            cases.push({plan: s.plan, tag: `${s.namespace}:${s.tag}`, block: norm(value)});
        }
    }

    const rows = Math.ceil(cases.length / TAG_LAB.cols);
    const lines = [
        `fill ${TAG_LAB.x - 1} ${TAG_LAB.y - 1} ${TAG_LAB.z - 1} ${TAG_LAB.x + TAG_LAB.cols * 2} ${TAG_LAB.y - 1} ${TAG_LAB.z + rows * 2} minecraft:stone`,
        `fill ${TAG_LAB.x - 1} ${TAG_LAB.y} ${TAG_LAB.z - 1} ${TAG_LAB.x + TAG_LAB.cols * 2} ${TAG_LAB.y + 1} ${TAG_LAB.z + rows * 2} minecraft:air`,
    ];
    cases.forEach((c, i) => {
        const p = tagCell(i);
        const here = `${p.x} ${p.y} ${p.z}`;
        lines.push(`setblock ${here} ${c.block}`, ...check(`${c.plan} ${c.block} is in #${c.tag}`, `block is not in #${c.tag}`, `block ${here} #${c.tag}`));
        lines.push(`setblock ${here} minecraft:air`);
    });

    pack.stage('blocks', 'blocks/tags', lines);
    return cases.length;
}

/** StackItUp: the pack's configured stack sizes (LOAD-6 / INV-1). Positive only: the item must stack to its configured size. */
export async function buildStackSuite(pack) {
    const raw = await fse.readJson(path.join(PATHS.config, 'stackitup-global-config.json'));
    const merged = Object.assign({}, ...(Array.isArray(raw) ? raw : [raw]));
    // The config also carries settings (applyGlobalConfigToAllNewGames, ...); only namespaced keys are items.
    const sizes = Object.fromEntries(Object.entries(merged).filter(([key, value]) => key.includes(':') && Number.isInteger(value)));

    const lines = [`setblock ${CHEST} minecraft:chest`];
    let count = 0;
    for (const [item, size] of Object.entries(sizes).sort(([a], [b]) => a.localeCompare(b))) {
        const slot = `${CHEST} container.0`;
        lines.push(...checkRun(`INV-1 ${item} stacks to ${size}`, `could not put a stack of ${size}`, `item replace block ${slot} with ${item} ${size}`));
        // One more than configured must not fit (only meaningful for the capped 16s: 64 is the vanilla ceiling).
        if (size < 64) {
            lines.push(
                `execute store success score #ok ${NS} run item replace block ${slot} with ${item} ${size + 1}`,
                `execute if score #ok ${NS} matches 0 run scoreboard players add #pass ${NS} 1`,
                `execute if score #ok ${NS} matches 1 run function ${NS}:lib/fail {id:"${safe(`INV-1 ${item} does not stack past ${size}`)}",why:"a stack of ${size + 1} was accepted"}`,
            );
        }
        count++;
    }
    lines.push(`data modify block ${CHEST} Items set value []`);

    pack.stage('stacks', 'stacks/sizes', lines);
    return count;
}

/** Datapack load/tick functions ran: the objectives they create exist (LOAD-1b). */
export async function buildLoadSuite(pack) {
    const packs = ['homes', 'back', 'spawn', 'afk-display', 'armor-statues', 'silence-mobs', 'villager-workstation-highlights', 'wandering-trader-announcements', 'wandering-trades-hermit-edition', 'track-statistics'];
    const lines = [];
    let count = 0;

    for (const name of packs) {
        const tagFile = path.join(PATHS.datapacks, name, 'data', 'minecraft', 'tags', 'function', 'load.json');
        if (!(await fse.pathExists(tagFile))) continue;

        const objectives = new Set();
        for (const entry of (await fse.readJson(tagFile)).values) {
            const id = typeof entry === 'string' ? entry : entry.id;
            if (id.startsWith('#')) continue;
            const [fnNs, fnPath] = id.split(':');
            const file = path.join(PATHS.datapacks, name, 'data', fnNs, 'function', `${fnPath}.mcfunction`);
            if (!(await fse.pathExists(file))) continue;
            for (const line of (await fse.readFile(file, 'utf8')).split(/\r?\n/)) {
                const m = line.match(/^scoreboard objectives add (\S+)/);
                if (m) objectives.add(m[1]);
            }
        }

        for (const objective of objectives) {
            // `add 0` succeeds only if the objective exists; reset afterwards so we leave nothing behind.
            lines.push(
                ...checkRun(`LOAD-1b ${name}: objective ${objective} exists`, `${name}'s load function did not run`, `scoreboard players add #autotest.probe ${objective} 0`),
                `scoreboard players reset #autotest.probe ${objective}`,
            );
            count++;
        }
    }

    pack.stage('load', 'load/objectives', lines);
    return count;
}
