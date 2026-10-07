---
icon: item:minecraft:enchanting_table
---
# Enchanting & Magic

This part of the pack reshapes how enchanting works. Enchantments combine freely, can land on more kinds of gear, and are cheap to apply at any level. Anvils and grindstones become tools for moving, stripping and re-applying enchantments instead of one-way traps. A few small mods let you spend your own experience directly, and one adds a new enchantment for happy ghasts.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Better Than Mending | Sneak + right-click a Mending item to repair it with your own XP | Both |
| Bottle Your Xp | Sneak + right-click an empty bottle to make a Bottle o' Enchanting | Server |
| Easy Anvils | Anvils keep their contents, cost less, rename for free, and can be repaired | Both |
| Enchanting Commands | `/ec` command to enchant the held item beyond normal limits | Server |
| Grind Enchantments | Grindstone can strip enchantments onto a book or move them between books | Both |
| Infinity Water Bucket | Infinity on buckets gives an endless water source (or liquid void) | Both |
| Remove Enchantment Incompatibility | Removes all "can't combine with" rules | Server |
| Swift Flight | New enchantment that speeds up happy ghast harnesses | Server |
| Tax Free Levels | Flat XP costs at the anvil and enchanting table; no "Too Expensive!" | Both |
| Universal Enchants | Lets enchantments apply to many more item types | Both |

## How enchanting works in this pack

Several mods stack on top of each other, so it helps to see the whole flow.

1. **Getting enchantments.** Use the vanilla enchanting table, loot, and trades as normal. Universal Enchants widens what each enchantment can go on (see below). **Enchantment Descriptions** shows a short explanation of each enchantment on book tooltips, and **Enchantment Numbers Fix** shows levels above 10 as Roman numerals (for example Sharpness XV).
2. **Combining.** Remove Enchantment Incompatibility lifts every exclusivity rule, so you can put Sharpness, Smite and Bane of Arthropods together, all Protection types together, Infinity with Mending, Silk Touch with Fortune, and so on. Two limits remain: no duplicate copies of the same enchantment on one item, and each enchantment must still be valid for the item type (which Universal Enchants relaxes).
3. **Paying for it.** Tax Free Levels flattens costs. An anvil cost of X levels is paid as the XP needed to go from level 0 to X, not from your current level, so doing it at level 50 costs the same XP as at level 10. An enchanting table requirement of 30 costs the XP from level 27 to 30 instead of 3 levels. The anvil's "Too Expensive!" limit is removed, and renaming costs 1 level. Easy Anvils additionally lowers prior-work penalties, makes enchanted book application cheaper, and makes renaming free (see the note below on how the two interact).
4. **Undoing and moving.** Grind Enchantments turns the grindstone into a disenchanting and book-splitting station. Combined with the cheap anvil, you can strip a good piece of gear, rebook it, and re-apply it elsewhere.
5. **Maintaining.** Better Than Mending repairs Mending gear straight from your XP, and Bottle Your Xp lets you store XP in bottles.


## Anvils and grindstones

### Easy Anvils
Overhauls the anvil. Items stay in the anvil when you close the interface and are shown on top of the block, and anvils are less likely to be damaged or break.
- **How it works:** Reduced prior-work penalty, cheaper enchanted-book application, fewer "too expensive" cases, and free renaming. Formatting codes are allowed in item names. A damaged anvil can be restored with iron blocks.
- **Controls:** Right-click an anvil, place items, close it; they remain.
- **Pack note:** Needed on both client and server. For ingot-based anvil repair and obsidian damaging, see **Anvil Restoration** under Also relevant.

### Tax Free Levels
Flattens anvil and enchanting-table costs so they do not rise with your level.
- **How it works:** See the flow above. "Level Base" (the level at which flattening starts; 0 removes all tax, 30 keeps early-game costs) and "Remove Anvil Limit" are configurable. Default Level Base is not documented here (unverified).
- **Vanilla changes:** No "Too Expensive!" limit; renaming costs 1 level; enchanting table level costs are charged as XP points.
- **Pack note:** Requires Cloth Config API. Grind Enchantments supports Tax Free Levels.

### Grind Enchantments
Adds two grindstone operations, both costing experience levels, which the pack enables.
- **Disenchant to book:** Put an enchanted item and a plain book in the grindstone. You get an enchanted book carrying the item's enchantments; the item comes back unenchanted. In the pack config the item is not consumed and all enchantments are taken.
- **Move between books:** Enchanted book in the top slot, another book (empty or enchanted) in the bottom slot; the first enchantment of the top book moves to the other book. Useful for splitting books with mixed enchantments.
- **Cost:** Shown in the grindstone UI. Disenchant cost is derived from enchantment power (offset 8, factor 0.3); moving cost scales with level, with treasure enchantments weighted more. Exact numbers should be verified in-game (unverified).
- **Pack note:** No item or enchantment restrictions, and curses are allowed (so you can remove or move them). The "reset repair cost" feature (diamond catalyst) is disabled.

## Rules of enchantment compatibility

### Remove Enchantment Incompatibility
Removes all enchantment exclusivity at the enchanting table and anvil, including modded enchantments. No config.
- **Lifted:** Protection types together, Sharpness/Smite/Bane of Arthropods, Infinity with Mending, Silk Touch with Fortune, Depth Strider with Frost Walker, Multishot with Piercing, Riptide with Loyalty/Channeling.
- **Still enforced:** one copy of each enchantment, and valid item types.

### Universal Enchants
Lets many vanilla enchantments apply to more items.
- **New targets:** Bows can get Multishot, Piercing, Quick Charge and Looting. Crossbows can get Power, Punch, Infinity, Flame and Looting. Tridents and maces can get Looting, Knockback, Sharpness, Smite, Bane of Arthropods, Impaling, Breach and more. Axes, shields and other gear take enchantments normally limited to other items. Horse, wolf and nautilus armor can take armor enchantments such as Protection, Feather Falling, Frost Walker, Soul Speed and Thorns.
- **Relaxed exclusivity:** Infinity + Mending and Multishot + Piercing are compatible. The pack's config also turns on the optional bundled datapacks that let Sharpness combine with Smite/Bane/Impaling/Breach, all Protection types combine, bow, crossbow and mace enchantments combine, and that widen which weapons, shields, animal armor and ranged weapons take enchantments. (These datapacks are added when a world is created.)
- **Improved enchantments:** Infinity no longer requires a spare arrow; Looting and Fortune give extra experience; Feather Falling prevents farmland trampling; Multishot benefits from removed projectile invulnerability.
- **Vanilla changes:** Overrides the Channeling, Frost Walker and Power definitions (Power: +0.5 damage base, +0.5 per level above the first, max level 5).
- **Pack note:** Requires Puzzles Lib. The pack's config enables all the optional stacking and extra-target datapacks listed above.


### Enchanting Commands
Adds `/ec <enchantment> <level>` for operators to enchant the item in your main hand at levels beyond the normal limit, including modded enchantments and non-tool items. Intended for admin use rather than survival.
- **Controls:** `/ec <enchantment> <level>`; Tab auto-completes names. The command name is configurable (`enchantCommandString`, default `ec`). Requires permission to run commands (assumed operator) (unverified).
- **Pack note:** Levels above 10 display as Roman numerals thanks to Enchantment Numbers Fix.

## Spending XP directly

### Better Than Mending
Sneak and right-click while holding an item with Mending to repair it using experience you already have, instead of waiting for orbs.
- **Controls:** Sneak (default Shift) + right-click while holding a damaged Mending tool or armor piece.
- **Notes:** XP cost per durability point is not documented. Required on the server; client optional.

### Bottle Your Xp
Sneak and right-click with an empty glass bottle to turn your own experience into a vanilla Bottle o' Enchanting.
- **Default config:** Costs 10 raw XP per bottle (`rawXpConsumedOnCreation`, range 0-100) and hurts you 1 half-heart (`damageOnCreation`, `halfHeartDamageAmount`). The pack does not override these.

## Special enchantments

### Infinity Water Bucket
Lets Infinity be applied to water buckets and empty buckets at an anvil.
- **New:** Infinity on buckets — combine a bucket or water bucket with an Infinity book in an anvil. An infinite water bucket never runs out; an enchanted empty bucket acts as an infinite liquid void. Also works with dispensers and cauldrons. Enchanted empty buckets cannot milk cows or pick up fish/axolotls.
- **Config:** Can extend to lava, milk and powdered snow buckets; the pack does not change these (assumed off) (unverified).
- **Pack note:** Per the pack's stack-size config, empty buckets stack to 64 and water, lava, milk and powder snow buckets stack to 16.

### Swift Flight
New enchantment for happy ghast harnesses.
- **New:** Swift Flight — about 8% chance in End City chests. Levels I-III give 40%, 60% and 80% faster flight.
- **How to use:** Find the book in an End City and apply it to a harness at an anvil.

## Also relevant
- **Enchantment Descriptions** (client; see [Interface & HUD](02-interface-and-hud.md)) adds a short explanation of each enchantment to enchanted book tooltips. Requires the Prickle library.
- **Enchantment Numbers Fix** (client; see [Interface & HUD](02-interface-and-hud.md)) shows levels above 10 as Roman numerals.
- **SB's Enchantment Effects** (client; see [Cosmetic, Visual & Audio](16-cosmetic-visual-and-audio.md)) adds particles and sounds: Sharpness magic slash, Smite holy beam, Bane of Arthropods banish effect, Fire Aspect rings of fire, Knockback gusts of wind, Thorns guardian-style shield. Bow, trident and mace effects are planned.
- **Shulker Stuff** (see [Storage & Inventory](03-storage-and-inventory.md)) adds Refill (I), Vacuum (II) and Void (I) enchantments for shulker boxes.
- **Archaeology Tweaks** (see [World Generation & Exploration](11-world-generation-and-exploration.md)) adds the Gentle Touch enchantment, which can give a second drop from a block (exact effect and source unverified).
- **Pack Configuration Overrides** (see [Quality of Life](01-quality-of-life.md)) holds the Grind Enchantments settings described above; enchanted books also stack to 64.
