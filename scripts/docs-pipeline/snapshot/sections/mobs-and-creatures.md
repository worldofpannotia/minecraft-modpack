# Mobs & Creatures

This part of the pack covers how mobs spawn, behave and follow you around, plus two mods that let you become a mob. Most entries are small server-side tweaks (spawner torches, piglins that stay piglins, pets that teleport with you), while **Woodwalkers**, **ReMorphed** and **Camel Nostrils** add new things to do.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Better Spawner Control | Five torches around a spawner switch it off | Server |
| Camel Nostrils | Pull-off camel snouts, zombie fish, golden foods, upside-down beds, chests, crafting tables and anvils | Both |
| Conduits Prevent Drowned | No drowned spawns near a player with Conduit Power | Server |
| Followers Teleport Too | Standing tamed pets teleport with you on command teleports | Server |
| Mooshroom Tweaks | Brown mooshrooms spawn naturally as well as red | Server |
| Overworld Piglins | Piglins and hoglins no longer zombify in the Overworld | Server |
| ReMorphed | Kill a mob to unlock its form, then morph from a menu | Both |
| Superflat World No Slimes | No slimes in superflat worlds | Server |
| Woodwalkers | Scan a mob to unlock a second shape and transform into it | Both |
| Zombie Villagers From Spawner | Zombie spawners can spawn zombie villagers again | Server |

## Becoming a mob
**Woodwalkers** and **ReMorphed** both let you turn into mobs, and both are built on the Walkers library (the jar is "Walkers" 8.3.2) and CraftedCore. They differ in how you unlock forms:

- Woodwalkers gives you **one** second shape, unlocked by scanning a mob.
- ReMorphed keeps a **collection** of forms, unlocked by killing mobs, and you pick from a menu. While it is installed, Walkers' own unlock method is disabled.

Both use G to transform by default, so you will probably use only one of the two day to day.

### Woodwalkers
Scan a mob to take its shape, then switch between your normal form and that shape with a key press. You take on the mob's size, hearts and abilities, and your nametag stops rendering.
- **How it works:** Look directly at a mob and hold the unlock key for 100 ticks (5 seconds). A "You feel it tingle" message appears and that mob type becomes your second shape. The config option `unlockOveridesCurrentShape` allows replacing it later. Per the author the choice is meant to be permanent unless an op command or config option resets it, for example after death (unverified in game). Most mobs give abilities (for example walking over lava as a strider, flying as a bat). There is also a variants menu: scroll to cycle variants and confirm with a key.
- **Controls:** U (default) unlock/scan a mob; G (default) transform. Separate shape-ability, scan and variants-menu keys also exist; check Options > Controls.
- **Pack note:** The default U key conflicts with the Xaero's Minimap waypoint-list key; rebind one of them. Requires CraftedCore.
<!-- maintainer: Permanence of the choice not verified in game. Walkers jar ships 20+38 shape datapack entries. -->

### ReMorphed
Kill a mob to unlock its form, then transform into it from a menu. Each form has its own model, traits (such as swimming faster as a fish) and sometimes an ability.
- **How it works:** Killing a mob saves it to your collection. To keep things balanced, an unlocked mob "vanishes" after you morph into it 5 times per kill, so repeated morphing needs more kills. Each form has passive traits (symbols shown in the menu) and some have an active ability with a cooldown indicator in the bottom-right. Open the variants menu to pick a mob variant: scroll the mouse wheel to cycle and press the key again to confirm. Morphing into other players needs the separate SkinShifter mod (not confirmed in the pack).
- **Controls:** ^ (default) open the morph menu; G transform into the selected morph; R use the morph ability. A help screen is available (the `remorphed.help` keybind).
- **Getting started:** Kill a mob, press ^, select the form and press G.
<!-- maintainer: Keybinds are from the mod description and help text; confirm in game. No pack config override. -->

## Spawners and hostile mob spawning
Three server-side mods change how hostile mobs spawn.

### Better Spawner Control
A spawner with 5 torches around it is disabled and spawns nothing. All torch types count. It is a quick way to shut down a monster spawner (blaze spawners in particular) without breaking it. Place 5 torches around the spawner to switch it off.
<!-- maintainer: Exactly which 5 positions is not specified by the source; verify in game. -->

### Zombie Villagers From Spawner
Spawners set to zombie can also spawn the zombie villager variant, a behavior vanilla removed in 1.11.
<!-- maintainer: Spawn chance/config not extracted; requires Collective. -->

### Conduits Prevent Drowned
Drowned do not spawn around a player who has an active conduit effect. The range config `preventDrownedInRange` defaults to 400 (also the maximum), which blocks all drowned spawns for that player. Activate a conduit near your underwater base.

### Superflat World No Slimes
Slimes no longer spawn in superflat worlds.
<!-- maintainer: Only matters for superflat world types; likely no effect in the standard pack world. -->

## Existing mobs and pets
### Followers Teleport Too
When you are teleported by a command, tamed pets that are standing (not sitting) near you are teleported to the same destination. Sitting pets stay put. By default pets take no damage for 20 seconds after arriving (config `disableFollowerDamageAfterTeleport` and `durationInSecondsDamageShouldBeDisabled`), which protects them from fall or suffocation damage at an imprecise landing spot. Vanilla leaves pets behind. Unsit your pets before using a teleport command such as the pack's homes, spawn or back datapacks.
<!-- maintainer: Only triggers on command-based teleports. Verify whether the homes/spawn/back datapacks use /tp (and so trigger this). -->

### Mooshroom Tweaks
Naturally spawned mooshrooms in mushroom fields can be brown as well as red. The config `becomeBrownChance` (default 0.5) is the chance that a red mooshroom becomes brown.
<!-- maintainer: No pack config override found, so the default 0.5 should apply. -->

### Overworld Piglins
Piglins, Piglin Brutes and Hoglins no longer shake and convert to zombified versions in the Overworld. They only convert if affected by Weakness. Useful for bringing piglins home or trading in the Overworld.

## Silly extras
### Camel Nostrils
A deliberately absurd mod by the pack author, with ideas from non-player spouses. It adds 10 advancements (for example Pull Snout, Fish Out of Water, Nap Time).
- **New:**

| Item | How to obtain | Notes |
|---|---|---|
| Golden Wheat Seeds | Craft 8 wheat seeds around 1 gold ingot (yields 8) | Feed to a chicken for a chance at a Golden Egg; feed to a baby chicken to grow it instantly |
| Golden Egg | Chance from a chicken fed Golden Wheat Seeds | Food equal to a golden carrot |
| Golden Cactus | Craft 8 cactus around 1 gold ingot (yields 8) | Grows like a cactus. Feed to a camel to regrow a pulled-off snout, or to a baby camel to grow it up instantly |
| Camel snout | Small chance to drop when a leashed adult camel lags too far behind and has its snout ripped off | Not possible on baby camels |
| Zombie Cod / Salmon / Tropical Fish | A leashed fish that dies out of water | Hostile, 1 heart, sunlight-immune, poisonous tail-slap bite; moves toward you with the leash attached |
| Livna (upside-down anvil) | Craft: 3 iron ingots on the top row, 1 iron ingot in the middle, 3 iron blocks on the bottom row | Falls upward, damaging things above; wears to Chipped then Damaged Livna like an anvil |
| Upside-Down Bed (16 colors) | Craft: row of 3 planks on top, row of 3 same-color wool below | Hangs from the ceiling; sleeping in one turns day to night. White uses any wool |
| Upside-Down Chest | Craft a chest alone (shapeless) | Works as a chest; craft it alone to get a normal chest back |
| Upside-Down Crafting Table | Craft a crafting table alone (shapeless) | Works as a crafting table; reversible the same way |

- **How it works:** Leads can be attached to fish (they still need water).
- **Pack note:** Adds shapeless recipes converting upside-down chests and crafting tables back to normal ones.
<!-- maintainer: Author's own mod. Verify bed/day-night behavior in game. -->

## Also relevant
- **Silence Mobs** datapack (see [Quality of Life](quality-of-life.md), [pack page](../datapacks/silence-mobs.md)): rename a name tag in an anvil to "Silence me" (also "silence me", "Silence Me", "silence_me") and use it on a mob; the nearest mob with that name within 16 blocks becomes Silent. "Unsilence me" reverses it. The name is removed after about 3 seconds, so the mob ends up unnamed.
- **Name Tag Upgrade** (see [Quality of Life](quality-of-life.md)): using a name tag opens an edit screen with no anvil or XP, with formatting codes. Same-name tags are not consumed, shears remove a name and return the tag, renaming returns the old tag, and named mobs can drop their tag on death.
- **Horse Expert** (see [Farming, Food & Animals](farming-food-and-animals.md)): craft a Monocle (gold nuggets in a plus around a glass pane) and look at a tamed horse, donkey, mule or llama to see health, speed, jump height and storage slots.
- **Bottled Air** (see [Quality of Life](quality-of-life.md)): right-click an empty bottle underwater to restore half the air bar; creates a water bottle that cannot be drunk underwater by default.
- **Effective Gear** (see [Tools, Weapons & Armor](tools-weapons-and-armor.md#effective-gear)): full sets of trimmed armor calm piglins (gold), iron golems (iron), endermen (ender pearl), creakings (resin) and more.
- **Artificial Heart** (see [Building & Decoration](building-and-decoration.md)): decorative creaking hearts and eyeblossoms, pale pumpkins (a carved one worn as a helmet stops creakings noticing you) and a friendly Creaking Golem.
