// Stage 1: per-unit research with a local Ollama model. Resumable.
// Usage: node ollama-research.mjs --model qwen3.5:9b [--only a,b,c] [--concurrency 2] [--ctx 32768] [--out dir]
import fs from 'fs';
import path from 'path';

const HERE = path.dirname(new URL(import.meta.url).pathname.replace(/^\/([A-Z]:)/, '$1'));
const arg = (k, d) => { const i = process.argv.indexOf('--' + k); return i > 0 ? process.argv[i + 1] : d; };
const MODEL = arg('model', 'qwen3.5:9b');
const CONC = +arg('concurrency', 2);
const CTX = +arg('ctx', 32768);
const ONLY = arg('only', '')?.split(',').filter(Boolean);
const OUTDIR = path.join(HERE, 'work', arg('out', 'ollama'));
fs.mkdirSync(OUTDIR, { recursive: true });
const LOG = path.join(OUTDIR, '_log.txt');
const log = m => { const l = `[${new Date().toISOString()}] ${m}`; console.log(l); fs.appendFileSync(LOG, l + '\n'); };

const CATEGORIES = ['Building & Decoration', 'Storage & Inventory', 'Tools, Weapons & Armor', 'Enchanting & Magic', 'Mobs & Creatures', 'World Generation & Exploration', 'Farming, Food & Animals', 'Villagers & Trading', 'Transport & Movement', 'Redstone & Automation', 'Quality of Life', 'Interface & HUD', 'Maps & Navigation', 'Multiplayer & Server', 'Recipes & Crafting Tweaks', 'Loot & Drops', 'Progression & Advancements', 'Cosmetic, Visual & Audio', 'Performance & Technical', 'Libraries & APIs'];

const SCHEMA = {
  type: 'object',
  properties: {
    name: { type: 'string' },
    category: { type: 'string', enum: CATEGORIES },
    secondary_categories: { type: 'array', items: { type: 'string', enum: CATEGORIES } },
    side: { type: 'string', enum: ['client', 'server', 'both', 'unknown'] },
    player_facing: { type: 'boolean' },
    summary: { type: 'string' },
    new_content: { type: 'array', items: { type: 'object', properties: { name: { type: 'string' }, type: { type: 'string', enum: ['item', 'block', 'entity', 'enchantment', 'effect', 'structure', 'biome', 'other'] }, how_to_obtain: { type: 'string' }, notes: { type: 'string' } }, required: ['name', 'type', 'how_to_obtain', 'notes'] } },
    mechanics: { type: 'array', items: { type: 'object', properties: { title: { type: 'string' }, description: { type: 'string' } }, required: ['title', 'description'] } },
    vanilla_changes: { type: 'array', items: { type: 'object', properties: { what: { type: 'string' }, change: { type: 'string' } }, required: ['what', 'change'] } },
    qol: { type: 'array', items: { type: 'string' } },
    commands_and_keybinds: { type: 'array', items: { type: 'string' } },
    getting_started: { type: 'string' },
    open_questions: { type: 'array', items: { type: 'string' } },
    confidence: { type: 'string', enum: ['low', 'medium', 'high'] },
  },
  required: ['name', 'category', 'secondary_categories', 'side', 'player_facing', 'summary', 'new_content', 'mechanics', 'vanilla_changes', 'qol', 'commands_and_keybinds', 'getting_started', 'open_questions', 'confidence'],
};

const SYSTEM = `You are documenting one component of "World of Pannotia", a Fabric Minecraft modpack for Minecraft 26.2. You will receive a JSON fact sheet that was extracted automatically from the mod jar (or datapack files), plus the mod's published description when available. Produce a structured write-up for a player-facing wiki.

Rules:
- Use ONLY the facts provided. Do not invent items, recipes, numbers, commands, or keybinds. If something is unclear, add it to open_questions instead of guessing.
- "summary": 2-4 plain sentences on what this adds or changes, from a player's point of view.
- "new_content": notable new items/blocks/entities/etc. For mods with very many items (e.g. 50+ decorative variants), group them (e.g. "Stairs and slabs for 30 wood types") instead of listing every one. Max ~25 entries.
- "vanilla_changes": anything that alters vanilla behavior, recipes, loot tables, or mob drops. Recipes/loot in the "minecraft" namespace are overrides of vanilla.
- "qol": convenience features (inventory tweaks, tooltips, HUD, auto-actions).
- "mechanics": how non-obvious systems work.
- "side": client = visual/UI only; server = gameplay/server logic; both = needs install on both.
- Libraries/APIs and pure performance mods: keep it brief, player_facing=false, empty arrays are fine.
- Write in clear, neutral English. No marketing language. No markdown headings.`;

function shrink(facts, maxChars) {
  let s = JSON.stringify(facts);
  const cut = (obj, key, n) => { if (obj && typeof obj[key] === 'string' && obj[key].length > n) obj[key] = obj[key].slice(0, n) + '…[truncated]'; };
  const steps = [
    () => cut(facts.modrinth, 'body', 6000), () => cut(facts, 'authorReadme', 6000),
    () => { if (facts.tooltips) facts.tooltips = Object.fromEntries(Object.entries(facts.tooltips).slice(0, 50)); },
    () => { if (facts.vanillaOverrides) facts.vanillaOverrides = facts.vanillaOverrides.slice(0, 25); },
    () => cut(facts.modrinth, 'body', 3000), () => cut(facts, 'authorReadme', 3000),
    () => { for (const ns of facts.namespaces ?? []) { ns.functions = Object.fromEntries(Object.entries(ns.functions ?? {}).slice(0, 4)); ns.vanillaLootOverrides = ns.vanillaLootOverrides?.slice(0, 40); ns.lootTables = ns.lootTables?.slice(0, 40); ns.recipes = ns.recipes?.slice(0, 60); } },
  ];
  for (const st of steps) { if (s.length <= maxChars) break; st(); s = JSON.stringify(facts); }
  if (s.length > maxChars) s = s.slice(0, maxChars) + '…[truncated]';
  return s;
}

function listUnits() {
  const dirs = ['mods', 'datapacks', 'other'].map(d => path.join(HERE, 'work', 'facts', d));
  return dirs.flatMap(d => fs.readdirSync(d).map(f => ({ id: `${path.basename(d)}__${f.replace(/\.json$/, '')}`, file: path.join(d, f) })));
}

async function research(unit) {
  const out = path.join(OUTDIR, unit.id + '.json');
  if (fs.existsSync(out)) return 'skip';
  const facts = JSON.parse(fs.readFileSync(unit.file, 'utf8'));
  const body = shrink(facts, Math.floor(CTX * 2.6) - 6000);
  const t0 = Date.now();
  for (let attempt = 1; attempt <= 3; attempt++) {
    try {
      const res = await fetch('http://localhost:11434/api/chat', {
        method: 'POST', headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ model: MODEL, stream: false, think: false, format: SCHEMA, keep_alive: '30m',
          options: { num_ctx: CTX, temperature: attempt === 1 ? 0.2 : 0.6, num_predict: 3500, repeat_penalty: 1.1 },
          messages: [{ role: 'system', content: SYSTEM }, { role: 'user', content: `Fact sheet:\n${body}` }] }),
        signal: AbortSignal.timeout(20 * 60 * 1000),
      });
      const j = await res.json();
      if (j.error) throw new Error(j.error);
      const parsed = JSON.parse(j.message.content);
      parsed._meta = { unit: unit.id, model: MODEL, seconds: Math.round((Date.now() - t0) / 1000), promptTokens: j.prompt_eval_count, outTokens: j.eval_count, inputChars: body.length };
      fs.writeFileSync(out, JSON.stringify(parsed, null, 1));
      return parsed._meta;
    } catch (e) {
      log(`ERR ${unit.id} attempt ${attempt}: ${e.message}`);
    }
  }
  fs.writeFileSync(path.join(OUTDIR, unit.id + '.failed'), 'failed');
  return 'failed';
}

let units = listUnits();
if (ONLY?.length) units = units.filter(u => ONLY.some(o => u.id.includes(o)));
log(`start model=${MODEL} units=${units.length} conc=${CONC} ctx=${CTX}`);
let i = 0, done = 0;
const worker = async () => { while (i < units.length) { const u = units[i++]; const r = await research(u); done++; log(`${done}/${units.length} ${u.id} ${typeof r === 'string' ? r : JSON.stringify(r)}`); } };
await Promise.all(Array.from({ length: CONC }, worker));
log('finished');
