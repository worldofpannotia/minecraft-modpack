// Stage 3: assemble docs/guide from Round B sections + generated reference bodies + hand-written pages, then validate links.
import fs from 'fs';
import path from 'path';

const HERE = path.dirname(new URL(import.meta.url).pathname.replace(/^\/([A-Z]:)/, '$1'));
const W = path.join(HERE, 'work');
const GUIDE = 'C:/Users/bill/code/minecraft-modpack/docs/guide';
const HAND = path.join(HERE, 'hand'); // hand-written pages (index, getting-started, reference page intros)
fs.mkdirSync(path.join(GUIDE, 'mods'), { recursive: true });
fs.mkdirSync(path.join(GUIDE, 'datapacks'), { recursive: true });

const fixups = s => s
  .replace(/\]\((?:\.\.\/mods\/)?(?:performance-and-technical|libraries-and-apis)\.md(#[^)]*)?\)/g, '](../technical.md$1)')
  .replace(/\]\((?:\.\.\/mods\/)?(recipes-and-crafting-tweaks)\.md\)/g, '](../vanilla-changes.md)')
  .replace(/\]\((?:\.\.\/mods\/)?(progression-and-advancements)\.md\)/g, '](../datapacks/bacap.md)')
  .replace(/^.*better-item-frames.*\n/gim, '')
  .replace(/\r\n/g, '\n');

for (const f of fs.readdirSync(path.join(W, 'sections')).filter(f => f.endsWith('.md'))) {
  fs.writeFileSync(path.join(GUIDE, 'mods', f), fixups(fs.readFileSync(path.join(W, 'sections', f), 'utf8')));
}
const TOP = /^(mods\/|datapacks\/|technical|vanilla-changes|items-index|controls|mod-list|index|getting-started)/;
for (const f of fs.readdirSync(path.join(W, 'sections', 'datapacks')).filter(f => f.endsWith('.md'))) {
  fs.writeFileSync(path.join(GUIDE, 'datapacks', f), fixups(fs.readFileSync(path.join(W, 'sections', 'datapacks', f), 'utf8'))
    .replace(/\]\(\.\.\/progression-and-advancements\.md\)/g, '](index.md)')
    .replace(/\]\(\.\.\/([a-z0-9-]+\.md(?:#[^)]*)?)\)/g, (all, p) => TOP.test(p) ? all : `](../mods/${p})`));
}
// reference pages: hand-written intro + generated body
for (const [page, body] of [['vanilla-changes', 'vanilla-changes'], ['items-index', 'items-index'], ['technical', 'technical'], ['controls', 'controls'], ['mod-list', 'mod-list']]) {
  const intro = fs.readFileSync(path.join(HAND, `${page}.intro.md`), 'utf8');
  let b = fs.readFileSync(path.join(W, 'generated', `${body}.body.md`), 'utf8');
  b = b.replace(/\]\(mods\/quality-of-life\.md\)/g, '](mods/quality-of-life.md#pack-wide-tweaks)');
  if (page === 'technical') b = b.replace(/\]\(technical\.md#/g, '](#');
  fs.writeFileSync(path.join(GUIDE, `${page}.md`), intro.trimEnd() + '\n' + b);
}
for (const f of ['index.md', 'getting-started.md']) if (fs.existsSync(path.join(HAND, f))) fs.copyFileSync(path.join(HAND, f), path.join(GUIDE, f));

// ---- repair anchors: if an anchor is missing, use a heading that contains the link text, else drop it
const slugHeading = t => t.trim().toLowerCase().replace(/<[^>]+>/g, '').replace(/[^\p{L}\p{N}\s_-]/gu, '').replace(/\s/g, '-');
const headingsOf = file => {
  const out = []; const seen = {};
  for (const line of fs.readFileSync(file, 'utf8').split('\n')) {
    const m = line.match(/^#{1,6}\s+(.*)$/); if (!m) continue;
    let a = slugHeading(m[1]);
    if (seen[a] != null) { seen[a]++; a = `${a}-${seen[a]}`; } else seen[a] = 0;
    out.push({ text: m[1].toLowerCase(), a });
  }
  return out;
};
const walk0 = d => fs.readdirSync(d, { withFileTypes: true }).flatMap(e => e.isDirectory() ? walk0(path.join(d, e.name)) : [path.join(d, e.name)]);
for (const file of walk0(GUIDE).filter(f => f.endsWith('.md'))) {
  const txt = fs.readFileSync(file, 'utf8');
  const n = txt.replace(/\[([^\]]+)\]\(([^)#\s]+\.md)#([^)\s]+)\)/g, (all, label, p, frag) => {
    if (/^https?:/.test(p)) return all;
    const t = path.resolve(path.dirname(file), p); if (!fs.existsSync(t)) return all;
    const hs = headingsOf(t); if (hs.some(h => h.a === frag)) return all;
    const name = label.replace(/\s*\(datapack\)$/, '').toLowerCase();
    const short = name.replace(/\s*\(.*\)\s*/g, ' ').trim();
    const hit = hs.find(h => h.text.includes(name)) || hs.find(h => h.text.includes(short));
    return hit ? `[${label}](${p}#${hit.a})` : `[${label}](${p})`;
  });
  if (n !== txt) fs.writeFileSync(file, n);
}

// ---- validate links + anchors
const anchorsOf = file => {
  const set = new Set(); const seen = {};
  let inCode = false;
  for (const line of fs.readFileSync(file, 'utf8').split('\n')) {
    if (line.startsWith('```')) inCode = !inCode;
    const m = !inCode && line.match(/^#{1,6}\s+(.*)$/); if (!m) continue;
    let a = m[1].trim().toLowerCase().replace(/<[^>]+>/g, '').replace(/[^\p{L}\p{N}\s_-]/gu, '').replace(/\s/g, '-');
    if (seen[a] != null) { seen[a]++; a = `${a}-${seen[a]}`; } else seen[a] = 0;
    set.add(a);
  }
  return set;
};
const walk = d => fs.readdirSync(d, { withFileTypes: true }).flatMap(e => e.isDirectory() ? walk(path.join(d, e.name)) : [path.join(d, e.name)]);
const bad = [];
for (const file of walk(GUIDE).filter(f => f.endsWith('.md'))) {
  const txt = fs.readFileSync(file, 'utf8').replace(/<!--[\s\S]*?-->/g, '');
  for (const m of txt.matchAll(/\]\(([^)\s]+)\)/g)) {
    const href = m[1]; if (/^(https?:|mailto:)/.test(href)) continue;
    const [p, frag] = href.split('#');
    const target = p ? path.resolve(path.dirname(file), p) : file;
    if (!fs.existsSync(target)) { bad.push(`${path.relative(GUIDE, file)} -> ${href} (missing file)`); continue; }
    if (frag && target.endsWith('.md') && !anchorsOf(target).has(decodeURIComponent(frag).toLowerCase())) bad.push(`${path.relative(GUIDE, file)} -> ${href} (missing anchor)`);
  }
}
fs.writeFileSync(path.join(W, 'link-report.txt'), bad.join('\n'));
console.log(`pages: ${walk(GUIDE).length}, bad links: ${bad.length}`);
console.log(bad.slice(0, 60).join('\n'));
