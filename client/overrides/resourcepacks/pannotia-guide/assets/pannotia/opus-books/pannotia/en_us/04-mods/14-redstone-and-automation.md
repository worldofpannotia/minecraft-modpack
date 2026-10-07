---
icon: item:minecraft:hopper
---
# Redstone & Automation

The pack's redstone content is mostly about item movement. **Hopper X-Treme** replaces the single vanilla hopper with a family of faster, filtering and directional hoppers, **Dispenser Configurator** lets dispensers use many more items, and **Houdini Block** lets you place or break blocks without neighbour updates. Several other mods in the pack have redstone-relevant features, listed at the end.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Dispenser Configurator | Data-driven dispenser behaviors for many more items | Server |
| Hopper X-Treme | Speed-tier hoppers, multi-hoppers, huppers, glazed (dropper-like) hoppers and item filters | Both |
| Houdini Block | Block that places or breaks blocks without sending block updates | Both |

## Item movement

### Hopper X-Treme
The pack author's mod. It leaves the vanilla hopper unchanged and uses it as the base for upgrades. Creative tabs: Hoppers, Multi-Hoppers, Huppers, Multi-Huppers. The mod includes an in-game guide book (Patchouli; Patchouli is not currently in the pack, so it is unavailable).

| Block | How to obtain | Notes |
|---|---|---|
| Honeyed Hopper | Hopper + honeycomb (shapeless) | 20-tick cooldown; slow, for clocks. |
| Copper Hopper | Hopper + copper ingot | 8 ticks (vanilla speed) but ignores redstone locking. |
| Golden Hopper | Hopper + gold ingot | 4 ticks (2x vanilla). |
| Diamond Hopper | Golden Hopper + diamond | 2 ticks (4x). |
| Netherite Hopper | Smithing: netherite upgrade template + Diamond Hopper + netherite ingot | 1 tick (8x). |
| Nether Star Hopper | Netherite Hopper + nether star | 1 tick, up to 16 items per transfer; fastest. |
| Multi-Hoppers (plain, golden, diamond, netherite, nether star) | 4 hoppers of the tier (shapeless); golden/diamond also from the previous multi-hopper + 4 gold ingots/diamonds; craft back into 4 hoppers | Output to more than one side. |
| Huppers and Multi-Huppers (all tiers incl. honeyed, copper) | Craft the matching hopper alone (shapeless); reversible | Push items upward for item elevators. |
| Glazed variants (Glazed, Honey Glazed, Golden/Diamond/Netherite/Nether Star, plus glazed multi-hoppers) | Hopper + gray glazed terracotta (shapeless), or upgrade a glazed hopper with the tier material; shaped: iron ingots, chest, gray glazed terracotta (`IGI` / `ICI` / ` I `) | Hold no items; eject them in the facing direction like a dropper. |
| Hopper Item Filter | `#W#` / `#C#` / `###`: sticks, cobweb (W), iron chain (C) | Include or Exclude mode, up to 5 entries. |
| Diamond Hopper Item Filter | Hopper Item Filter + diamond | Up to 10 entries. |
| Hopper X-Treme guide | Book + hopper (shapeless) | Patchouli guidebook (currently unavailable). |
| Filtered hoppers (deprecated) | Do not craft | Auto-convert to filter-capable equivalents when placed. |

**Filtering:** upgraded hoppers accept a filter item; include mode passes only listed items, exclude mode blocks listed items. How filters are inserted is unverified.

Hopper X-Treme has no wrench of its own in this pack: it skips registering one when Minekea is installed. Use the Minekea wrench instead (see [Building & Decoration](04-building-and-decoration.md)).

### Dispenser Configurator
Data-driven. Datapacks define a `dispenser_configurator` listing items or tags and targets (five item-use methods) that control how dispensers use them. A bundled "Default Dispenser Configurators" datapack gives several items dispenser behaviors; disable it with `/datapack disable`. The exact list of default items is not documented here. Known issue: the ITEM_USE target does not work for every item.

## Block update control

### Houdini Block
Craft with `DED` / `N#N` / `DED` (D = diamond, E = eye of ender, N = nether star, # = stick). Places or breaks blocks without notifying neighbours. Four modes: Prevent on break, Prevent on place, Prevent all, Replace block (shown in the tooltip). Useful for redstone contraptions and clean building. How to switch modes is unverified.

## Also relevant

- **Carpet** (technical): many toggleable rules and commands (tick control, loggers, hopper counters, fake players, Scarpet scripting). Most rules are off by default.
- **Double Doors**: matching double doors open and close together with one click, button or pressure plate; connected door blocks are opened recursively and villagers can use double doors.
- **Minekea** (see [Building & Decoration](04-building-and-decoration.md)): trapped crates emit a redstone signal when opened; display cases give a comparator signal based on rotation; compressed dye blocks cannot be used in redstone contraptions; jars work with hoppers.
- **Sponj** (see [Building & Decoration](04-building-and-decoration.md)): connected sponjes clear large areas of water or lava, useful for farm and contraption builds.
- **Hopper X-Treme** is also relevant to [Storage & Inventory](03-storage-and-inventory.md).
