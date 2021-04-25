val air=<item:minecraft:air>;
val enchBook=<item:minecraft:enchanted_book>;
val basePotion=<item:minecraft:potion>;

val str2pot = basePotion.withTag({Potion: "minecraft:strong_strength"});

val fortune4bk = enchBook.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:fortune" as string}]});
val fortune5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:fortune" as string}]});
val fortune6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:fortune" as string}]});
val fortune7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:fortune" as string}]});
val fortune8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "minecraft:fortune" as string}]});
val fortune9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "minecraft:fortune" as string}]});
val fortune10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "minecraft:fortune" as string}]});

craftingTable.addShaped("fortune5_book", fortune5bk, [
    [air, str2pot],
    [str2pot, fortune4bk, str2pot],
    [air, <item:upgrade_aquatic:thrasher_tooth>]
]);

craftingTable.addShaped("fortune6_book", fortune6bk, [
    [air, str2pot],
    [str2pot, fortune5bk, str2pot],
    [air, <item:minecraft:heart_of_the_sea>]
]);

craftingTable.addShaped("fortune7_book", fortune7bk, [
    [air, str2pot],
    [str2pot, fortune6bk, str2pot],
    [air, <item:minecraft:nether_star>]
]);

craftingTable.addShaped("fortune8_book", fortune8bk, [
    [air, str2pot],
    [str2pot, fortune7bk, str2pot],
    [air, <item:minecraft:netherite_ingot>]
]);

craftingTable.addShaped("fortune9_book", fortune9bk, [
    [air, str2pot],
    [str2pot, fortune8bk, str2pot],
    [air, <item:quark:rainbow_rune>]
]);

craftingTable.addShaped("fortune10_book", fortune10bk, [
    [air, str2pot],
    [str2pot, fortune9bk, str2pot],
    [air, <item:quark:diamond_heart>]
]);
