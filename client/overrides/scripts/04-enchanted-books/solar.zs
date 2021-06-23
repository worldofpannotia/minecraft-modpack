val air=<item:minecraft:air>;
val enchBook=<item:minecraft:enchanted_book>;
val basePotion=<item:minecraft:potion>;

val harm2pot = basePotion.withTag({Potion: "minecraft:strong_harming"});

val solar6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "randomenchants:solar" as string}]});
val solar7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "randomenchants:solar" as string}]});
val solar8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "randomenchants:solar" as string}]});
val solar9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "randomenchants:solar" as string}]});
val solar10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "randomenchants:solar" as string}]});

craftingTable.addShaped("solar7_book", solar7bk, [
    [air, harm2pot],
    [harm2pot, solar6bk, harm2pot],
    [air, <item:minecraft:nether_star>]
]);

craftingTable.addShaped("solar8_book", solar8bk, [
    [air, harm2pot],
    [harm2pot, solar7bk, harm2pot],
    [air, <item:minecraft:netherite_ingot>]
]);

craftingTable.addShaped("solar9_book", solar9bk, [
    [air, harm2pot],
    [harm2pot, solar8bk, harm2pot],
    [air, <item:quark:rainbow_rune>]
]);

craftingTable.addShaped("solar10_book", solar10bk, [
    [air, harm2pot],
    [harm2pot, solar9bk, harm2pot],
    [air, <item:quark:diamond_heart>]
]);
