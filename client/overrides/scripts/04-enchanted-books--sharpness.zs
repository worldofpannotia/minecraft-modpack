val air=<item:minecraft:air>;
val enchBook=<item:minecraft:enchanted_book>;
val basePotion=<item:minecraft:potion>;
val goldBlock=<item:minecraft:gold_block>;

val harm2pot = basePotion.withTag({Potion: "minecraft:strong_harming"});

val sharp5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:sharpness" as string}]});
val sharp6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:sharpness" as string}]});
val sharp7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:sharpness" as string}]});
val sharp8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "minecraft:sharpness" as string}]});
val sharp9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "minecraft:sharpness" as string}]});
val sharp10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "minecraft:sharpness" as string}]});

craftingTable.addShaped("sharpness6_book", sharp6bk, [[air, harm2pot], [harm2pot, sharp5bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sharpness7_book", sharp7bk, [[air, harm2pot], [harm2pot, sharp6bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sharpness8_book", sharp8bk, [[air, harm2pot], [harm2pot, sharp7bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sharpness9_book", sharp9bk, [[air, harm2pot], [harm2pot, sharp8bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sharpness10_book", sharp10bk, [[air, harm2pot], [harm2pot, sharp9bk, harm2pot], [air, goldBlock]]);
