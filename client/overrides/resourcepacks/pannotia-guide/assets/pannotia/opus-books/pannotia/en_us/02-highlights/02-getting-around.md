---
title: Getting around
icon: item:minecraft:compass
tags: [gameplay, travel]
summary: Homes, spawn, back, and portals that go where you want.
---
## Homes, spawn and back

Three datapacks give everyone free teleport commands. They use `/trigger`, so no operator permission is needed.

| Command | What it does |
|:--------|:-------------|
| `/trigger sethome` | Save your current position as home |
| `/trigger home` | Teleport home, even across dimensions |
| `/trigger spawn` | Teleport to the world spawn |
| `/trigger back` | Return to where you were before your last teleport |

Each player gets **one** home by default. Run `/trigger homes` to list yours. `/trigger back` toggles between two
places if you keep using it.

> [!WARNING] Unloaded areas
> You cannot teleport to somewhere that is not loaded. You may be able to go *home* but not always *back*.

Details: [Homes](../05-datapacks/homes.md), [Spawn](../05-datapacks/spawn.md), [Back](../05-datapacks/back.md).

## Portals

* **Crying obsidian** works for nether portal frames, and the two kinds can be mixed.
* **Smaller Nether Portals** lets frames be smaller than vanilla (the mod's own page has the exact rules).
* **Better Portal Linking** lets you choose which portals connect. Put the same coloured concrete block on the four
  diagonal corners of an Overworld portal frame and a Nether portal frame, and those two portals link to each other.
  Portals without matching corners link like vanilla.

```item
id: light_blue_concrete
label: Matching corner blocks
```

More: [Nether portal mods](../04-mods/14-transport-and-movement.md#nether-portals).

## On the move

Use **Crawl** (bind the key in Controls; it has no default) to fit through gaps, and **AutoRun** to keep walking
(default **V**). See [Transport and movement](../04-mods/14-transport-and-movement.md).
