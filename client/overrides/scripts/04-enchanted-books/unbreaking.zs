val air=<item:minecraft:air>;
val enchBook=<item:minecraft:enchanted_book>;
val basePotion=<item:minecraft:potion>;
val goldBlock=<item:minecraft:gold_block>;

val str2pot = basePotion.withTag({Potion: "minecraft:strong_strength"});

val unb3bk = enchBook.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:unbreaking" as string}]});
val unb4bk = enchBook.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:unbreaking" as string}]});
val unb5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:unbreaking" as string}]});
val unb6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:unbreaking" as string}]});
val unb7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:unbreaking" as string}]});
val unb8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "minecraft:unbreaking" as string}]});
val unb9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "minecraft:unbreaking" as string}]});
val unb10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "minecraft:unbreaking" as string}]});

craftingTable.addShaped("unbreaking4_book", unb4bk, [[air, str2pot], [str2pot, unb3bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking5_book", unb5bk, [[air, str2pot], [str2pot, unb4bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking6_book", unb6bk, [[air, str2pot], [str2pot, unb5bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking7_book", unb7bk, [[air, str2pot], [str2pot, unb6bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking8_book", unb8bk, [[air, str2pot], [str2pot, unb7bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking9_book", unb9bk, [[air, str2pot], [str2pot, unb8bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking10_book", unb10bk, [[air, str2pot], [str2pot, unb9bk, str2pot], [air, goldBlock]]);
