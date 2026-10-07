---
icon: item:minecraft:map
---
# World Generation & Exploration

These mods change how the world is generated and help you find your way through it. Archaeology Tweaks, Flat Bedrock and Crying Portals alter world content and rules, while WITS and the compasses tell you what is around you.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Archaeology Tweaks | More brushable suspicious blocks, a new enchantment and a sherd trade | Both |
| Crying Portals | Crying obsidian works in Nether portal frames | Server |
| Flat Bedrock | Replaces jagged bedrock with a flat layer | Server |
| WITS (What Is This Structure?) | `/wits` lists structures at your position | Both |

## Changes to the world
### Flat Bedrock
Replaces vanilla's jagged multi-layer bedrock with a flat layer: by default 1 block at the bottom of the world and a flat roof in the Nether. Only newly generated chunks are affected, so terrain you have already explored keeps vanilla bedrock. The Overworld and Nether floors collapse to a flat layer (default thickness 1), the Nether roof can be flat or removed, and bedrock can be swapped for another block per dimension. The End is unchanged. The pack author's own mod.

### Crying Portals
Nether portal frames can be built from crying obsidian as well as regular obsidian, and the two can be mixed in one frame. Build a standard frame and light it as usual.

### Archaeology Tweaks
Extends vanilla archaeology beyond suspicious sand and gravel. By the pack author. Carry a brush and look for suspicious blocks in rivers, beaches, mud areas and the Nether.
- **New:**

| Item | How to obtain | Notes |
|---|---|---|
| Suspicious Clay, Dirt, Mud, Packed Mud, Red Sand, Rooted Dirt, Soul Sand, Soul Soil | Found as small rare deposits (clay near rivers and beaches, soul sand in Soul Sand Valley); not crafted | Brush like vanilla suspicious sand; sand-like variants fall as gravity blocks. Loot is table-driven and datapack-customizable |
| Gentle Touch (enchantment) | Not stated; check enchanting and villager trades | Can give a second drop from a block (the "Lucky Block" advancement). Exact effect unverified |

- **How it works:** Hold right-click with a brush on a suspicious block. Five advancements: Dig a little deeper (root), First Dig, Preservationist (collect every pottery sherd), Interdimensional Archaeology (brush a suspicious block in the Nether) and Lucky Block.
- **Vanilla changes:** Wandering traders have a 20% chance of offering a random pottery sherd for 8 emeralds and a brick.

## Finding things
### WITS (What Is This Structure?)
Adds `/wits`, which prints the registry names of all structures at the spot where you stand. Installed on a server, it works for vanilla clients too. It only detects structures (anything `/locate` can find); features such as monster-room dungeons and desert wells cannot be detected.
- **Controls:** `/wits` lists structures at your position; `/witsop [dimension] [coordinates]` (operators only) queries any location.

## Also relevant
- **Explorer's Compass** (see [Maps & Navigation](12-maps-and-navigation.md)): craft with cobweb in the corners, cracked stone bricks on the edges and a compass in the centre. Right-click to choose a structure type; it points to the nearest one. Shift-right-click resets it.
- **Nature's Compass** (see [Maps & Navigation](12-maps-and-navigation.md)): the biome equivalent. Craft with a compass in the centre, logs on the edges and saplings on the corners. Right-click to pick a biome; shift-right-click resets.
- **Ore Height Indicator** (see [Interface & HUD](02-interface-and-hud.md)): a HUD overlay ranking ores by how suitable your current height is. The percentage is not an absolute spawn chance.
- **Deepslate Instamine** (see [Tools, Weapons & Armor](08-tools-weapons-and-armor.md)): lava next to water produces deepslate and calcite below Y=11; netherite tools with Efficiency V and Haste II instamine deepslate, cobblestone, end stone and logs.
- **Random Village Names** (see [Villagers & Trading](06-villagers-and-trading.md)): each village gets a random name on a sign at its centre, shown through the Areas mod when you enter. Edit the sign to rename, or replace it with an empty sign to remove it. `/areas` lists nearby area signs. Probably only applies to newly generated villages (unverified).
- **Lootr** (see [Loot & Drops](10-loot-and-drops.md)): per-player structure loot containers.
- **The Athenaeum** (see [Loot & Drops](10-loot-and-drops.md)): storybooks in stronghold library and woodland mansion chests.
