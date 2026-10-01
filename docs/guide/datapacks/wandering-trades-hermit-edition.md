# Wandering Trades (Hermit Edition)

Wandering traders sell extra player-head trades: Hermitcraft member heads for 1 emerald, and "Mini" block heads for 1 emerald plus the full block. Each trader gets a random selection on top of its vanilla trades.

## How to use

Find a wandering trader ([Wandering Trader Announcements](wandering-trader-announcements.md) will tell you) and look through its trade list. There are no commands.

## What it changes

| Trade type | Cost | Result | Uses | Per trader |
|---|---|---|---|---|
| Hermit heads (29) | 1 emerald | 1 player head | 3 | random 2 to 5 |
| Mini block heads (190) | 1 emerald + 1 matching full block | 8 Mini block heads | 1 | random 15 to 21 |

Offers are added to the front of the trader's normal offers, with no duplicates. The trader is frozen by a slowness effect while the trades are generated.

**Hermit heads (uncommon rarity):** PythonGB, Xisuma, Docm77, Jessassin, xBCrafted, Etho, Mumbo, iJevin, impulseSV, Renthedog, Tinfoilchef, Biffa2001, GoodTimesWithScar, Zedaph, joehillssays, cubfan135, Welsknight, Keralis, falsesymmetry, hypnotizd, VintageBeef, BdoubleO100, Tango, Grian, ZombieCleo, GeminiTay, PearlescentMoon, Skizzleman, SmallishBeans.

**Mini block heads:** named "Mini <Block>" (Mini Chest, Mini Diamond Block, Mini Oak Log, ...). They cover workstations and containers, redstone parts, concrete in all 16 colours, ores and deepslate ores, planks and logs, stone variants, nether and blackstone blocks, copper, froglights, coral, mud, bamboo, cherry, sculk and more. They are player heads with a custom name and skin.

The pack also overrides the `player_head` block loot table so a broken player head drops itself and keeps its name and skin.

## Notes

- **Overlaps:** the Mini blocks are the same kind of item as the stonecutter recipes in [World of Pannotia](world-of-pannotia.md#mini-blocks) (1 block to 8 heads, free) and the Miniblock Merchants mod, which also sells them. Here you pay an emerald as well.
- Related: Just Player Heads mod; mob heads in [World of Pannotia](world-of-pannotia.md#extra-mob-drops-and-mob-heads).

<!-- maintainer: counts from add_trade.mcfunction (29 hermit trades, 190 mini-block trades, 219 total). Check whether Miniblock Merchants and WoP mini_blocks overlap and whether the heads are placeable. -->
