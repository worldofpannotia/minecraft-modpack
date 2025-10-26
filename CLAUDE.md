# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

World of Pannotia is a Fabric-based Minecraft modpack currently in development for Minecraft 1.21.10 (version 17.0.0-alpha.0). The project packages a curated collection of mods, custom datapacks, resource packs, and a Patchouli guidebook into a distributable modpack format compatible with CurseForge.

## Build System & Commands

### Build the Client Modpack

```bash
node scripts/build-client.mjs
```

This is the primary build command that:
1. Cleans and prepares the `./tmp` directory
2. Copies the client configuration to `./tmp/client`
3. Zips all datapacks in `client/overrides/config/paxi/datapacks/` using `zip.sh`
4. Zips all resource packs in `client/overrides/config/paxi/resourcepacks/` using `zip.sh`
5. Renames `manifest.tpl.json` to `manifest.json`
6. Creates a zip file named `world-of-pannotia--{minecraft-version}-{pack-version}.zip` in the `./dist` directory

**Build flags:**
- `node scripts/build-client.mjs -f`: Force overwrite existing dist zip file
- `node scripts/build-client.mjs -d`: Build dev version (appends `--dev` to filename and changes manifest name)

### Other Scripts

- `node scripts/clean.mjs`: Empties the `./tmp` directory
- `node scripts/instance-to-manifest.mjs`: Converts CurseForge `minecraftinstance.json` to mod list format (rarely used)

## Project Structure

### Key Directories

- **`client/`**: Contains the modpack client configuration
  - `client/manifest.tpl.json`: Template for the CurseForge manifest file (defines Minecraft/Fabric versions, mod list, pack metadata)
  - `client/overrides/`: Files that override default Minecraft installation
    - `client/overrides/config/`: Mod configuration files (JSON, JSON5, YAML)
    - `client/overrides/config/paxi/datapacks/`: Custom datapacks (zipped during build)
    - `client/overrides/config/paxi/resourcepacks/`: Custom resource packs (zipped during build)
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
- **`minecraft.version`**: Target Minecraft version (currently `1.21.10`)
- **`minecraft.modLoaders`**: Fabric loader version (currently `fabric-0.17.3`)
- **`version`**: Pack version (currently `17.0.0-alpha.0`)
- **`files`**: Array of active mods with `{name, projectID, fileID, required}`
- **`files_need_alternate`**: Mods requiring alternate download sources
- **`files_waiting`**: Mods not yet updated for current Minecraft version

## Custom Datapacks

The modpack includes numerous custom datapacks in `client/overrides/config/paxi/datapacks/`, including:

- **world-of-pannotia**: Main custom datapack with extensive loot table modifications for all vanilla mobs
- **armor-statues**, **better-item-frames**: Visual enhancements
- **homes**, **spawn**, **back**: Teleportation systems
- **enchantment-plus**: Enchantment modifications
- **track-statistics**, **track-raw-statistics**: Stat tracking
- **vanillatweaks**: Collection of VanillaTweaks datapacks
- **silk-touch-budding-amethyst**, **thunder-shrine**: Gameplay tweaks
- **afk-display**, **nether-portal-coords**: HUD/display enhancements

Each datapack is stored as an unzipped directory during development and automatically zipped during the build process via `client/overrides/config/paxi/datapacks/zip.sh`.

## Patchouli Guidebook

Located in `client/overrides/patchouli_books/pannotia/`, this custom guidebook provides:
- In-game documentation for the modpack
- Structure: `book.json` + `en_us/{categories,entries,templates}`
- Currently titled "World of Pannotia" with "HIGH TECH Edition" landing text

## Version Management

The project uses a branch-based workflow:
- **Main branch**: `main` (use this for pull requests)
- **Current branch**: `17.x` (version 17.x development)
- Version numbers follow `MAJOR.MINOR.PATCH` or `MAJOR.MINOR.PATCH-alpha.N` format

## Changelog Maintenance

The `CHANGELOG.md` file tracks all changes with sections:
- **Notable Changes**: Major updates (e.g., Minecraft version bumps)
- **Added Mods**: New mods included
- **Updated Mods**: Mod updates
- **Removed Mods**: Removed mods (with reason if applicable)
- **Pending Datapacks**: Datapacks waiting for compatibility updates

When updating mods or making changes, ensure `CHANGELOG.md` is updated accordingly.

## Datapack Zip Script

The `client/overrides/config/paxi/datapacks/zip.sh` script:
1. Zips each datapack directory individually using 7z
2. Removes the source directories after zipping
3. Commented-out datapacks (e.g., `bacap-torture-edition`) are temporarily disabled

When adding a new datapack:
1. Create the directory in `client/overrides/config/paxi/datapacks/`
2. Add corresponding zip and rm commands to `zip.sh`

## Dependencies

Runtime dependencies (Node.js):
- `fs-extra`: File system operations
- `jszip`: ZIP file manipulation
- `@types/fs-extra`: TypeScript types

The project uses ES modules (`"type": "module"` in package.json).
