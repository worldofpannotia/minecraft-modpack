# Round B — category consolidation

You are drafting one category page of the player wiki for **World of Pannotia**, a Fabric modpack for Minecraft **26.2**. The audience is players: a readable guide first, then complete reference detail.

Base dir (`$W`): `C:/Users/bill/AppData/Local/Temp/claude/C--Users-bill-code-minecraft-modpack/563234ff-1e9c-463b-bcbc-2eea6af867b7/scratchpad/pipeline/work`

Inputs: verified per-component notes in `$W/refined/*.json` (fields: name, unit, kind, category, secondary_categories, side, summary, new_content, mechanics, vanilla_changes, qol, commands_and_keybinds, getting_started, related_units, sources, editor_notes). Your category and the list of unit files (primary members + secondary mentions) are given in your task message. If something looks wrong or contradictory, check the raw facts at `$W/facts/<group>/<name>.json` (unit id `<group>__<name>`). Don't use the web.

## Output 1: `$W/sections/<category-slug>.md`
GitHub-flavored markdown, structured like this:

```
# <Category>

<2-4 sentence intro: what this part of the pack covers and how the pieces fit together.>

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
(one row per primary member, alphabetical; Side = Client / Server / Both)

## <Thematic subsection, e.g. "Backpacks and portable storage">
<Prose explaining how to use the features in this theme, grouping related mods together. Mention mod names in **bold** the first time.>

### <Mod name>
<summary>
- **New:** bullet list or compact table of new items/blocks (name — how to obtain — notes)
- **How it works:** mechanics
- **Controls:** keybinds/commands
- **Pack note:** pack-specific config behavior, if any

(repeat for each primary member; tiny/simple mods can be 1-3 lines)

## Also relevant
<bullets linking secondary-category mods, e.g. "**Mod X** (see [Storage & Inventory](storage-and-inventory.md)) also adds ...">
```

Rules:
- Group by theme, not alphabetically, where it helps players (e.g. all minimap/waypoint mods together; call out when two mods do overlapping things and how they differ).
- Every primary member must appear. Don't drop facts from the notes; do drop marketing fluff and unsupported claims.
- Vanilla changes: mention them briefly in the mod's section (a separate page will hold the full vanilla-changes reference).
- Cross-links use relative paths to other category pages: slug = lowercase, `&` → `and`, non-alphanumerics → `-` (e.g. `tools-weapons-and-armor.md`). Datapack pages live at `../datapacks/<pack>.md`.
- Mark low-confidence claims with "(unverified)".
- Category membership is in `$W/categories.json` (keyed by category name: slug, primary unit ids, secondary unit ids). Secondary units include datapacks — link them to `../datapacks/<pack>.md` where <pack> is the datapack directory name (e.g. unit `datapacks__world-of-pannotia__mini_blocks` → `../datapacks/world-of-pannotia.md`).
- Things only the pack maintainer cares about (suspected bugs, version mismatches, missing deps, editor_notes) go in an HTML comment `<!-- maintainer: ... -->` right where relevant, so they are invisible to players. Known pack-wide facts: Patchouli is NOT currently in the pack (it is waiting for an update), so Patchouli guidebooks (Minekea Catalogue, Hopper X-Treme manual, the pack guidebook) are currently unavailable — say so briefly where a mod mentions its guidebook. Sodium IS in the pack.
- Write files with the Write tool (bash heredocs with backticks/quotes tend to break).

## Output 2: `$W/sections/<category-slug>.notes.json`
`{"overlaps": [...], "cross_links": [...], "questions_for_pack_author": [...], "glossary_terms": [...]}`

Reply with ONLY a ≤150-word report.
