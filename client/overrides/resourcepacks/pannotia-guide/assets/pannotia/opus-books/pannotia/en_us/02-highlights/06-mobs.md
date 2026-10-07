---
title: Mobs
icon: item:minecraft:zombie_head
tags: [gameplay, mobs]
summary: Heads, silence, spawner torches, name tags.
---
## Mob heads

Nearly every mob can drop its head when a **player** kills it, and Looting raises the chance. Some are guaranteed: the
Wither, the Warden, the Elder Guardian, a charged creeper and more. Heads play the mob's sound when placed on a note block.

```item
id: creeper_head
label: Not just a decoration
```

Mini blocks work the other way round: put a full block in a stonecutter and take **8 mini blocks** of it, which are
small player-head decorations.

## Silence a noisy mob

Rename a name tag in an anvil to `Silence me` and use it on a mob within a few blocks. It makes no more sounds. Use a tag
named `Unsilence me` to undo it. The mob ends up unnamed.

## Shut down a spawner

Place **five torches** around a monster spawner to switch it off without breaking it. Or take it with you: a **Silk Touch** pickaxe now picks up spawners, and they keep their mob.

```item
id: spawner
```

## Name tags without the anvil

A name tag opens an edit screen when you use it, with no XP and no anvil. Colours and formatting codes are allowed.

## More detail

* [Mobs and creatures](../04-mods/09-mobs-and-creatures.md)
* [Silkier Touch](../04-mods/08-tools-weapons-and-armor.md#silkier-touch)
* [Silence Mobs](../05-datapacks/silence-mobs.md)
* [World of Pannotia datapack](../05-datapacks/world-of-pannotia.md)
