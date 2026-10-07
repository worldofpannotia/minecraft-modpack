---
title: Surviving death
icon: item:minecraft:totem_of_undying
tags: [gameplay, death]
summary: Graves, totems and death backups.
---
Dying still stings, but it no longer means a mad dash to recover your gear before it despawns.

## Graves

When you die, your items and experience are packed into a **grave** at the place you died, courtesy of Universal Graves.
You are given a **Grave Compass** that points to it.

* Right-click the grave to open it, or sneak and right-click with an empty hand to pick everything up at once.
* Nobody else can open your grave for 15 minutes. After 30 minutes it breaks and drops its contents.
* `/graves` lists your graves.

You can also craft a decorative **Gravestone**:

```recipe
pattern: ["BBB", "BSB"]
key:
  B: stone_bricks
  S: "#minecraft:signs"
result: universal_graves:visual_grave
```

> [!NOTE]
> These are the mod's default timings. The pack does not change them, but a server operator might.

## Totems of Undying

A totem works from **anywhere in your inventory**, not just your hands, so there is no need to choose between a totem
and a shield. Totems stack to 16.

```item
id: totem_of_undying
count: 16
label: Anywhere in your inventory
```

## Death Backup

As a safety net, the server keeps a copy of your inventory just before you die. Only operators can restore it, so ask an
admin if a grave goes wrong.

## More detail

* [Universal Graves and Death Backup](../04-mods/15-multiplayer-and-server.md#universal-graves)
* [Inventory Totem](../04-mods/08-tools-weapons-and-armor.md#inventory-totem)
