val air=<item:minecraft:air>;
val enchBook=<item:minecraft:enchanted_book>;
val basePotion=<item:minecraft:potion>;
val goldBlock=<item:minecraft:gold_block>;

val heal2pot = basePotion.withTag({Potion: "minecraft:strong_healing"});

val vig3bk = enchBook.withTag({StoredEnchantments: [{lvl: 3 as short, id: "vanillatweaks:vigor" as string}]});
val vig4bk = enchBook.withTag({StoredEnchantments: [{lvl: 4 as short, id: "vanillatweaks:vigor" as string}]});
val vig5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "vanillatweaks:vigor" as string}]});
val vig6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "vanillatweaks:vigor" as string}]});
val vig7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "vanillatweaks:vigor" as string}]});
val vig8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "vanillatweaks:vigor" as string}]});
val vig9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "vanillatweaks:vigor" as string}]});
val vig10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "vanillatweaks:vigor" as string}]});

craftingTable.addShaped("vigorg4_book", vig4bk, [[air, heal2pot], [heal2pot, vig3bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg5_book", vig5bk, [[air, heal2pot], [heal2pot, vig4bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg6_book", vig6bk, [[air, heal2pot], [heal2pot, vig5bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg7_book", vig7bk, [[air, heal2pot], [heal2pot, vig6bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg8_book", vig8bk, [[air, heal2pot], [heal2pot, vig7bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg9_book", vig9bk, [[air, heal2pot], [heal2pot, vig8bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg10_book", vig10bk, [[air, heal2pot], [heal2pot, vig9bk, heal2pot], [air, goldBlock]]);
