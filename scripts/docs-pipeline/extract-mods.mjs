// Stage 0: deterministic fact extraction from mod jars + Modrinth metadata.
// Usage: node extract-mods.mjs
import { createRequire } from 'module';
import fs from 'fs';
import path from 'path';
import crypto from 'crypto';

const REPO = 'C:/Users/bill/code/minecraft-modpack';
const require = createRequire(REPO + '/package.json');
const JSZip = require('jszip');
const INST = 'C:/Users/bill/curseforge/minecraft/Instances/World of Pannotia (dev build)';
const OUT = path.join(path.dirname(new URL(import.meta.url).pathname.replace(/^\/([A-Z]:)/, '$1')), 'work', 'facts', 'mods');
const EXTRA_JARS = path.join(path.dirname(OUT), '..', 'extra-jars');
fs.mkdirSync(OUT, { recursive: true });

const manifest = JSON.parse(fs.readFileSync(REPO + '/client/manifest.tpl.json', 'utf8'));
const inst = JSON.parse(fs.readFileSync(INST + '/minecraftinstance.json', 'utf8'));
const byId = new Map(inst.installedAddons.map(a => [a.addonID, a]));

const slug = s => s.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '');
const trunc = (s, n) => (s && s.length > n ? s.slice(0, n) + '…' : s);

function resultOf(r) {
  const res = r.result ?? r.output;
  if (!res) return null;
  if (typeof res === 'string') return res;
  return res.id ?? res.item ?? null;
}

async function analyzeJar(buf) {
  const zip = await JSZip.loadAsync(buf);
  const files = Object.keys(zip.files).filter(f => !zip.files[f].dir);
  const facts = { lang: {}, langOther: {}, recipes: {}, vanillaOverrides: [], dataDirs: {}, nestedJars: [], tooltips: {} };

  const fmj = zip.file('fabric.mod.json');
  if (fmj) {
    try {
      const j = JSON.parse((await fmj.async('string')).replace(/[\u0000-\u0019]+/g, ' '));
      facts.modId = j.id; facts.modName = j.name; facts.description = j.description;
      facts.environment = j.environment ?? '*';
      facts.depends = Object.keys(j.depends ?? {}).filter(d => !['minecraft', 'java', 'fabricloader'].includes(d));
      facts.homepage = j.contact?.homepage ?? j.contact?.sources;
      facts.hasCommands = false;
    } catch (e) { facts.fmjError = String(e); }
  }

  for (const f of files) {
    if (/^META-INF\/jars\/.+\.jar$/.test(f)) facts.nestedJars.push(path.basename(f));
    const lm = f.match(/^assets\/([^/]+)\/lang\/en_us\.json$/);
    if (lm) {
      try {
        const lang = JSON.parse(await zip.file(f).async('string'));
        for (const [k, v] of Object.entries(lang)) {
          if (typeof v !== 'string') continue;
          const kind = k.split('.')[0];
          if (['item', 'block', 'entity', 'enchantment', 'effect', 'biome', 'potion', 'villager', 'entity_type'].includes(kind) && k.split('.').length === 3) {
            (facts.lang[kind] ??= []).push(v);
          } else if (/tooltip|desc|info|guide|hint|help|config\.[^.]+\.[^.]+$|option/i.test(k)) {
            facts.tooltips[k] = trunc(v, 200);
          } else if (/^(key\.|key_category|commands?\.)/.test(k)) {
            (facts.langOther[kind] ??= []).push(trunc(v, 80));
          }
        }
      } catch {}
    }
    const dm = f.match(/^data\/([^/]+)\/([^/]+)\/(.+)$/);
    if (dm) {
      const [, ns, kind, rest] = dm;
      const key = `${ns}/${kind}`;
      facts.dataDirs[key] = (facts.dataDirs[key] ?? 0) + 1;
      if ((kind === 'recipe' || kind === 'recipes') && f.endsWith('.json')) {
        try {
          const r = JSON.parse(await zip.file(f).async('string'));
          const entry = { id: `${ns}:${rest.replace(/\.json$/, '')}`, type: r.type, result: resultOf(r) };
          (facts.recipes[r.type ?? 'unknown'] ??= []).push(entry.result ?? entry.id);
          if (ns === 'minecraft') facts.vanillaOverrides.push({ file: f, recipe: trunc(JSON.stringify(r), 600) });
        } catch {}
      } else if (ns === 'minecraft' && !kind.startsWith('tags') && kind !== 'tags') {
        // vanilla-namespace data override (loot tables, worldgen, enchantments, etc.)
        const txt = await zip.file(f).async('string').catch(() => '');
        facts.vanillaOverrides.push({ file: f, content: trunc(txt.replace(/\s+/g, ' '), 400) });
      }
    }
  }
  facts.hasMixinsOnly = Object.keys(facts.dataDirs).length === 0 && Object.keys(facts.lang).length === 0;
  // compact recipe lists
  for (const t of Object.keys(facts.recipes)) {
    const arr = [...new Set(facts.recipes[t])];
    facts.recipes[t] = { count: facts.recipes[t].length, results: arr.slice(0, 60), more: Math.max(0, arr.length - 60) };
  }
  for (const k of Object.keys(facts.lang)) {
    const arr = [...new Set(facts.lang[k])];
    facts.lang[k] = arr.length > 150 ? { count: arr.length, sample: arr.slice(0, 150) } : arr;
  }
  const tk = Object.keys(facts.tooltips);
  if (tk.length > 120) facts.tooltips = Object.fromEntries(tk.slice(0, 120).map(k => [k, facts.tooltips[k]]));
  facts.vanillaOverrides = facts.vanillaOverrides.slice(0, 80);
  return facts;
}

async function modrinthLookup(hashes) {
  const headers = { 'User-Agent': 'chimericdream/world-of-pannotia-docs (bill@chimericdream.com)', 'Content-Type': 'application/json' };
  const vres = await fetch('https://api.modrinth.com/v2/version_files', { method: 'POST', headers, body: JSON.stringify({ hashes, algorithm: 'sha1' }) });
  const versions = await vres.json();
  const pids = [...new Set(Object.values(versions).map(v => v.project_id))];
  const projects = {};
  for (let i = 0; i < pids.length; i += 80) {
    const ids = encodeURIComponent(JSON.stringify(pids.slice(i, i + 80)));
    const pres = await fetch(`https://api.modrinth.com/v2/projects?ids=${ids}`, { headers });
    for (const p of await pres.json()) projects[p.id] = p;
  }
  return { versions, projects };
}

const entries = [];
for (const f of manifest.files) {
  const a = byId.get(f.projectID);
  let jarPath = a ? path.join(INST, 'mods', a.installedFile.fileName) : null;
  if (jarPath && !fs.existsSync(jarPath)) jarPath = null;
  if (!jarPath && fs.existsSync(EXTRA_JARS)) {
    const cand = fs.readdirSync(EXTRA_JARS).find(n => n.startsWith(`${f.projectID}-`));
    if (cand) jarPath = path.join(EXTRA_JARS, cand);
  }
  entries.push({ name: f.name, projectID: f.projectID, fileID: f.fileID, jarPath, curseforgeUrl: a?.webSiteURL ?? null });
}

const hashes = {};
for (const e of entries) {
  if (!e.jarPath) continue;
  e.buf = fs.readFileSync(e.jarPath);
  e.sha1 = crypto.createHash('sha1').update(e.buf).digest('hex');
  hashes[e.sha1] = e;
}
const { versions, projects } = await modrinthLookup(Object.keys(hashes));

let n = 0;
for (const e of entries) {
  const out = { name: e.name, slug: slug(e.name), curseforge: { projectID: e.projectID, fileID: e.fileID, url: e.curseforgeUrl }, jar: e.jarPath ? path.basename(e.jarPath) : null };
  if (e.buf) {
    Object.assign(out, await analyzeJar(e.buf));
    const v = versions[e.sha1];
    const p = v && projects[v.project_id];
    if (p) out.modrinth = { slug: p.slug, title: p.title, summary: p.description, categories: p.categories, client_side: p.client_side, server_side: p.server_side, body: trunc(p.body, 12000), wiki: p.wiki_url, source: p.source_url };
  } else out.missingJar = true;
  fs.writeFileSync(path.join(OUT, out.slug + '.json'), JSON.stringify(out, null, 1));
  n++;
}
console.log(`wrote ${n} fact files; missing jars: ${entries.filter(e => !e.jarPath).map(e => e.name).join(', ')}; no modrinth: ${entries.filter(e => e.sha1 && !versions[e.sha1]).map(e => e.name).join(', ')}`);
