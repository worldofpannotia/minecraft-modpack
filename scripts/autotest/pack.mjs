import path from 'node:path';
import fse from 'fs-extra';

export const NS = 'autotest';

/**
 * Where everything lives. The lab sits far from spawn, above any terrain, in the Overworld
 * (scheduled functions always run there, whatever dimension the player started the run from).
 */
export const LAB = {
    x: 40000,
    y: 280,
    z: 40000,
    // Crafting/cooking grid: one cell per recipe, laid out from (x, z) in +x/+z.
    cols: 16,
    cellX: 3,
    cellZ: 2,
};

// Loot lab, south of the grid: [victim] [roll chest] [mining block].
export const LOOT_LAB = {
    victim: {x: LAB.x + 1, y: LAB.y, z: LAB.z - 12},
    chest: {x: LAB.x + 4, y: LAB.y, z: LAB.z - 12},
    block: {x: LAB.x + 7, y: LAB.y, z: LAB.z - 12},
};

export const at = (p) => `${p.x} ${p.y} ${p.z}`;

/** Strings that go into SNBT or JSON text must not contain these. */
export function safe(text) {
    return String(text).replace(/["'\\\n]/g, '');
}

export class DataPack {
    constructor() {
        this.files = new Map();
        // suite name -> list of stage function ids, in run order
        this.suites = new Map();
    }

    file(rel, content) {
        this.files.set(rel, content);
    }

    json(rel, obj) {
        this.file(rel, `${JSON.stringify(obj, null, 4)}\n`);
    }

    /** Plain function, no stage plumbing. */
    fn(name, lines) {
        this.file(`data/${NS}/function/${name}.mcfunction`, `${lines.join('\n')}\n`);
    }

    /**
     * A stage runs once per tick slot: it asks the runner for the next stage after `delay` ticks and
     * then does its work. Scheduling first means a stage can `return` early (e.g. to skip) without
     * breaking the chain. Stages are queued per suite and executed by autotest:lib/next.
     */
    stage(suite, name, lines, delay = 1) {
        this.fn(name, [`schedule function ${NS}:lib/next ${delay}t`, ...lines]);
        if (!this.suites.has(suite)) this.suites.set(suite, []);
        this.suites.get(suite).push(`${NS}:${name}`);
    }

    async write(root) {
        await fse.emptyDir(root);
        for (const [rel, content] of this.files) {
            const out = path.join(root, rel);
            await fse.outputFile(out, content);
        }
    }
}

/** One assertion on a world condition, e.g. `data block 1 2 3 Items[{id:"minecraft:stone"}]`. */
export function check(id, why, condition, kind = 'if') {
    return [
        `execute store success score #ok ${NS} ${kind} ${condition}`,
        `execute if score #ok ${NS} matches 1 run scoreboard players add #pass ${NS} 1`,
        `execute if score #ok ${NS} matches 0 run function ${NS}:lib/fail {id:"${safe(id)}",why:"${safe(why)}"}`,
    ];
}

/** Asserts a command succeeds (its success value is 1). */
export function checkRun(id, why, command) {
    return [
        `execute store success score #ok ${NS} run ${command}`,
        `execute if score #ok ${NS} matches 1 run scoreboard players add #pass ${NS} 1`,
        `execute if score #ok ${NS} matches 0 run function ${NS}:lib/fail {id:"${safe(id)}",why:"${safe(why)}"}`,
    ];
}

/** Asserts a fake player's score is in [lo, hi]. */
export function checkScore(id, who, lo, hi) {
    return [`function ${NS}:lib/check_score {id:"${safe(id)}",who:"${who}",lo:${lo},hi:${hi}}`];
}

export function skipUnlessPlayer(id) {
    return [`execute unless entity @e[tag=autotest.runner,limit=1] run return run function ${NS}:lib/skip {id:"${safe(id)}"}`];
}
