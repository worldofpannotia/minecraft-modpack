// Stage 3 helper: deterministic reference pages generated from refined JSON.
import fs from 'fs';
import path from 'path';

const HERE = path.dirname(new URL(import.meta.url).pathname.replace(/^\/([A-Z]:)/, '$1'));
const W = path.join(HERE, 'work');
const OUT = path.join(W, 'generated');
fs.mkdirSync(OUT, { recursive: true });

const R = fs.readdirSync(path.join(W, 'refined')).map(f => JSON.parse(fs.readFileSync(path.join(W, 'refined', f), 'utf8')));
const slug = s => s.toLowerCase().replace(/&/g, 'and').replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '');
const anchor = s => s.toLowerCase().trim().replace(/[^\p{L}\p{N}\s-]/gu, '').replace(/\s/g, '-');
const esc = s => String(s ?? '').replace(/\|/g, '\\|').replace(/\r?\n/g, ' ').trim();
const SKIP_CATS = new Set(['Libraries & APIs', 'Performance & Technical']);

function link(u, fromDir) {
  // fromDir: '' for docs/guide root
  const pre = fromDir ? '../' : '';
  if (u.unit.startsWith('datapacks__')) {
    const pack = u.unit.replace('datapacks__', '').split('__')[0];
    return `${pre}datapacks/${pack}.md`;
  }
  if (u.unit === 'other__config-overrides') return `${pre}mods/quality-of-life.md`;
  if (SKIP_CATS.has(u.category)) return `${pre}technical.md#${anchor(u.name)}`;
  return `${pre}mods/${slug(u.category)}.md#${anchor(u.name)}`;
}
const label = u => u.unit.startsWith('datapacks__') ? `${u.name} (datapack)` : u.name;
const live = R.filter(u => !u.unit.startsWith('other__resourcepack'));

// ---- vanilla changes
const KIND_TITLES = {
  'recipe-added': 'New recipes for vanilla items', 'recipe-changed': 'Changed vanilla recipes', 'recipe-removed': 'Removed vanilla recipes',
  loot: 'Loot and drops', 'mob-behavior': 'Mob behavior', 'block-behavior': 'Block behavior', worldgen: 'World generation',
  enchanting: 'Enchanting', trading: 'Villagers and trading', other: 'Other changes',
};
const byKind = {};
for (const u of live) for (const c of u.vanilla_changes ?? []) (byKind[c.kind ?? 'other'] ??= []).push({ u, c });
let vc = '';
for (const k of Object.keys(KIND_TITLES)) {
  const rows = byKind[k]; if (!rows?.length) continue;
  vc += `\n## ${KIND_TITLES[k]}\n\n| What | Change | Source |\n|---|---|---|\n`;
  rows.sort((a, b) => esc(a.c.what).localeCompare(esc(b.c.what)));
  for (const { u, c } of rows) vc += `| ${esc(c.what)} | ${esc(c.change)} | [${esc(label(u))}](${link(u, '')}) |\n`;
}
fs.writeFileSync(path.join(OUT, 'vanilla-changes.body.md'), vc);

// ---- items index
const items = [];
for (const u of live) for (const n of u.new_content ?? []) items.push({ u, n });
items.sort((a, b) => esc(a.n.name).localeCompare(esc(b.n.name), 'en', { sensitivity: 'base' }));
let ii = '| Name | Type | How to get it | Source |\n|---|---|---|---|\n';
for (const { u, n } of items) ii += `| ${esc(n.name)} | ${esc(n.type)} | ${esc(n.how_to_obtain)} | [${esc(label(u))}](${link(u, '')}) |\n`;
fs.writeFileSync(path.join(OUT, 'items-index.body.md'), ii);

// ---- technical (libraries + performance)
let tech = '';
for (const cat of ['Performance & Technical', 'Libraries & APIs']) {
  const us = live.filter(u => u.category === cat).sort((a, b) => a.name.localeCompare(b.name));
  tech += `\n## ${cat === 'Libraries & APIs' ? 'Libraries and APIs' : 'Performance and technical'}\n\n`;
  for (const u of us) {
    tech += `### ${u.name}\n\n${u.summary}${u.side && u.side !== 'unknown' ? ` *(${u.side})*` : ''}\n`;
    const extra = [...(u.qol ?? []), ...(u.commands_and_keybinds ?? []).map(c => `Controls: ${c}`)];
    if (u.player_facing && extra.length) tech += '\n' + extra.map(x => `- ${x}`).join('\n') + '\n';
    tech += '\n';
  }
}
fs.writeFileSync(path.join(OUT, 'technical.body.md'), tech);

// ---- controls (commands + keybinds)
let ctl = '| Mod / pack | Command or key |\n|---|---|\n';
for (const u of [...live].sort((a, b) => a.name.localeCompare(b.name))) for (const c of u.commands_and_keybinds ?? []) ctl += `| [${esc(label(u))}](${link(u, '')}) | ${esc(c)} |\n`;
fs.writeFileSync(path.join(OUT, 'controls.body.md'), ctl);

// ---- full mod list
let ml = '| Mod | Category | Side | Summary |\n|---|---|---|---|\n';
for (const u of live.filter(u => u.unit.startsWith('mods__')).sort((a, b) => a.name.localeCompare(b.name))) {
  ml += `| [${esc(u.name)}](${link(u, '')}) | ${esc(u.category)} | ${esc(u.side)} | ${esc((u.summary ?? '').split(/(?<=\.)\s/)[0])} |\n`;
}
fs.writeFileSync(path.join(OUT, 'mod-list.body.md'), ml);

// ---- maintainer notes
let mn = '';
for (const u of [...R].sort((a, b) => a.unit.localeCompare(b.unit))) {
  if (u.editor_notes || u.confidence === 'low') mn += `- **${u.name}** (\`${u.unit}\`, confidence ${u.confidence}): ${esc(u.editor_notes)}\n`;
}
fs.writeFileSync(path.join(OUT, 'maintainer-notes.body.md'), mn);

console.log({ vanillaChanges: Object.values(byKind).flat().length, items: items.length, tech: live.filter(u => SKIP_CATS.has(u.category)).length, controls: ctl.split('\n').length - 3 });
