# Loot Bags
val commonLootBag=<lootbags:itemlootbag>;
val uncommonLootBag=<lootbags:itemlootbag:1>;
val rareLootBag=<lootbags:itemlootbag:2>;
val epicLootBag=<lootbags:itemlootbag:3>;
val legendaryLootBag=<lootbags:itemlootbag:4>;
val artifactLootBag=<lootbags:itemlootbag:11>;

recipes.addShaped(uncommonLootBag, [[commonLootBag, commonLootBag], [commonLootBag, commonLootBag]]);
recipes.addShapeless(commonLootBag * 4, [uncommonLootBag]);
recipes.addShaped(rareLootBag, [[uncommonLootBag, uncommonLootBag], [uncommonLootBag, uncommonLootBag]]);
recipes.addShapeless(uncommonLootBag * 4, [rareLootBag]);
recipes.addShaped(epicLootBag, [[rareLootBag, rareLootBag], [rareLootBag, rareLootBag]]);
recipes.addShapeless(rareLootBag * 4, [epicLootBag]);
recipes.addShaped(legendaryLootBag, [[epicLootBag, epicLootBag], [epicLootBag, epicLootBag]]);
recipes.addShapeless(epicLootBag * 4, [legendaryLootBag]);
recipes.addShaped(artifactLootBag, [[legendaryLootBag, legendaryLootBag], [legendaryLootBag, legendaryLootBag]]);
recipes.addShapeless(legendaryLootBag * 4, [artifactLootBag]);
