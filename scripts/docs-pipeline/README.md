# Docs pipeline

These scripts generated the player guide in `docs/guide/`. Every script writes into `./work/` next to itself, and that directory is gitignored.

| Stage | What it does | Command |
|---|---|---|
| 0a | Extracts facts from every mod jar: `fabric.mod.json`, en_us lang, recipes, vanilla-namespace overrides, and the Modrinth description looked up by sha1 | `node extract-mods.mjs` |
| 0b | Attaches READMEs from the pack author's own mods (`~/code/minecraft-mods/<mod>/README.md`) | `node attach-readmes.mjs` |
| 0c | Lists full recipes (inputs → outputs) for each mod | `node extract-recipes.mjs` |
| 0d | Extracts datapack, config-override and resource-pack facts, and diffs loot tables against vanilla (`~/code/minecraft-assets`) | `node extract-datapacks.mjs` |
| 1 | Drafts a structured write-up for each unit with a local Ollama model. It resumes where it left off. | `node ollama-research.mjs --model qwen3.5:9b` |
| 2A | Sonnet agents verify the drafts against the facts in batches of about 20 → `work/refined/*.json` | prompt: `ROUND_A.md` |
| 2B | Sonnet agents consolidate each category into a draft page → `work/sections/*.md` | prompt: `ROUND_B.md` |
| 3 | The main agent compiles the final docs | — |

Notes:
- Mod jars are read from the CurseForge instance `World of Pannotia (dev build)`. Mods missing from that instance are downloaded from Modrinth into `work/extra-jars/<projectID>-<file>.jar`.
- `batch-ready.sh <n>` waits until every unit in batch `n` of `work/batches.json` has an Ollama draft.
- The first run (2026-10-01) used `qwen3.5:9b` with a 32k context window, `num_predict` 3500 and reasoning off. That took about 1 minute per unit on an RTX 5070 Laptop with 8 GB of VRAM.
- The `$W` path in the Round A/B prompts points at the scratch directory used for that run. Change it to `scripts/docs-pipeline/work` when re-running.
