import path from 'node:path';
import {execFileSync} from 'node:child_process';
import os from 'node:os';
import fse from 'fs-extra';

const ROOT = path.resolve(import.meta.dirname, '..', '..');
const DATAPACKS = path.join(ROOT, 'client', 'overrides', 'datapacks');
const VANILLA_TAGS = path.join(import.meta.dirname, 'vanilla-item-tags.json');

export const PATHS = {
    root: ROOT,
    datapacks: DATAPACKS,
    manifest: path.join(ROOT, 'client', 'manifest.tpl.json'),
    config: path.join(ROOT, 'client', 'overrides', 'config'),
};

export function ns(id) {
    return id.includes(':') ? id.split(':')[0] : 'minecraft';
}

export function norm(id) {
    return id.includes(':') ? id : `minecraft:${id}`;
}

async function* walk(dir) {
    for (const entry of await fse.readdir(dir, {withFileTypes: true})) {
        const full = path.join(dir, entry.name);
        if (entry.isDirectory()) yield* walk(full);
        else yield full;
    }
}

/**
 * Reads every unzipped datapack in client/overrides/datapacks and indexes its recipes, loot tables
 * and tags by resource id. Later packs overwrite earlier ones, like the game does.
 */
export async function loadDatapacks() {
    const recipes = new Map();
    const lootTables = new Map();
    const tags = new Map(); // `item:ns:path` | `block:ns:path` -> [json...]

    for (const pack of (await fse.readdir(DATAPACKS, {withFileTypes: true})).filter((e) => e.isDirectory())) {
        const dataDir = path.join(DATAPACKS, pack.name, 'data');
        if (!(await fse.pathExists(dataDir))) continue;

        for await (const file of walk(dataDir)) {
            if (!file.endsWith('.json')) continue;
            const rel = path.relative(dataDir, file).split(path.sep).join('/');
            const m = rel.match(/^([^/]+)\/(recipes?|loot_tables?|tags\/(?:item|block))\/(.+)\.json$/);
            if (!m) continue;

            const [, namespace, kind, resource] = m;
            const id = `${namespace}:${resource}`;
            const json = await fse.readJson(file);

            if (kind.startsWith('recipe')) {
                recipes.set(id, {id, json, pack: pack.name, namespace, resource});
            } else if (kind.startsWith('loot_table')) {
                lootTables.set(id, json);
            } else {
                const key = `${kind.split('/')[1]}:${id}`;
                if (!tags.has(key)) tags.set(key, []);
                tags.get(key).push(json);
            }
        }
    }

    return {recipes, lootTables, tags};
}

export async function loadVanillaItemTags() {
    if (!(await fse.pathExists(VANILLA_TAGS))) {
        throw new Error(`Missing ${VANILLA_TAGS}. Run: node scripts/gen-autotest.mjs --refresh-vanilla`);
    }
    return fse.readJson(VANILLA_TAGS);
}

/** Resolves an item tag (`ns:path`, no leading #) to a flat, de-duplicated list of item ids. */
export function makeTagResolver(vanillaTags, packTags) {
    const cache = new Map();

    function resolve(id, seen = new Set()) {
        if (cache.has(id)) return cache.get(id);
        if (seen.has(id)) return [];
        seen.add(id);

        const out = new Set(vanillaTags[id] ?? []);
        for (const json of packTags.get(`item:${id}`) ?? []) {
            if (json.replace) out.clear();
            for (const value of json.values ?? []) {
                const raw = typeof value === 'string' ? value : value.id;
                if (raw.startsWith('#')) resolve(raw.slice(1), seen).forEach((v) => out.add(v));
                else out.add(raw);
            }
        }

        const list = [...out];
        cache.set(id, list);
        return list;
    }

    return resolve;
}

/**
 * Regenerates vanilla-item-tags.json by running the vanilla data generator for the pack's Minecraft
 * version. Needs Java (any version that can run the server) and network access.
 */
export async function refreshVanillaTags() {
    const manifest = await fse.readJson(PATHS.manifest);
    const version = manifest.minecraft.version;
    const work = await fse.mkdtemp(path.join(os.tmpdir(), 'autotest-vanilla-'));

    try {
        const index = await (await fetch('https://piston-meta.mojang.com/mc/game/version_manifest_v2.json')).json();
        const entry = index.versions.find((v) => v.id === version);
        if (!entry) throw new Error(`Minecraft ${version} not found in the version manifest`);

        const meta = await (await fetch(entry.url)).json();
        const jar = path.join(work, 'server.jar');
        await fse.writeFile(jar, Buffer.from(await (await fetch(meta.downloads.server.url)).arrayBuffer()));

        execFileSync('java', ['-DbundlerMainClass=net.minecraft.data.Main', '-jar', jar, '--server', '--output', 'gen'], {
            cwd: work,
            stdio: 'inherit',
        });

        const tagDir = path.join(work, 'gen', 'data', 'minecraft', 'tags', 'item');
        const raw = new Map();
        for await (const file of walk(tagDir)) {
            const rel = path.relative(tagDir, file).split(path.sep).join('/').replace(/\.json$/, '');
            raw.set(`minecraft:${rel}`, (await fse.readJson(file)).values.map((v) => (typeof v === 'string' ? v : v.id)));
        }

        const flat = {};
        const flatten = (id) => {
            const out = new Set();
            for (const value of raw.get(id) ?? []) {
                if (value.startsWith('#')) flatten(value.slice(1)).forEach((v) => out.add(v));
                else out.add(value);
            }
            return [...out];
        };
        for (const id of [...raw.keys()].sort()) flat[id] = flatten(id);

        await fse.writeJson(VANILLA_TAGS, flat, {spaces: 4});
        console.log(`Wrote ${Object.keys(flat).length} vanilla item tags for ${version} to ${path.relative(ROOT, VANILLA_TAGS)}`);
    } finally {
        await fse.remove(work);
    }
}
