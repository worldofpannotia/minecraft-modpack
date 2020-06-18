### Remove trapdoor recipes
craftingTable.removeRecipe(<item:buzzierbees:hive_trapdoor>);
craftingTable.removeRecipe(<item:endergetic:poise_trapdoor>);
craftingTable.removeRecipe(<item:upgrade_aquatic:river_trapdoor>);
craftingTable.removeRecipe(<item:upgrade_aquatic:driftwood_trapdoor>);

# 12 trapdoors instead of 2
craftingTable.addShaped("hive_trapdoor_12x", <item:buzzierbees:hive_trapdoor> * 12, [
    [<item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>],
    [<item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>]
]);
craftingTable.addShaped("poise_trapdoor_12x", <item:endergetic:poise_trapdoor> * 12, [
    [<item:endergetic:poise_planks>, <item:endergetic:poise_planks>, <item:endergetic:poise_planks>],
    [<item:endergetic:poise_planks>, <item:endergetic:poise_planks>, <item:endergetic:poise_planks>]
]);
craftingTable.addShaped("river_trapdoor_12x", <item:upgrade_aquatic:river_trapdoor> * 12, [
    [<item:upgrade_aquatic:river_planks>, <item:upgrade_aquatic:river_planks>, <item:upgrade_aquatic:river_planks>],
    [<item:upgrade_aquatic:river_planks>, <item:upgrade_aquatic:river_planks>, <item:upgrade_aquatic:river_planks>]
]);
craftingTable.addShaped("driftwood_trapdoor_12x", <item:upgrade_aquatic:driftwood_trapdoor> * 12, [
    [<item:upgrade_aquatic:driftwood_planks>, <item:upgrade_aquatic:driftwood_planks>, <item:upgrade_aquatic:driftwood_planks>],
    [<item:upgrade_aquatic:driftwood_planks>, <item:upgrade_aquatic:driftwood_planks>, <item:upgrade_aquatic:driftwood_planks>]
]);
