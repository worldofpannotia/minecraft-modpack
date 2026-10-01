# Round A — verify & refine per-component research

You are refining automatically generated research notes for **World of Pannotia**, a Fabric modpack for Minecraft **26.2** (pack version 18.0.0-alpha.0). The end product is a player-facing wiki (guide + reference tables). Your batch is a list of unit IDs.

Base dir (`$W`): `C:/Users/bill/AppData/Local/Temp/claude/C--Users-bill-code-minecraft-modpack/563234ff-1e9c-463b-bcbc-2eea6af867b7/scratchpad/pipeline/work`

For each unit ID `<id>` (form `<group>__<name>`, group ∈ mods|datapacks|other):
- Ground-truth facts: `$W/facts/<group>/<name>.json` — extracted from the actual jar/datapack. Mod facts may include `modrinth.body` (published description), `authorReadme` (README from the pack author's own mod repo — very authoritative), `lang` (real item/block names), `recipes`, `vanillaOverrides` (data in the `minecraft:` namespace = changes to vanilla), `tooltips`. Datapack facts include recipes, loot-table diffs vs vanilla 26.1.2 (blocks like cinnabar/sulfur are new 26.2 vanilla blocks, not pack additions), function source.
- Full recipe list with inputs (if the mod has recipes): `$W/facts/mod-recipes/<name>.json` — lines like `ns:id [crafting_shaped] pattern [...] where A=... -> result`. Use this for exact recipes.
- Draft from a small local LLM: `$W/ollama/<id>.json` (may be missing or wrong — treat as a rough draft, not a source).

Also read once: `$W/facts/other/config-overrides.json` — the pack ships config overrides that change how some mods behave (e.g. allstackable, rightclickharvest, villagertweaks, grindenchantments, randombonemealflowers, deepslate_instamine). If a unit in your batch is affected, document the pack's configured behavior, not the mod's defaults.

## What to do per unit
1. Compare the draft against the facts. Remove anything not supported by facts or a source you checked. Fill in what the draft missed (especially vanilla changes, recipes, new items, keybinds/commands).
2. If facts are thin (no `modrinth` and no `authorReadme`, `missingJar`, low confidence, or open questions that matter to players), look it up: WebSearch / WebFetch the mod's Modrinth, CurseForge, GitHub, or wiki page. For VanillaTweaks packs, vanillatweaks.net descriptions are fine. For BlazeandCave's Advancements Pack (bacap), its CurseForge/Modrinth page. Record URLs used in `sources`. Do not spend more than ~3 fetches on any one unit.
3. Write the refined result to `$W/refined/<id>.json` using this shape (same as the draft plus extra fields):

```json
{
  "name": "Display name",
  "unit": "<id>",
  "kind": "mod | datapack | datapack-module | config | resourcepack",
  "category": "<one of the categories below>",
  "secondary_categories": [],
  "side": "client | server | both | unknown",
  "player_facing": true,
  "summary": "2-4 sentences, player point of view",
  "new_content": [{"name": "", "type": "item|block|entity|enchantment|effect|structure|biome|other", "how_to_obtain": "", "notes": ""}],
  "mechanics": [{"title": "", "description": ""}],
  "vanilla_changes": [{"what": "", "change": "", "kind": "recipe-added|recipe-changed|recipe-removed|loot|mob-behavior|block-behavior|worldgen|enchanting|trading|other"}],
  "qol": [""],
  "commands_and_keybinds": [""],
  "getting_started": "",
  "related_units": ["<other unit ids or mod names that interact/overlap>"],
  "sources": [""],
  "confidence": "low|medium|high",
  "editor_notes": "anything the final compiler should know (conflicts, uncertainty, things to verify in-game)"
}
```

Categories (pick exactly one primary): Building & Decoration · Storage & Inventory · Tools, Weapons & Armor · Enchanting & Magic · Mobs & Creatures · World Generation & Exploration · Farming, Food & Animals · Villagers & Trading · Transport & Movement · Redstone & Automation · Quality of Life · Interface & HUD · Maps & Navigation · Multiplayer & Server · Recipes & Crafting Tweaks · Loot & Drops · Progression & Advancements · Cosmetic, Visual & Audio · Performance & Technical · Libraries & APIs

Guidelines:
- `related_units` must use real unit IDs. The full list is in `$W/batches.json` (all batches); check it rather than guessing an ID.
- Libraries/APIs and pure performance mods: one-sentence summary, `player_facing: false`, everything else empty. Don't research them.
- Group large families of decorative variants ("Stairs, slabs and walls for every wood type") rather than listing each; but DO list every distinct functional item/block.
- Recipes that add new ways to craft vanilla items, or change/remove vanilla recipes, are `vanilla_changes` with an exact description (inputs → output) when the facts give it.
- Neutral, concise English. No marketing tone. Don't invent numbers.

When done, reply with ONLY a short report: units completed, units where you used the web, and anything notable the final compiler should know (cross-mod overlaps, contradictions, suspected broken/missing content). Keep it under 250 words.
