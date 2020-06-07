val air=<item:minecraft:air>;
val enchBook=<item:minecraft:enchanted_book>;
val basePotion=<item:minecraft:potion>;
val goldBlock=<item:minecraft:gold_block>;

val harm2pot = basePotion.withTag({Potion: "minecraft:strong_harming"});
val heal2pot = basePotion.withTag({Potion: "minecraft:strong_healing"});
val str2pot = basePotion.withTag({Potion: "minecraft:strong_strength"});

val fortune3bk = enchBook.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:fortune" as string}]});
val fortune4bk = enchBook.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:fortune" as string}]});
val fortune5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:fortune" as string}]});
val fortune6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:fortune" as string}]});
val fortune7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:fortune" as string}]});
val fortune8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "minecraft:fortune" as string}]});
val fortune9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "minecraft:fortune" as string}]});
val fortune10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "minecraft:fortune" as string}]});

val loot3bk = enchBook.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:looting" as string}]});
val loot4bk = enchBook.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:looting" as string}]});
val loot5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:looting" as string}]});
val loot6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:looting" as string}]});
val loot7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:looting" as string}]});
val loot8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "minecraft:looting" as string}]});
val loot9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "minecraft:looting" as string}]});
val loot10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "minecraft:looting" as string}]});

val sharp5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:sharpness" as string}]});
val sharp6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:sharpness" as string}]});
val sharp7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:sharpness" as string}]});
val sharp8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "minecraft:sharpness" as string}]});
val sharp9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "minecraft:sharpness" as string}]});
val sharp10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "minecraft:sharpness" as string}]});

val sweep3bk = enchBook.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:sweeping_edge" as string}]});
val sweep4bk = enchBook.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:sweeping_edge" as string}]});
val sweep5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:sweeping_edge" as string}]});
val sweep6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:sweeping_edge" as string}]});
val sweep7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:sweeping_edge" as string}]});
val sweep8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "minecraft:sweeping_edge" as string}]});
val sweep9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "minecraft:sweeping_edge" as string}]});
val sweep10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "minecraft:sweeping_edge" as string}]});

val unb3bk = enchBook.withTag({StoredEnchantments: [{lvl: 3 as short, id: "minecraft:unbreaking" as string}]});
val unb4bk = enchBook.withTag({StoredEnchantments: [{lvl: 4 as short, id: "minecraft:unbreaking" as string}]});
val unb5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "minecraft:unbreaking" as string}]});
val unb6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "minecraft:unbreaking" as string}]});
val unb7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "minecraft:unbreaking" as string}]});
val unb8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "minecraft:unbreaking" as string}]});
val unb9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "minecraft:unbreaking" as string}]});
val unb10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "minecraft:unbreaking" as string}]});

val vig3bk = enchBook.withTag({StoredEnchantments: [{lvl: 3 as short, id: "vanillatweaks:vigor" as string}]});
val vig4bk = enchBook.withTag({StoredEnchantments: [{lvl: 4 as short, id: "vanillatweaks:vigor" as string}]});
val vig5bk = enchBook.withTag({StoredEnchantments: [{lvl: 5 as short, id: "vanillatweaks:vigor" as string}]});
val vig6bk = enchBook.withTag({StoredEnchantments: [{lvl: 6 as short, id: "vanillatweaks:vigor" as string}]});
val vig7bk = enchBook.withTag({StoredEnchantments: [{lvl: 7 as short, id: "vanillatweaks:vigor" as string}]});
val vig8bk = enchBook.withTag({StoredEnchantments: [{lvl: 8 as short, id: "vanillatweaks:vigor" as string}]});
val vig9bk = enchBook.withTag({StoredEnchantments: [{lvl: 9 as short, id: "vanillatweaks:vigor" as string}]});
val vig10bk = enchBook.withTag({StoredEnchantments: [{lvl: 10 as short, id: "vanillatweaks:vigor" as string}]});

craftingTable.addShaped("fortune4_book", fortune4bk, [[air, str2pot], [str2pot, fortune3bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("fortune5_book", fortune5bk, [[air, str2pot], [str2pot, fortune4bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("fortune6_book", fortune6bk, [[air, str2pot], [str2pot, fortune5bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("fortune7_book", fortune7bk, [[air, str2pot], [str2pot, fortune6bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("fortune8_book", fortune8bk, [[air, str2pot], [str2pot, fortune7bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("fortune9_book", fortune9bk, [[air, str2pot], [str2pot, fortune8bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("fortune10_book", fortune10bk, [[air, str2pot], [str2pot, fortune9bk, str2pot], [air, goldBlock]]);

craftingTable.addShaped("looting4_book", loot4bk, [[air, str2pot], [str2pot, loot3bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("looting5_book", loot5bk, [[air, str2pot], [str2pot, loot4bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("looting6_book", loot6bk, [[air, str2pot], [str2pot, loot5bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("looting7_book", loot7bk, [[air, str2pot], [str2pot, loot6bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("looting8_book", loot8bk, [[air, str2pot], [str2pot, loot7bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("looting9_book", loot9bk, [[air, str2pot], [str2pot, loot8bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("looting10_book", loot10bk, [[air, str2pot], [str2pot, loot9bk, str2pot], [air, goldBlock]]);

craftingTable.addShaped("sharpness6_book", sharp6bk, [[air, harm2pot], [harm2pot, sharp5bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sharpness7_book", sharp7bk, [[air, harm2pot], [harm2pot, sharp6bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sharpness8_book", sharp8bk, [[air, harm2pot], [harm2pot, sharp7bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sharpness9_book", sharp9bk, [[air, harm2pot], [harm2pot, sharp8bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sharpness10_book", sharp10bk, [[air, harm2pot], [harm2pot, sharp9bk, harm2pot], [air, goldBlock]]);

craftingTable.addShaped("sweeping4_book", sweep4bk, [[air, harm2pot], [harm2pot, sweep3bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping5_book", sweep5bk, [[air, harm2pot], [harm2pot, sweep4bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping6_book", sweep6bk, [[air, harm2pot], [harm2pot, sweep5bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping7_book", sweep7bk, [[air, harm2pot], [harm2pot, sweep6bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping8_book", sweep8bk, [[air, harm2pot], [harm2pot, sweep7bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping9_book", sweep9bk, [[air, harm2pot], [harm2pot, sweep8bk, harm2pot], [air, goldBlock]]);
craftingTable.addShaped("sweeping10_book", sweep10bk, [[air, harm2pot], [harm2pot, sweep9bk, harm2pot], [air, goldBlock]]);

craftingTable.addShaped("unbreaking4_book", unb4bk, [[air, str2pot], [str2pot, unb3bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking5_book", unb5bk, [[air, str2pot], [str2pot, unb4bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking6_book", unb6bk, [[air, str2pot], [str2pot, unb5bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking7_book", unb7bk, [[air, str2pot], [str2pot, unb6bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking8_book", unb8bk, [[air, str2pot], [str2pot, unb7bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking9_book", unb9bk, [[air, str2pot], [str2pot, unb8bk, str2pot], [air, goldBlock]]);
craftingTable.addShaped("unbreaking10_book", unb10bk, [[air, str2pot], [str2pot, unb9bk, str2pot], [air, goldBlock]]);

craftingTable.addShaped("vigorg4_book", vig4bk, [[air, heal2pot], [heal2pot, vig3bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg5_book", vig5bk, [[air, heal2pot], [heal2pot, vig4bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg6_book", vig6bk, [[air, heal2pot], [heal2pot, vig5bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg7_book", vig7bk, [[air, heal2pot], [heal2pot, vig6bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg8_book", vig8bk, [[air, heal2pot], [heal2pot, vig7bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg9_book", vig9bk, [[air, heal2pot], [heal2pot, vig8bk, heal2pot], [air, goldBlock]]);
craftingTable.addShaped("vigorg10_book", vig10bk, [[air, heal2pot], [heal2pot, vig9bk, heal2pot], [air, goldBlock]]);

# val potions = {
#     "dangersight": {
#         "i": basePotion.withTag({Potion: "minecraft:danger_sight"}),
#         "long": basePotion.withTag({Potion: "minecraft:long_danger_sight"})
#     },
#     "fireresistance": {
#         "i": basePotion.withTag({Potion: "minecraft:fire_resistance"}),
#         "long": basePotion.withTag({Potion: "minecraft:long_fire_resistance"})
#     },
#     "harming": {
#         "i": basePotion.withTag({Potion: "minecraft:harming"}),
#         "ii": basePotion.withTag({Potion: "minecraft:strong_harming"})
#     },
#     "haste": {
#         "i": basePotion.withTag({Potion: "quark:haste"}),
#         "ii": basePotion.withTag({Potion: "quark:strong_haste"}),
#         "long": basePotion.withTag({Potion: "quark:long_haste"})
#     },
#     "luck": {
#         "i": basePotion.withTag({Potion: "minecraft:luck"})
#     },
#     "nightvision": {
#         "i": basePotion.withTag({Potion: "minecraft:night_vision"}),
#         "long": basePotion.withTag({Potion: "minecraft:long_night_vision"})
#     },
#     "resistance": {
#         "i": basePotion.withTag({Potion: "quark:resistance"}),
#         "ii": basePotion.withTag({Potion: "quark:strong_resistance"}),
#         "long": basePotion.withTag({Potion: "quark:long_resistance"})
#     },
#     "speed": {
#         "i": basePotion.withTag({Potion: "minecraft:swiftness"}),
#         "ii": basePotion.withTag({Potion: "minecraft:strong_swiftness"}),
#         "long": basePotion.withTag({Potion: "minecraft:long_swiftness"})
#     },
#     "strength": {
#         "i": basePotion.withTag({Potion: "minecraft:strength"}),
#         "ii": basePotion.withTag({Potion: "minecraft:strong_strength"}),
#         "long": basePotion.withTag({Potion: "minecraft:long_strength"})
#     },
#     "waterbreathing": {
#         "i": basePotion.withTag({Potion: "minecraft:water_breathing"}),
#         "long": basePotion.withTag({Potion: "minecraft:long_water_breathing"})
#     }
# } as IItemStack[string][string];
#
# val bookTags = {
#     "protection": [
#         <enchantment:minecraft:protection>.makeEnchantment(4).makeBook().makeBookTag(),
#     ],
#     "fireresistance": [
#         <enchantment:minecraft:fire_protection>.makeEnchantment(4).makeBook().makeBookTag(),
#     ],
#     "featherfall": [
#         <enchantment:minecraft:feather_falling>.makeEnchantment(4).makeBook().makeBookTag(),
#     ],
#     "blastprotection": [
#         <enchantment:minecraft:blast_protection>.makeEnchantment(4).makeBook().makeBookTag(),
#     ],
#     "projectileprotection": [
#         <enchantment:minecraft:projectile_protection>.makeEnchantment(4).makeBook().makeBookTag(),
#     ],
#     "respiration": [
#         <enchantment:minecraft:respiration>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "thorns": [
#         <enchantment:minecraft:thorns>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "depthstrider": [
#         <enchantment:minecraft:depth_strider>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "frostwalker": [
#         <enchantment:minecraft:frost_walker>.makeEnchantment(2).makeBook().makeBookTag(),
#     ],
#     "smite": [
#         <enchantment:minecraft:smite>.makeEnchantment(5).makeBook().makeBookTag(),
#     ],
#     "spiderbane": [
#         <enchantment:minecraft:bane_of_arthropods>.makeEnchantment(5).makeBook().makeBookTag(),
#     ],
#     "knockback": [
#         <enchantment:minecraft:knockback>.makeEnchantment(2).makeBook().makeBookTag(),
#     ],
#     "fireaspect": [
#         <enchantment:minecraft:fire_aspect>.makeEnchantment(2).makeBook().makeBookTag(),
#     ],
#     "efficiency": [
#         <enchantment:minecraft:efficiency>.makeEnchantment(5).makeBook().makeBookTag(),
#     ],
#     "power": [
#         <enchantment:minecraft:power>.makeEnchantment(5).makeBook().makeBookTag(),
#     ],
#     "punch": [
#         <enchantment:minecraft:punch>.makeEnchantment(2).makeBook().makeBookTag(),
#     ],
#     "luckofthesea": [
#         <enchantment:minecraft:luck_of_the_sea>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "lure": [
#         <enchantment:minecraft:lure>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "loyalty": [
#         <enchantment:minecraft:loyalty>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "impaling": [
#         <enchantment:minecraft:impaling>.makeEnchantment(5).makeBook().makeBookTag(),
#     ],
#     "riptide": [
#         <enchantment:minecraft:riptide>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "quickcharge": [
#         <enchantment:minecraft:quick_charge>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "piercing": [
#         <enchantment:minecraft:piercing>.makeEnchantment(4).makeBook().makeBookTag(),
#     ],
#     "shadowstep": [
#         <enchantment:tombstone:shadow_step>.makeEnchantment(5).makeBook().makeBookTag(),
#     ],
#     "magicsiphon": [
#         <enchantment:tombstone:magic_siphon>.makeEnchantment(5).makeBook().makeBookTag(),
#     ],
#     "plaguebringer": [
#         <enchantment:tombstone:plague_bringer>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "nimble": [
#         <enchantment:vanillatweaks:nimble>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "hops": [
#         <enchantment:vanillatweaks:hops>.makeEnchantment(3).makeBook().makeBookTag(),
#     ],
#     "homing": [
#         <enchantment:vanillatweaks:homing>.makeEnchantment(3).makeBook().makeBookTag(),
#     ]
# } as IData[string];
#
# val bookItems = {
#     "protection": potions["resistance"]["ii"],
#     "fireresistance": potions["fireresistance"]["i"],
#     "featherfall": <minecraft:feather>,
#     "blastprotection": potions["resistance"]["ii"],
#     "projectileprotection": potions["resistance"]["ii"],
#     "respiration": potions["waterbreathing"]["long"],
#     "thorns": potions["harming"]["ii"],
#     "depthstrider": potions["waterbreathing"]["long"],
#     "frostwalker": <minecraft:blue_ice>,
#     "sharpness": potions["harming"]["ii"],
#     "smite": potions["harming"]["ii"],
#     "spiderbane": potions["dangersight"]["long"],
#     "knockback": <minecraft:piston>,
#     "fireaspect": <minecraft:flint_and_steel>,
#     "sweepingedge": potions["harming"]["ii"],
#     "efficiency": potions["speed"]["ii"],
#     "power": potions["strength"]["ii"],
#     "punch": <minecraft:anvil>,
#     "luckofthesea": potions["luck"]["i"],
#     "lure": potions["luck"]["i"],
#     "loyalty": potions["concentration"]["i"],
#     "impaling": potions["strength"]["ii"],
#     "riptide": potions["waterbreathing"]["long"],
#     "quickcharge": potions["speed"]["ii"],
#     "piercing": potions["strength"]["ii"],
#     "shadowstep": potions["dangersight"]["long"],
#     "magicsiphon": potions["harming"]["ii"],
#     "plaguebringer": potions["harming"]["ii"],
#     "nimble": potions["speed"]["ii"],
#     "hops": potions["speed"]["ii"],
#     "homing": potions["concentration"]["i"]
# } as IItemStack[string];
#
# val booksToMake = [
#     "protection",
#     "fireresistance",
#     "featherfall",
#     "blastprotection",
#     "projectileprotection",
#     "respiration",
#     "thorns",
#     "depthstrider",
#     "frostwalker",
#     "sharpness",
#     "smite",
#     "spiderbane",
#     "knockback",
#     "fireaspect",
#     "sweepingedge",
#     "efficiency",
#     "power",
#     "punch",
#     "luckofthesea",
#     "lure",
#     "loyalty",
#     "impaling",
#     "riptide",
#     "quickcharge",
#     "piercing",
#     "shadowstep",
#     "magicsiphon",
#     "plaguebringer",
#     "nimble",
#     "hops",
#     "homing"
# ] as string[];
#
# for book in booksToMake {
#     var bookItem = bookItems[book];
#     var numBooksToMake = bookTags[book].length - 1;
#
#     for i in 0 .. numBooksToMake {
#         var j = i + 1;
#         var fromTag = bookTags[book][i];
#         var toTag = bookTags[book][j];
#
#         recipes.addShaped(
#             enchBook.withTag(toTag),
#             [
#                 [null, bookItem, null],
#                 [bookItem, enchBook.withTag(fromTag), bookItem],
#                 [null, goldBlock, null]
#             ]
#         );
#
#         mods.jei.JEI.addItem(enchBook.withTag(toTag));
#     }
# }
#
