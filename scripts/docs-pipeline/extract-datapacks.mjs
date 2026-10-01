// Stage 0b: deterministic fact extraction for datapacks, config overrides, resource pack.
import fs from 'fs';
import path from 'path';

const REPO = 'C:/Users/bill/code/minecraft-modpack';
const DP = REPO + '/client/overrides/datapacks';
const VANILLA = 'C:/Users/bill/code/minecraft-assets/data/minecraft';
const HERE = path.dirname(new URL(import.meta.url).pathname.replace(/^\/([A-Z]:)/, '$1'));
const OUT = path.join(HERE, 'work', 'facts', 'datapacks');
fs.mkdirSync(OUT, { recursive: true });
fs.mkdirSync(path.join(HERE, 'work', 'facts', 'other'), { recursive: true });

const trunc = (s, n) => (s && s.length > n ? s.slice(0, n) + '…' : s);
const walk = d => fs.existsSync(d) ? fs.readdirSync(d, { withFileTypes: true }).flatMap(e => e.isDirectory() ? walk(path.join(d, e.name)) : [path.join(d, e.name)]) : [];
const readJson = f => { try { return JSON.parse(fs.readFileSync(f, 'utf8')); } catch { return null; } };
const rel = (base, f) => path.relative(base, f).replace(/\\/g, '/');

function ingr(x) {
  if (x == null) return '?';
  if (typeof x === 'string') return x.replace('minecraft:', '');
  if (Array.isArray(x)) return x.map(ingr).join('|');
  if (x.item) return x.item.replace('minecraft:', '');
  if (x.tag) return '#' + x.tag.replace('minecraft:', '');
  return JSON.stringify(x);
}
function describeRecipe(r) {
  const t = (r.type ?? '').replace('minecraft:', '');
  const res = r.result ?? {};
  const out = typeof res === 'string' ? res : `${res.id ?? res.item ?? '?'}${res.count > 1 ? ' x' + res.count : ''}`;
  let inp = '';
  if (r.key && r.pattern) inp = `pattern ${JSON.stringify(r.pattern)} where ${Object.entries(r.key).map(([k, v]) => `${k}=${ingr(v)}`).join(', ')}`;
  else if (r.ingredients) inp = r.ingredients.map(ingr).join(' + ');
  else if (r.ingredient) inp = ingr(r.ingredient);
  else if (r.base) inp = `template ${ingr(r.template)} + base ${ingr(r.base)} + addition ${ingr(r.addition)}`;
  return `[${t}] ${inp} -> ${out.replace('minecraft:', '')}`;
}
function lootItems(j, acc = { items: new Set(), refs: new Set(), functions: new Set() }) {
  if (Array.isArray(j)) j.forEach(x => lootItems(x, acc));
  else if (j && typeof j === 'object') {
    if (j.type === 'minecraft:item' || j.type === 'item') acc.items.add(String(j.name).replace('minecraft:', ''));
    if (j.type === 'minecraft:loot_table' || j.type === 'loot_table') acc.refs.add(typeof j.value === 'string' ? j.value : typeof j.name === 'string' ? j.name : 'inline');
    if (j.function) acc.functions.add(j.function.replace('minecraft:', ''));
    Object.values(j).forEach(v => lootItems(v, acc));
  }
  return acc;
}
function lootDiff(overrideFile, relPath) {
  const o = readJson(overrideFile); const v = readJson(path.join(VANILLA, relPath));
  const a = lootItems(o);
  if (!v) return { path: relPath, newTable: true, items: [...a.items], refs: [...a.refs] };
  const b = lootItems(v);
  return {
    path: relPath,
    addedItems: [...a.items].filter(x => !b.items.has(x)),
    removedItems: [...b.items].filter(x => !a.items.has(x)),
    referencesOtherTables: [...a.refs],
    addedFunctions: [...a.functions].filter(x => !b.functions.has(x)),
    overrideSnippet: trunc(JSON.stringify(o), 700),
  };
}

function summarizeNamespace(packDir, ns) {
  const nsDir = path.join(packDir, 'data', ns);
  const files = walk(nsDir);
  const u = { namespace: ns, fileCounts: {}, recipes: [], lootTables: [], vanillaLootOverrides: [], functions: {}, advancements: 0, tags: [], other: [] };
  for (const f of files) {
    const r = rel(nsDir, f); const kind = r.split('/')[0];
    u.fileCounts[kind] = (u.fileCounts[kind] ?? 0) + 1;
    if (kind === 'recipe' || kind === 'recipes') { const j = readJson(f); if (j) u.recipes.push(`${r.replace(/^recipes?\//, '').replace('.json', '')}: ${describeRecipe(j)}`); }
    else if (kind === 'loot_table') {
      if (ns === 'minecraft') { const d = lootDiff(f, r); if (d.referencesOtherTables?.length && d.referencesOtherTables.every(x => /^(vanilla|pannotia):/.test(x))) { delete d.overrideSnippet; delete d.addedItems; d.pattern = 'vanilla copy + extra pannotia table'; } u.vanillaLootOverrides.push(d); }
      else if (ns === 'vanilla') { const d = lootDiff(f, r); delete d.overrideSnippet; if (d.addedItems?.length || d.removedItems?.length || d.addedFunctions?.length || d.newTable) (u.vanillaCopyDifferences ??= []).push(d); else u.identicalVanillaCopies = (u.identicalVanillaCopies ?? 0) + 1; }
      else u.lootTables.push(`${r} items=${[...lootItems(readJson(f)).items].slice(0, 25).join(',')}`);
    }
    else if (kind === 'function') u.functions[r] = fs.readFileSync(f, 'utf8');
    else if (kind === 'advancement') u.advancements++;
    else if (kind === 'tags') u.tags.push(`${r}: ${trunc(JSON.stringify(readJson(f)?.values ?? []), 300)}`);
    else u.other.push(`${r}: ${trunc(fs.readFileSync(f, 'utf8').replace(/\s+/g, ' '), 300)}`);
  }
  // keep function text bounded: prefer load/tick/install + shortest others
  const fnames = Object.keys(u.functions);
  u.functionList = fnames;
  const key = fnames.filter(n => /(load|tick|install|init|main|help|uninstall)\.mcfunction$/.test(n));
  let budget = 6000; const kept = {};
  for (const n of [...key, ...fnames.filter(n => !key.includes(n)).sort((a, b) => u.functions[a].length - u.functions[b].length)]) {
    const t = u.functions[n].replace(/^\s*#.*$/gm, l => l).trim();
    if (budget <= 0) break; kept[n] = trunc(t, 1500); budget -= kept[n].length;
  }
  u.functions = kept;
  if (u.recipes.length > 120) u.recipes = [...u.recipes.slice(0, 120), `…and ${u.recipes.length - 120} more`];
  if (u.tags.length > 40) u.tags = [...u.tags.slice(0, 40), `…and ${u.tags.length - 40} more`];
  if (u.other.length > 30) u.other = [...u.other.slice(0, 30), `…and ${u.other.length - 30} more`];
  return u;
}

const BOILER = new Set(['vanillatweaks']);
for (const pack of fs.readdirSync(DP)) {
  const packDir = path.join(DP, pack);
  if (!fs.statSync(packDir).isDirectory()) continue;
  const mc = readJson(path.join(packDir, 'pack.mcmeta'));
  const desc = mc?.pack?.description;
  const base = { pack, description: typeof desc === 'string' ? desc : Array.isArray(desc) ? desc.map(d => d.text ?? d).join('') : JSON.stringify(desc) };
  const extra = fs.readdirSync(packDir).filter(f => !['data', 'pack.mcmeta', 'pack.png'].includes(f));
  for (const f of extra) { const p = path.join(packDir, f); if (fs.statSync(p).isFile()) base[`file:${f}`] = trunc(fs.readFileSync(p, 'utf8'), 4000); }
  const namespaces = fs.existsSync(path.join(packDir, 'data')) ? fs.readdirSync(path.join(packDir, 'data')) : [];

  if (pack === 'bacap' || pack === 'bacap-torture-edition') {
    // summarize advancements by tab rather than per-advancement
    const tabs = {};
    for (const ns of namespaces) for (const f of walk(path.join(packDir, 'data', ns, 'advancement'))) {
      const r = rel(path.join(packDir, 'data', ns, 'advancement'), f); const tab = `${ns}/${r.split('/')[0]}`;
      const j = readJson(f); const t = tabs[tab] ??= { count: 0, sampleTitles: [] };
      t.count++;
      const title = j?.display?.title; const tt = typeof title === 'string' ? title : title?.text ?? title?.translate;
      if (tt && t.sampleTitles.length < 15) t.sampleTitles.push(tt);
    }
    const nsCounts = Object.fromEntries(namespaces.map(ns => [ns, walk(path.join(packDir, 'data', ns)).length]));
    const fnNames = namespaces.flatMap(ns => walk(path.join(packDir, 'data', ns, 'function')).map(f => `${ns}:${rel(path.join(packDir, 'data', ns, 'function'), f)}`));
    fs.writeFileSync(path.join(OUT, `${pack}.json`), JSON.stringify({ ...base, unit: pack, kind: 'advancement-pack', namespaceFileCounts: nsCounts, advancementTabs: tabs, functionSample: fnNames.slice(0, 80), functionCount: fnNames.length }, null, 1));
    continue;
  }
  const units = namespaces.filter(ns => !BOILER.has(ns));
  // small packs (or packs whose only real namespace is minecraft) → single unit
  const featureNs = units.filter(ns => ns !== 'minecraft');
  if (featureNs.length <= 1) {
    fs.writeFileSync(path.join(OUT, `${pack}.json`), JSON.stringify({ ...base, unit: pack, kind: 'datapack', namespaces: units.map(ns => summarizeNamespace(packDir, ns)) }, null, 1));
  } else {
    for (const ns of units) fs.writeFileSync(path.join(OUT, `${pack}__${ns}.json`), JSON.stringify({ ...base, unit: `${pack}/${ns}`, kind: 'datapack-module', namespaces: [summarizeNamespace(packDir, ns)] }, null, 1));
  }
}

// config overrides
const CFG = REPO + '/client/overrides/config';
const cfg = walk(CFG).map(f => ({ file: rel(CFG, f), content: trunc(fs.readFileSync(f, 'utf8'), 6000) }));
fs.writeFileSync(path.join(HERE, 'work', 'facts', 'other', 'config-overrides.json'), JSON.stringify({ unit: 'config-overrides', kind: 'config', files: cfg }, null, 1));
// resource pack
const RP = REPO + '/client/overrides/resourcepacks';
for (const rp of fs.readdirSync(RP)) {
  const files = walk(path.join(RP, rp)).map(f => rel(path.join(RP, rp), f));
  const textFiles = files.filter(f => /\.(json|mcmeta|txt|md)$/.test(f) && !/\/(models|blockstates)\//.test(f)).slice(0, 30);
  fs.writeFileSync(path.join(HERE, 'work', 'facts', 'other', `resourcepack-${rp}.json`), JSON.stringify({ unit: rp, kind: 'resourcepack', fileCount: files.length, dirs: [...new Set(files.map(f => f.split('/').slice(0, 3).join('/')))].slice(0, 80), textFiles: Object.fromEntries(textFiles.map(f => [f, trunc(fs.readFileSync(path.join(RP, rp, f), 'utf8'), 1500)])) }, null, 1));
}
console.log(fs.readdirSync(OUT).length, 'datapack units');
