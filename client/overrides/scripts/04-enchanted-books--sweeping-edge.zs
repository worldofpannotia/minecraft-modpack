val air=<item:minecraft:air>;
val enchBook=<item:minecraft:enchanted_book>;
val basePotion=<item:minecraft:potion>;
val goldBlock=<item:minecraft:gold_block>;

val harm2pot = basePotion.withTag({Potion: "minecraft:strong_harming"});

val sweep3bk = enchBook.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:sweeping" as string}]});
val sweep4bk = enchBook.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:sweeping" as string}]});
val sweep5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:sweeping" as string}]});
val sweep6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:sweeping" as string}]});
val sweep7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:sweeping" as string}]});
val sweep8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "minecraft:sweeping" as string}]});
val sweep9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "minecraft:sweeping" as string}]});
val sweep10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "minecraft:sweeping" as string}]});

craftingTable.addShaped("sweeping4_book", sweep4bk, [[air, harm2pot], [harm2pot, sweep3bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping5_book", sweep5bk, [[air, harm2pot], [harm2pot, sweep4bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping6_book", sweep6bk, [[air, harm2pot], [harm2pot, sweep5bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping7_book", sweep7bk, [[air, harm2pot], [harm2pot, sweep6bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping8_book", sweep8bk, [[air, harm2pot], [harm2pot, sweep7bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping9_book", sweep9bk, [[air, harm2pot], [harm2pot, sweep8bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping10_book", sweep10bk, [[air, harm2pot], [harm2pot, sweep9bk, harm2pot], [air, goldBlock]]);
