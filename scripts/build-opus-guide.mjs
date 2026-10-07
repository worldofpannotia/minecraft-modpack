// Syncs the generated player guide (docs/guide/) into the in-game Opus book.
//
//   node scripts/build-opus-guide.mjs
//
// Hand-written pages (index, highlights, appendices) live directly in the book folder and are never touched.
// Everything this script writes is listed in GENERATED below, so it is safe to re-run after the docs pipeline.
import fs from 'fs-extra';
import path from 'node:path';
import {fileURLToPath} from 'node:url';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const SRC = path.join(root, 'docs', 'guide');
const BOOK = path.join(
    root,
    'client/overrides/resourcepacks/pannotia-guide/assets/pannotia/opus-books/pannotia/en_us',
);

// old path (relative to docs/guide) -> [new path (relative to the book's en_us), frontmatter]
const GENERATED = new Map([
    ['getting-started.md', ['01-getting-started.md', {icon: 'item:minecraft:compass'}]],
    ['vanilla-changes.md', ['03-reference/01-vanilla-changes.md', {icon: 'item:minecraft:crafting_table'}]],
    ['controls.md', ['03-reference/02-controls.md', {icon: 'item:minecraft:lever'}]],
    ['items-index.md', ['03-reference/03-items-index.md', {icon: 'item:minecraft:chest'}]],
    ['technical.md', ['03-reference/04-technical.md', {icon: 'item:minecraft:redstone'}]],
    ['mod-list.md', ['99-appendices/mod-list.md', {icon: 'item:minecraft:bookshelf'}]],
    ['datapacks/index.md', ['05-datapacks/index.md', {icon: 'item:minecraft:command_block'}]],
]);

const CATEGORY_ICONS = {
    'quality-of-life': 'item:minecraft:diamond_pickaxe',
    'interface-and-hud': 'item:minecraft:spyglass',
    'storage-and-inventory': 'item:minecraft:ender_chest',
    'building-and-decoration': 'item:minecraft:bricks',
    'farming-food-and-animals': 'item:minecraft:wheat',
    'villagers-and-trading': 'item:minecraft:emerald',
    'enchanting-and-magic': 'item:minecraft:enchanting_table',
    'tools-weapons-and-armor': 'item:minecraft:diamond_sword',
    'mobs-and-creatures': 'item:minecraft:zombie_head',
    'loot-and-drops': 'item:minecraft:chest_minecart',
    'world-generation-and-exploration': 'item:minecraft:map',
    'maps-and-navigation': 'item:minecraft:filled_map',
    'transport-and-movement': 'item:minecraft:elytra',
    'redstone-and-automation': 'item:minecraft:hopper',
    'multiplayer-and-server': 'item:minecraft:player_head',
    'cosmetic-visual-and-audio': 'item:minecraft:note_block',
};

let i = 1;
for (const name of Object.keys(CATEGORY_ICONS)) {
    GENERATED.set(`mods/${name}.md`, [
        `04-mods/${String(i++).padStart(2, '0')}-${name}.md`,
        {icon: CATEGORY_ICONS[name]},
    ]);
}
for (const f of fs.readdirSync(path.join(SRC, 'datapacks'))) {
    if (f === 'index.md') continue;
    GENERATED.set(`datapacks/${f}`, [`05-datapacks/${f}`, {}]);
}

// Chapter folders written wholesale by this script
const OWNED = ['03-reference', '04-mods', '05-datapacks', '99-appendices/mod-list.md', '01-getting-started.md'];

const MODS_INDEX = `---
title: Mods by category
icon: item:minecraft:bookshelf
summary: Every mod in the pack, grouped by what it does.
order: 4
---
The pack has about 200 mods. Most are small tweaks, so they are grouped by what they do rather than by name. Each
page lists what the mods change, any keys or commands they add, and where to find their recipes.

{{LIST}}

Looking for one mod by name? Try the search box above the contents, or the [full mod list](../99-appendices/mod-list.md).
`;

const norm = p => p.split(path.sep).join('/');

function rewriteLinks(text, oldFile, newFile) {
    const oldDir = path.posix.dirname(oldFile);
    const newDir = path.posix.dirname(newFile);
    return text.replace(/\]\(([^)\s]+)\)/g, (whole, target) => {
        if (/^([a-z][a-z0-9+.-]*:|#|\/)/i.test(target)) return whole;
        const [file, anchor] = target.split('#');
        const resolved = path.posix.normalize(path.posix.join(oldDir, file));
        const mapped = GENERATED.get(resolved);
        if (!mapped) {
            console.warn(`  unmapped link in ${oldFile}: ${target}`);
            return whole;
        }
        let rel = path.posix.relative(newDir, mapped[0]);
        if (!rel.startsWith('.')) rel = rel; // same-folder links stay bare
        return `](${rel}${anchor ? '#' + anchor : ''})`;
    });
}

// Opus ignores raw HTML (with a warning), so drop maintainer comments and escape stray angle brackets
function sanitize(text) {
    text = text.replace(/<!--[\s\S]*?-->\n?/g, '');
    const out = [];
    let fenced = false;
    for (const line of text.split('\n')) {
        if (/^\s*(```|~~~)/.test(line)) fenced = !fenced;
        if (fenced || /^\s*(```|~~~)/.test(line)) {
            out.push(line);
            continue;
        }
        // split on inline code spans so their contents are left alone
        out.push(
            line
                .split(/(`[^`]*`)/)
                .map((part, idx) => (idx % 2 ? part : part.replace(/<([^>\n]*)>/g, '\\<$1\\>')))
                .join(''),
        );
    }
    return out.join('\n');
}

function withFrontmatter(text, fm) {
    const keys = Object.entries(fm);
    if (!keys.length) return text;
    const head = keys.map(([k, v]) => `${k}: ${v}`).join('\n');
    return `---\n${head}\n---\n${text}`;
}

for (const o of OWNED) await fs.remove(path.join(BOOK, o));

for (const [oldFile, [newFile, fm]] of GENERATED) {
    const src = path.join(SRC, oldFile);
    let text = await fs.readFile(src, 'utf8');
    text = sanitize(rewriteLinks(text.replace(/\r\n/g, '\n'), oldFile, newFile));
    const dest = path.join(BOOK, newFile);
    await fs.ensureDir(path.dirname(dest));
    await fs.writeFile(dest, withFrontmatter(text, fm));
}

// Chapter index pages that have no counterpart in docs/guide
const list = [...GENERATED.values()]
    .filter(([f]) => f.startsWith('04-mods/'))
    .map(([f]) => {
        const first = fs.readFileSync(path.join(BOOK, f), 'utf8').match(/^# (.+)$/m);
        return `* [${first ? first[1] : f}](${path.posix.basename(f)})`;
    })
    .join('\n');
await fs.writeFile(path.join(BOOK, '04-mods/index.md'), MODS_INDEX.replace('{{LIST}}', list));
await fs.writeFile(
    path.join(BOOK, '03-reference/index.md'),
    `---
title: Reference
icon: item:minecraft:knowledge_book
summary: Recipes, drops, keys, commands and items in one place.
order: 3
---
Look-up pages. If you want to know *what changed*, *what a key does* or *where an item comes from*, start here.

* [What's different from vanilla](01-vanilla-changes.md)
* [Controls and commands](02-controls.md)
* [New items and blocks](03-items-index.md)
* [Performance, libraries and technical mods](04-technical.md)
`,
);

console.log(`Wrote ${GENERATED.size} pages to ${norm(path.relative(root, BOOK))}`);
