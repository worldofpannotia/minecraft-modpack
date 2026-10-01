// Supplement: full recipe descriptions (inputs -> outputs) per mod jar.
import { createRequire } from 'module'; import fs from 'fs'; import path from 'path';
const require = createRequire('C:/Users/bill/code/minecraft-modpack/package.json');
const JSZip = require('jszip');
const INST = 'C:/Users/bill/curseforge/minecraft/Instances/World of Pannotia (dev build)/mods';
const EXTRA = 'work/extra-jars'; const FACTS = 'work/facts/mods'; const OUT = 'work/facts/mod-recipes'; fs.mkdirSync(OUT, { recursive: true });
const ingr = x => x == null ? '?' : typeof x === 'string' ? x.replace('minecraft:', '') : Array.isArray(x) ? x.map(ingr).join('|') : x.item ? x.item.replace('minecraft:', '') : x.tag ? '#' + x.tag.replace('minecraft:', '') : JSON.stringify(x).slice(0, 120);
function describe(r) {
  const t = (r.type ?? '').replace('minecraft:', ''); const res = r.result ?? {};
  const out = typeof res === 'string' ? res : `${res.id ?? res.item ?? '?'}${res.count > 1 ? ' x' + res.count : ''}`;
  let inp = '';
  if (r.key && r.pattern) inp = `pattern ${JSON.stringify(r.pattern)} where ${Object.entries(r.key).map(([k, v]) => `${k}=${ingr(v)}`).join(', ')}`;
  else if (r.ingredients) inp = r.ingredients.map(ingr).join(' + ');
  else if (r.ingredient) inp = ingr(r.ingredient);
  else if (r.base) inp = `template ${ingr(r.template)} + base ${ingr(r.base)} + addition ${ingr(r.addition)}`;
  else inp = JSON.stringify(r).slice(0, 200);
  return `[${t}] ${inp} -> ${String(out).replace('minecraft:', '')}`;
}
for (const f of fs.readdirSync(FACTS)) {
  const j = JSON.parse(fs.readFileSync(path.join(FACTS, f), 'utf8')); if (!j.jar) continue;
  let jp = path.join(INST, j.jar); if (!fs.existsSync(jp)) jp = path.join(EXTRA, fs.readdirSync(EXTRA).find(n => n.endsWith(j.jar)) ?? 'x'); if (!fs.existsSync(jp)) continue;
  const zip = await JSZip.loadAsync(fs.readFileSync(jp)); const lines = [];
  for (const n of Object.keys(zip.files)) { const m = n.match(/^data\/([^/]+)\/recipes?\/(.+)\.json$/); if (!m) continue;
    try { const r = JSON.parse(await zip.file(n).async('string')); lines.push(`${m[1]}:${m[2]} ${describe(r)}`); } catch {} }
  if (lines.length) fs.writeFileSync(path.join(OUT, f), JSON.stringify({ count: lines.length, recipes: lines.slice(0, 400), truncated: lines.length > 400 }, null, 1));
}
console.log(fs.readdirSync(OUT).length, 'mods with recipes');
