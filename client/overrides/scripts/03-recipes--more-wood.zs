### Remove wood/bark block recipes
craftingTable.removeRecipe(<item:endergetic:poise_wood_stripped>);
craftingTable.removeRecipe(<item:endergetic:poise_wood>);
craftingTable.removeRecipe(<item:endergetic:poise_wood_glowing>);
craftingTable.removeRecipe(<item:upgrade_aquatic:stripped_river_wood>);
craftingTable.removeRecipe(<item:upgrade_aquatic:driftwood_stripped>);
craftingTable.removeRecipe(<item:upgrade_aquatic:river_wood>);
craftingTable.removeRecipe(<item:upgrade_aquatic:driftwood>);

# 4 Wood/bark blocks instead of 3
craftingTable.addShaped("poise_wood_stripped_4x", <item:endergetic:poise_wood_stripped> * 4, [
    [<item:endergetic:poise_stem_stripped>, <item:endergetic:poise_stem_stripped>],
    [<item:endergetic:poise_stem_stripped>, <item:endergetic:poise_stem_stripped>]
]);
craftingTable.addShaped("poise_wood_4x", <item:endergetic:poise_wood> * 4, [
    [<item:endergetic:poise_stem>, <item:endergetic:poise_stem>],
    [<item:endergetic:poise_stem>, <item:endergetic:poise_stem>]
]);
craftingTable.addShaped("poise_wood_glowing_4x", <item:endergetic:poise_wood_glowing> * 4, [
    [<item:endergetic:poise_stem_glowing>, <item:endergetic:poise_stem_glowing>],
    [<item:endergetic:poise_stem_glowing>, <item:endergetic:poise_stem_glowing>]
]);
craftingTable.addShaped("stripped_river_wood_4x", <item:upgrade_aquatic:stripped_river_wood> * 4, [
    [<item:upgrade_aquatic:stripped_river_log>, <item:upgrade_aquatic:stripped_river_log>],
    [<item:upgrade_aquatic:stripped_river_log>, <item:upgrade_aquatic:stripped_river_log>]
]);
craftingTable.addShaped("driftwood_stripped_4x", <item:upgrade_aquatic:driftwood_stripped> * 4, [
    [<item:upgrade_aquatic:driftwood_log_stripped>, <item:upgrade_aquatic:driftwood_log_stripped>],
    [<item:upgrade_aquatic:driftwood_log_stripped>, <item:upgrade_aquatic:driftwood_log_stripped>]
]);
craftingTable.addShaped("river_wood_4x", <item:upgrade_aquatic:river_wood> * 4, [
    [<item:upgrade_aquatic:river_log>, <item:upgrade_aquatic:river_log>],
    [<item:upgrade_aquatic:river_log>, <item:upgrade_aquatic:river_log>]
]);
craftingTable.addShaped("driftwood_4x", <item:upgrade_aquatic:driftwood> * 4, [
    [<item:upgrade_aquatic:driftwood_log>, <item:upgrade_aquatic:driftwood_log>],
    [<item:upgrade_aquatic:driftwood_log>, <item:upgrade_aquatic:driftwood_log>]
]);
