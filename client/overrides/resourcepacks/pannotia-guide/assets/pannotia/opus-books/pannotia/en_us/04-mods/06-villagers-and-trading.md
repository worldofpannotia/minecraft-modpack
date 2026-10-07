---
icon: item:minecraft:emerald
---
# Villagers & Trading

This category covers everything that changes how villagers and traders behave: moving and curing villagers, rerolling trades, new professions that sell decorative blocks, player-run shops, and quality-of-life messages about villagers and wandering traders. Most pieces are small and independent; **Miniblock Merchants** and **Universal Shops** are the two that add new things to buy and sell.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Miniblock Merchants | 26 new villager professions selling miniblocks; convert villagers with rare items | Both |
| Random Village Names | Each village gets a random name on a sign, shown by Areas | Both |
| Trade Cycling | Button/key to re-roll a villager's offers before trading | Both |
| Universal Shops | Trade Shop block turns a container into a player shop | Server |
| Villager Death Messages | Chat message when a villager dies | Server |
| VillagerTweaks | Carry villagers in a Bundle; zombie cure and reputation rules | Both |

## Managing villagers
**VillagerTweaks** is the pack author's villager QoL mod. **Trade Cycling** helps you get the trades you want, and **Villager Death Messages** tells you when something goes wrong. The **Villager Workstation Highlights** datapack (see "Also relevant") helps diagnose trading halls.

### VillagerTweaks
- **New:** Bagged Villager — shift-right-click a villager while holding a Bundle. It stores the villager and its trades; use it on the ground to place the villager back (the item reverts to a plain Bundle). Advancements: Bag and Tag (bag a villager at max trading level) and Pied Piper (lure 8 villagers to you at once).
- **How it works (pack config, `villagertweaks.json5`):** Zombies always convert villagers instead of killing them, regardless of difficulty. Cure time is a fixed 3600 ticks (3 minutes) with the remaining time displayed. Villagers follow you while you hold an emerald block, emerald ore or deepslate emerald ore. Demand modifier is on (heavily traded offers get pricier, as in vanilla), negative reputation is on (hitting or killing villagers hurts your standing), global reputation is off (reputation is per player), and the max-trade override is off (vanilla limits). Max-discount cap, grow-up time override and leashing nitwits are left at defaults (off).
- **Pack note:** Config is also editable through YACL / Mod Menu.

### Trade Cycling
- **How it works:** In a villager's trade screen, press the cycle button or the key to re-roll the offers, instead of breaking and replacing the workstation. Only works on villagers you have not traded with yet; once you trade, offers lock as in vanilla.
- **Controls:** C (default); the button position is configurable.

### Villager Death Messages
Broadcasts a chat message when a villager dies, with its custom name (if any), profession, cause of death and last location.
- **Pack note:** No pack config, so defaults apply: `showLocation` true, `mentionModdedVillagers` true.

## New professions and shops
### Miniblock Merchants
Adds 26 new professions that together sell nearly 1,000 miniblocks (small decorative blocks).
- **How it works:** Right-click an unemployed adult villager with a profession's conversion item to give it that profession. Villagers from the Miniblock Traders datapack are converted to the matching profession automatically. Drop chances are configurable; those below are defaults.
- **Vanilla change:** overrides the player head block loot table so broken heads keep their profile, sound, name, lore and custom data.

| Conversion item | Profession | How to obtain |
|---|---|---|
| Crystal Phial | Alchemist | 1 in 24 fishing treasure |
| Cultivated Sapling | Arboriculturist | 1 in 4096 from spruce leaves |
| Galilean Spyglass | Astronomer | Always in igloo chests |
| Shimmering Wheat | Baker | 1 in 512 harvesting wheat |
| Mixology Station | Bartender | 1 in 24 fishing treasure |
| Prismatic Honeycomb | Beekeeper | Always in jungle temple chests |
| Mastercrafted Iron | Blacksmith | 1 in 2 village armorer chests |
| Wagyu Beef | Chef | 1 in 2 village butcher chests |
| Radiating Redstone | Engineer | 1 in 256 mining redstone ore |
| Budding Cactus | Eremologist | 1 in 12 desert pyramid chests |
| Endless Bookshelf | Furnisher | 1 in 3 stronghold library chests |
| Drenched Score Sheet | Gamemaster | 1 in 24 fishing treasure |
| Stabilized Explosion | Griefer | 1 in 160 when a creeper dies |
| Fragrant Flower | Horticulturist | 1 in 2 pillager outpost chests |
| 24-Karat Gold | Mineralogist | 1 in 4 monster room chests |
| Sparkling Blaze Powder | Netherographer | 1 in 4 ruined portal chests |
| Ancient Shell | Oceanographer | 1 in 3 big underwater ruin chests |
| Overgrown Carrot | Olericulturist | 1 in 512 harvesting carrots |
| Unusually Dense Rock | Petrologist | 1 in 12 abandoned mineshaft chests |
| Soaked Villager Plushie | Plushie Maniac | 1 in 24 fishing treasure |
| Enchanted Red Delicious | Pomologist | 1 in 4096 from oak leaves |
| Rotting Recycling Bin | Recycler | 1 in 24 fishing treasure |
| Book of Rituals | Ritualist | 1 in 3 stronghold library chests |
| Sculpting Clay | Sculptor | 1 in 256 harvesting clay |
| Forgotten Scrap Metal | Steampunker | 1 in 24 fishing treasure |
| Fine Thread | Tailor | 1 in 2 village shepherd chests |


### Universal Shops
Turns a chest or other container into a player shop with a set price and stock. Server-side with a hologram display, so no client mod is needed.
- **New:** Trade Shop — crafted: planks, wool, planks in the top row; planks, iron ingot, planks in the bottom row (any planks and wool). Admin Trade Shop — admin/creative only, no recipe, for admins and map makers.
- **How it works:** Place the Trade Shop on top of or beside a container; the Shop Settings GUI opens. Set what is sold and the price (click a slot while holding an item to copy it, otherwise a menu opens), optionally allow hoppers or disable the hologram, then stock the container. Buyers click the shop and take the item; Shift moves it straight to the inventory. Price and stock appear in tooltips. Currency is whatever item the owner sets.
- **Pack note:** Checks the Common Protection API, so a player needs access to the source container; works with claim mods that support it.

## Villages and wandering traders
### Random Village Names
- **How it works:** Each village gets a random name from a preset list, stored on a sign in the village centre and shown on screen by the **Areas** mod when you enter. Edit the sign to rename it, or replace it with an empty sign to remove the name. You can place your own sign within 15 blocks of the generated one.
- **Controls:** `/areas` shows all area signs (including village names) around you.

## Also relevant
- **Villager Workstation Highlights** datapack: stand within 5 blocks of a villager and run `/trigger vwh_findStation`. The nearest villager glows for 10 seconds, hearts appear over its workstation, and chat gives the coordinates (or says it has none). It picks the nearest villager, not the one you look at.
- **Wandering Trader Announcements** datapack (see also [Multiplayer & Server](15-multiplayer-and-server.md)): players within 64 blocks (horizontal) get "A wandering trader has arrived nearby!", once per trader.
- **Wandering Trades (Hermit Edition)** datapack (see also [Loot & Drops](10-loot-and-drops.md)): each wandering trader gets, on top of its vanilla trades, 2-5 random Hermitcraft head trades (1 emerald for 1 head, up to 3 uses; 29 heads) and 15-21 random Mini block trades (1 emerald plus the matching full block for 8 mini block heads, 1 use; 190 trades). The trader is briefly slowed while trades generate. It also overrides the player head loot table so broken heads keep their data. - **Archaeology Tweaks** (see [World Generation & Exploration](11-world-generation-and-exploration.md)): wandering traders have a 20% chance of offering a random pottery sherd for 8 emeralds and a brick.
- **Zombie Villagers From Spawner** (see [Mobs & Creatures](09-mobs-and-creatures.md)): zombie spawners can spawn zombie villagers again. Pairs with VillagerTweaks' always-convert and 3-minute cure rules.
- **Pack Configuration Overrides** (see [Quality of Life](01-quality-of-life.md)): lists the VillagerTweaks settings described above.
- Patchouli is not currently in the pack, so no guidebooks are available for these mods.
