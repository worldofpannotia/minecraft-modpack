# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

World of Pannotia is a Fabric-based Minecraft modpack currently in development for Minecraft 26.2 (version 18.0.0-alpha.0). The project packages a curated collection of mods, custom datapacks, resource packs, and a Patchouli guidebook into a distributable modpack format compatible with CurseForge.

## Build System & Commands

### Build the Client Modpack

```bash
node scripts/build-client.mjs
```

This is the primary build command that:
1. Cleans and prepares the `./tmp` directory
2. Copies the client configuration to `./tmp/client` (excluding `overrides/config.old`)
3. Zips each datapack in `./tmp/client/overrides/datapacks/` (via `zipSubdirs` in `scripts/lib/zip.mjs`)
4. Zips each resource pack in `./tmp/client/overrides/resourcepacks/` the same way
5. Renames `manifest.tpl.json` to `manifest.json`
6. Creates a zip file named `world-of-pannotia--{minecraft-version}-{pack-version}.zip` in the `./dist` directory

**Build flags:**
- `node scripts/build-client.mjs -f`: Force overwrite existing dist zip file
- `node scripts/build-client.mjs -d`: Build dev version (appends `--dev` to filename and changes manifest name)

### Other Scripts

- `node scripts/clean.mjs`: Empties the `./tmp` directory
- `node scripts/instance-to-manifest.mjs`: Converts CurseForge `minecraftinstance.json` to mod list format (rarely used)
- `npm run mods:ui`: Starts a local web UI (`scripts/mod-updates/`) that lists manifest mods, flags available updates, and lets you ignore specific versions or write an update into the manifest. Needs `CURSEFORGE_API_KEY` in the environment or a gitignored `.env`; see `docs/mod-updates-handoff.md`
- `npm run gen:autotest`: Regenerates the in-game test datapack in `tests/autotest/datapack/` from the pack's own recipes, loot tables, tags and stack config. Re-run it after changing any of those. It is not shipped with the pack; see `tests/autotest/README.md` for running it and for refreshing the vanilla tag snapshot when the Minecraft version changes

- `npm run gen:opus-guide`: Syncs `docs/guide/` into the in-game Opus book (`client/overrides/resourcepacks/pannotia-guide/`). Re-run after the docs pipeline changes the guide. Hand-written pages (`index.md`, `02-highlights/`) are left alone. Validate with `java -jar <opus jar> client/overrides/resourcepacks/pannotia-guide`. See `docs/opus-migration.md`

## Project Structure

### Key Directories

- **`client/`**: Contains the modpack client configuration
  - `client/manifest.tpl.json`: Template for the CurseForge manifest file (defines Minecraft/Fabric versions, mod list, pack metadata)
  - `client/overrides/`: Files that override default Minecraft installation
    - `client/overrides/config/`: Mod configuration files (JSON, JSON5, YAML)
    - `client/overrides/datapacks/`: Custom datapacks (zipped during build)
    - `client/overrides/resourcepacks/`: Custom resource packs (zipped during build)
    - `client/overrides/patchouli_books/pannotia/`: Custom Patchouli guidebook for the modpack

- **`server/`**: Server-related configuration files
  - `start.tpl.sh`: Template for server startup script
  - `server.properties`: Server configuration
  - `version.tpl.json`: Server version metadata

- **`scripts/`**: Build automation scripts (Node.js ESM modules)
- **`dist/`**: Build output directory (generated zip files)
- **`tmp/`**: Temporary build directory (cleaned before each build)
- **`docs/`**: Documentation (includes old changelog)

### Manifest File Structure

The `client/manifest.tpl.json` file defines:
- **`minecraft.version`**: Target Minecraft version (currently `26.2`)
- **`minecraft.modLoaders`**: Fabric loader version (currently `fabric-0.19.5`)
- **`version`**: Pack version (currently `18.0.0-alpha.0`)
- **`files`**: Array of active mods with `{name, projectID, fileID, required}`
- **`files_need_alternate`**: Mods requiring alternate download sources
- **`files_waiting`**: Mods not yet updated for current Minecraft version

## Custom Datapacks

The modpack includes numerous custom datapacks in `client/overrides/datapacks/`, including:

- **world-of-pannotia**: Main custom datapack with extensive loot table modifications for all vanilla mobs
- **armor-statues**, **better-item-frames**: Visual enhancements
- **homes**, **spawn**, **back**: Teleportation systems
- **enchantment-plus**: Enchantment modifications
- **track-statistics**, **track-raw-statistics**: Stat tracking
- **vanillatweaks**: Collection of VanillaTweaks datapacks
- **afk-display**, **nether-portal-coords**: HUD/display enhancements

Each datapack is stored as an unzipped directory during development and automatically zipped during the build process (see Pack Zipping below).

## Patchouli Guidebook

> The 18.x pack replaces this with an Opus book (see `docs/opus-migration.md`); the Patchouli book below is the old 13.x one and is no longer loaded.

Located in `client/overrides/patchouli_books/pannotia/`, this custom guidebook provides:
- In-game documentation for the modpack
- Structure: `book.json` + `en_us/{categories,entries,templates}`
- Currently titled "World of Pannotia" with "HIGH TECH Edition" landing text

## Version Management

The project uses a branch-based workflow:
- **Main branch**: `main` (use this for pull requests)
- **Version branches**: `N.x` (e.g. `18.x` for the 18.0.0 development line)
- Version numbers follow `MAJOR.MINOR.PATCH` or `MAJOR.MINOR.PATCH-alpha.N` format

## Changelog Maintenance

The `CHANGELOG.md` file tracks all changes with sections:
- **Notable Changes**: Major updates (e.g., Minecraft version bumps)
- **Added Mods**: New mods included
- **Updated Mods**: Mod updates
- **Removed Mods**: Removed mods (with reason if applicable)
- **Pending Datapacks**: Datapacks waiting for compatibility updates

When updating mods or making changes, ensure `CHANGELOG.md` is updated accordingly.

## Pack Zipping

`scripts/lib/zip.mjs` (using `jszip`) exports:
- `zipSubdirs(root)`: zips each subdirectory of `root` into `<name>.zip` (contents at the archive root) and removes the source directory
- `zipDir(dir, outFile)`: zips the contents of `dir` into a single file (used for the final client zip)

`build-client.mjs` runs `zipSubdirs` on the copies under `./tmp`, so the source directories in the repo are never touched. There is no per-pack list to maintain.

When adding a new datapack or resource pack, just create its directory in `client/overrides/datapacks/` or `client/overrides/resourcepacks/`. To disable one, remove or move its directory (there is no skip list).

## Dependencies

Runtime dependencies (Node.js):
- `fs-extra`: File system operations
- `jszip`: ZIP file manipulation
- `@types/fs-extra`: TypeScript types

The project uses ES modules (`"type": "module"` in package.json).
