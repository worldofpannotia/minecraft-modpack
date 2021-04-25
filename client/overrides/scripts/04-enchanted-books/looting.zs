val air=<item:minecraft:air>;
val enchBook=<item:minecraft:enchanted_book>;
val basePotion=<item:minecraft:potion>;

val str2pot = basePotion.withTag({Potion: "minecraft:strong_strength"});

val loot4bk = enchBook.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:looting" as string}]});
val loot5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:looting" as string}]});
val loot6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:looting" as string}]});
val loot7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:looting" as string}]});
val loot8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "minecraft:looting" as string}]});
val loot9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "minecraft:looting" as string}]});
val loot10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "minecraft:looting" as string}]});

craftingTable.addShaped("looting5_book", loot5bk, [
    [air, str2pot],
    [str2pot, loot4bk, str2pot],
    [air, <item:upgrade_aquatic:thrasher_tooth>]
]);

craftingTable.addShaped("looting6_book", loot6bk, [
    [air, str2pot],
    [str2pot, loot5bk, str2pot],
    [air, <item:minecraft:heart_of_the_sea>]
]);

craftingTable.addShaped("looting7_book", loot7bk, [
    [air, str2pot],
    [str2pot, loot6bk, str2pot],
    [air, <item:minecraft:nether_star>]
]);

craftingTable.addShaped("looting8_book", loot8bk, [
    [air, str2pot],
    [str2pot, loot7bk, str2pot],
    [air, <item:minecraft:netherite_ingot>]
]);

craftingTable.addShaped("looting9_book", loot9bk, [
    [air, str2pot],
    [str2pot, loot8bk, str2pot],
    [air, <item:quark:rainbow_rune>]
]);

craftingTable.addShaped("looting10_book", loot10bk, [
    [air, str2pot],
    [str2pot, loot9bk, str2pot],
    [air, <item:quark:diamond_heart>]
]);
