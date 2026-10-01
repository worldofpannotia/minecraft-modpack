# Guide maintainer notes

These are issues found while generating `docs/guide/` (2026-10-01). They are for the pack maintainer, not players. The player pages also carry hidden `<!-- maintainer: ... -->` comments at the relevant spots.

## Likely bugs in the pack

**world-of-pannotia datapack**
- The zombie, skeleton, creeper, piglin and tropical-fish head tables use the `random_chance_with_looting` condition. It was removed in 1.21 and replaced by `random_chance_with_enchanted_bonus`, so these drops probably fail to load.
- Most `pannotia` recipes (copper oxidation, dyes, coral) use the old `"result": {"item": ...}` format, which should be `{"id": ...}` since 1.20.5. The concrete-blasting recipes use a bare-string result. Only the small dripleaf recipe uses the current format.
- `minecraft:entities/bat` and `villager` reference `bat_membranes:` and `villager_death:` loot tables. Neither exists in the pack.
- `sheep.json` points at `jeb_.json`, which has no name check. Every player-killed sheep therefore has a 10% chance to drop the jeb_ head. The name-gated `jeb_sheep.json` exists but nothing references it.
- A leftover `vdf:load` / `vdf:tick` function tag points at nothing. The generic Tropical Fish head in `more_mob_heads` is never referenced.
- The Ender Dragon drops an elytra, egg and head on every kill and doesn't require a player kill, so elytras are farmable. Make sure that's intended.
- Budding amethyst + Silk Touch is implemented twice: in world-of-pannotia and in the `silk-touch-budding-amethyst` pack.

**Patchouli / guidebooks**
- Patchouli is in `files_waiting`. The dev instance log shows `minekea:minekea_catalogue`, `minekea:grant_book_on_first_join`, `hopperxtreme:hx_manual` and `hopperxtreme:grant_book_on_first_join` failing to parse. Those guidebooks, and the pack's own `pannotia` book, are unavailable until Patchouli returns.

**Pack author's mods**
- **Hopper X-Treme:** `hopperxtreme:tools/wrench` fails to parse with "Unknown registry key … hopperxtreme:tools/wrench" (from the dev instance `latest.log`). The `c:tools/wrenches` tag fails as a result, so the wrench item seems to be missing.
- **Minekea:** the Ancient, Doom and End Lantern recipes are identical, so only one can be crafted. Nugget bags have no recipe: a sack uncrafts into bags but needs 9 bags to make. The honey bucket has no recipe (you fill it from a honey cauldron or jar). The vanilla barrel and bookshelf recipes are overridden to oak-only, and the oak bookshelf yields 1 while the variant bookshelves yield 3.
- **Shulker Stuff:** its config screen shows stray Miniblock Merchants options. The Deep Storage enchantment isn't registered.
- **Miniblock Merchants:** the README says 25 professions, but the lang file and conversion list have 26.

**Possibly stale or mismatched**
- The `wyvernity-datapack-resources` resource pack only supplies assets for Enchantment Plus and Simple Paxels, and neither is in the pack anymore. It's probably safe to remove. It is not documented in the guide.
- Armored Elytra's jar isn't in the dev instance. Its Modrinth page says it needs a separate datapack to combine the items, and none ships with the pack.
- Jars built for a different Minecraft version: Connectivity (26.1), Falling Leaves (26.1), Tax Free Levels (26.1), WITS (26.1), Visuality (+26.3). Bow Infinity Fix's jar name contains "neo".
- Fluid Void Fading reportedly doesn't work with Sodium, and Sodium is in the pack.
- MiniHUD structure overlays need Servux on the server, and Servux isn't in the pack. Overflowing Bars recommends AttributeFix, which isn't in the pack either.
- Leaky and Armored Elytra are in the manifest but missing from the `World of Pannotia (dev build)` instance. The instance has "Enchanting Changes", which isn't in the manifest.
- The dev instance's `global_packs/` folders are empty, so the datapacks weren't loaded when that instance's log was written.
- `CLAUDE.md` is out of date. It still says MC 1.21.10 and `config/paxi/...` paths.

**Default key clashes:** `B` (Xaero's waypoint / Resource Backpacks), `G` (Full Brightness / Woodwalkers / ReMorphed), `U` (Xaero's waypoint list / Woodwalkers), `V` (Simple Voice Chat / AutoRun). Consider shipping an `options.txt` or keybind config that resolves them.

**Overlaps to check in game:** Right Click Harvest vs Replanting Crops. Woodwalkers vs ReMorphed (two shapeshifting mods). Easy Anvils vs Tax Free Levels on rename cost. Universal Enchants vs Remove Enchantment Incompatibility. Miniblock Merchants vs the Mini Blocks module vs Hermit Edition mini-block trades.

## Per-unit notes from the verification pass

Low-confidence units and editor notes, straight from the refined research (`scripts/docs-pipeline/snapshot/refined/`):

