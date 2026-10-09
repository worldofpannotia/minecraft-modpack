---
title: Surviving death
icon: item:minecraft:totem_of_undying
tags: [gameplay, death]
summary: Death chests, totems and death backups.
---
Dying still stings, but it no longer means a mad dash to recover your gear before it despawns.

## Death chests

When you die, your items are packed into a **chest** at the place you died, courtesy of Your Items Are Safe.
A **sign** on the chest shows your name, and an **armor stand** above it wears your gear with your head on top, so you can tell whose it is.

* Your death coordinates are sent to you in chat.
* If your inventory does not fit in one chest, a second one is stacked on top.
* If you die in the void, the chest appears just above the bottom of the world, on a small platform.
* If you were wearing a helmet, it is in the chest, because your head is on the armor stand.

> [!NOTE]
> The pack turns off the mod's material cost, so you get a chest even if you are carrying no wood. The chest is an ordinary chest and is not locked to you.

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
admin if a chest goes missing.

## More detail

* [Your Items Are Safe and Death Backup](../04-mods/15-multiplayer-and-server.md#your-items-are-safe)
* [Inventory Totem](../04-mods/08-tools-weapons-and-armor.md#inventory-totem)
