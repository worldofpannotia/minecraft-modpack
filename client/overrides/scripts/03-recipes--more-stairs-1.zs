### Remove stairs recipes
craftingTable.removeRecipe(<item:buzzierbees:hive_stairs>);
craftingTable.removeRecipe(<item:buzzierbees:honey_brick_stairs>);
craftingTable.removeRecipe(<item:engineersdecor:clinker_brick_stairs>);
craftingTable.removeRecipe(<item:engineersdecor:clinker_brick_stained_stairs>);
craftingTable.removeRecipe(<item:engineersdecor:slag_brick_stairs>);
craftingTable.removeRecipe(<item:engineersdecor:rebar_concrete_stairs>);
craftingTable.removeRecipe(<item:engineersdecor:rebar_concrete_tile_stairs>);
craftingTable.removeRecipe(<item:engineersdecor:gas_concrete_stairs>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_hempcrete>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_concrete>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_concrete_tile>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_concrete_leaded>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_treated_wood_horizontal>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_treated_wood_vertical>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_treated_wood_packaged>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_steel_scaffolding_standard>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_alu_scaffolding_standard>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_steel_scaffolding_grate_top>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_alu_scaffolding_grate_top>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_steel_scaffolding_wooden_top>);
craftingTable.removeRecipe(<item:immersiveengineering:stairs_alu_scaffolding_wooden_top>);
craftingTable.removeRecipe(<item:quark:turf_stairs>);
craftingTable.removeRecipe(<item:quark:soul_sandstone_stairs>);
craftingTable.removeRecipe(<item:quark:smooth_soul_sandstone_stairs>);
craftingTable.removeRecipe(<item:quark:brimstone_stairs>);
craftingTable.removeRecipe(<item:quark:brimstone_bricks_stairs>);
craftingTable.removeRecipe(<item:quark:biotite_block_stairs>);
craftingTable.removeRecipe(<item:quark:smooth_biotite_stairs>);
craftingTable.removeRecipe(<item:quark:marble_stairs>);
craftingTable.removeRecipe(<item:quark:polished_marble_stairs>);
craftingTable.removeRecipe(<item:quark:limestone_stairs>);
craftingTable.removeRecipe(<item:quark:polished_limestone_stairs>);
craftingTable.removeRecipe(<item:quark:jasper_stairs>);
craftingTable.removeRecipe(<item:quark:polished_jasper_stairs>);
craftingTable.removeRecipe(<item:quark:slate_stairs>);
craftingTable.removeRecipe(<item:quark:polished_slate_stairs>);
craftingTable.removeRecipe(<item:quark:basalt_stairs>);
craftingTable.removeRecipe(<item:quark:polished_basalt_stairs>);
craftingTable.removeRecipe(<item:quark:elder_prismarine_stairs>);
craftingTable.removeRecipe(<item:quark:elder_prismarine_bricks_stairs>);
craftingTable.removeRecipe(<item:quark:dark_elder_prismarine_stairs>);
craftingTable.removeRecipe(<item:quark:white_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:orange_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:magenta_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:light_blue_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:yellow_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:lime_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:pink_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:gray_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:light_gray_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:cyan_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:purple_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:blue_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:brown_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:green_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:red_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:black_stained_planks_stairs>);
craftingTable.removeRecipe(<item:quark:cobblestone_bricks_stairs>);
craftingTable.removeRecipe(<item:quark:mossy_cobblestone_bricks_stairs>);
craftingTable.removeRecipe(<item:quark:thatch_stairs>);
craftingTable.removeRecipe(<item:quark:granite_bricks_stairs>);
craftingTable.removeRecipe(<item:quark:diorite_bricks_stairs>);
craftingTable.removeRecipe(<item:quark:andesite_bricks_stairs>);
craftingTable.removeRecipe(<item:quark:marble_bricks_stairs>);
craftingTable.removeRecipe(<item:quark:limestone_bricks_stairs>);
craftingTable.removeRecipe(<item:quark:jasper_bricks_stairs>);

# 8 stairs instead of 4
craftingTable.addShaped("hive_stairs_8x", <item:buzzierbees:hive_stairs> * 8, [
    [<item:buzzierbees:hive_planks>],
    [<item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>],
    [<item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>, <item:buzzierbees:hive_planks>]
]);
craftingTable.addShaped("honey_brick_stairs_8x", <item:buzzierbees:honey_brick_stairs> * 8, [
    [<item:buzzierbees:honey_bricks>],
    [<item:buzzierbees:honey_bricks>, <item:buzzierbees:honey_bricks>],
    [<item:buzzierbees:honey_bricks>, <item:buzzierbees:honey_bricks>, <item:buzzierbees:honey_bricks>]
]);
craftingTable.addShaped("clinker_brick_stairs_8x", <item:engineersdecor:clinker_brick_stairs> * 8, [
    [<item:engineersdecor:clinker_brick_block>],
    [<item:engineersdecor:clinker_brick_block>, <item:engineersdecor:clinker_brick_block>],
    [<item:engineersdecor:clinker_brick_block>, <item:engineersdecor:clinker_brick_block>, <item:engineersdecor:clinker_brick_block>]
]);
craftingTable.addShaped("clinker_brick_stained_stairs_8x", <item:engineersdecor:clinker_brick_stained_stairs> * 8, [
    [<item:engineersdecor:clinker_brick_stained_block>],
    [<item:engineersdecor:clinker_brick_stained_block>, <item:engineersdecor:clinker_brick_stained_block>],
    [<item:engineersdecor:clinker_brick_stained_block>, <item:engineersdecor:clinker_brick_stained_block>, <item:engineersdecor:clinker_brick_stained_block>]
]);
craftingTable.addShaped("slag_brick_stairs_8x", <item:engineersdecor:slag_brick_stairs> * 8, [
    [<item:engineersdecor:slag_brick_block>],
    [<item:engineersdecor:slag_brick_block>, <item:engineersdecor:slag_brick_block>],
    [<item:engineersdecor:slag_brick_block>, <item:engineersdecor:slag_brick_block>, <item:engineersdecor:slag_brick_block>]
]);
craftingTable.addShaped("rebar_concrete_stairs_8x", <item:engineersdecor:rebar_concrete_stairs> * 8, [
    [<item:engineersdecor:rebar_concrete>],
    [<item:engineersdecor:rebar_concrete>, <item:engineersdecor:rebar_concrete>],
    [<item:engineersdecor:rebar_concrete>, <item:engineersdecor:rebar_concrete>, <item:engineersdecor:rebar_concrete>]
]);
craftingTable.addShaped("rebar_concrete_tile_stairs_8x", <item:engineersdecor:rebar_concrete_tile_stairs> * 8, [
    [<item:engineersdecor:rebar_concrete_tile>],
    [<item:engineersdecor:rebar_concrete_tile>, <item:engineersdecor:rebar_concrete_tile>],
    [<item:engineersdecor:rebar_concrete_tile>, <item:engineersdecor:rebar_concrete_tile>, <item:engineersdecor:rebar_concrete_tile>]
]);
craftingTable.addShaped("gas_concrete_stairs_8x", <item:engineersdecor:gas_concrete_stairs> * 8, [
    [<item:engineersdecor:gas_concrete>],
    [<item:engineersdecor:gas_concrete>, <item:engineersdecor:gas_concrete>],
    [<item:engineersdecor:gas_concrete>, <item:engineersdecor:gas_concrete>, <item:engineersdecor:gas_concrete>]
]);
craftingTable.addShaped("stairs_hempcrete_8x", <item:immersiveengineering:stairs_hempcrete> * 8, [
    [<item:immersiveengineering:hempcrete>],
    [<item:immersiveengineering:hempcrete>, <item:immersiveengineering:hempcrete>],
    [<item:immersiveengineering:hempcrete>, <item:immersiveengineering:hempcrete>, <item:immersiveengineering:hempcrete>]
]);
craftingTable.addShaped("stairs_concrete_8x", <item:immersiveengineering:stairs_concrete> * 8, [
    [<item:immersiveengineering:concrete>],
    [<item:immersiveengineering:concrete>, <item:immersiveengineering:concrete>],
    [<item:immersiveengineering:concrete>, <item:immersiveengineering:concrete>, <item:immersiveengineering:concrete>]
]);
craftingTable.addShaped("stairs_concrete_tile_8x", <item:immersiveengineering:stairs_concrete_tile> * 8, [
    [<item:immersiveengineering:concrete_tile>],
    [<item:immersiveengineering:concrete_tile>, <item:immersiveengineering:concrete_tile>],
    [<item:immersiveengineering:concrete_tile>, <item:immersiveengineering:concrete_tile>, <item:immersiveengineering:concrete_tile>]
]);
craftingTable.addShaped("stairs_concrete_leaded_8x", <item:immersiveengineering:stairs_concrete_leaded> * 8, [
    [<item:immersiveengineering:concrete_leaded>],
    [<item:immersiveengineering:concrete_leaded>, <item:immersiveengineering:concrete_leaded>],
    [<item:immersiveengineering:concrete_leaded>, <item:immersiveengineering:concrete_leaded>, <item:immersiveengineering:concrete_leaded>]
]);
craftingTable.addShaped("stairs_treated_wood_horizontal_8x", <item:immersiveengineering:stairs_treated_wood_horizontal> * 8, [
    [<item:immersiveengineering:treated_wood_horizontal>],
    [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>],
    [<item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>, <item:immersiveengineering:treated_wood_horizontal>]
]);
craftingTable.addShaped("stairs_treated_wood_vertical_8x", <item:immersiveengineering:stairs_treated_wood_vertical> * 8, [
    [<item:immersiveengineering:treated_wood_vertical>],
    [<item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:treated_wood_vertical>],
    [<item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:treated_wood_vertical>, <item:immersiveengineering:treated_wood_vertical>]
]);
craftingTable.addShaped("stairs_treated_wood_packaged_8x", <item:immersiveengineering:stairs_treated_wood_packaged> * 8, [
    [<item:immersiveengineering:treated_wood_packaged>],
    [<item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:treated_wood_packaged>],
    [<item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:treated_wood_packaged>, <item:immersiveengineering:treated_wood_packaged>]
]);
craftingTable.addShaped("stairs_steel_scaffolding_standard_8x", <item:immersiveengineering:stairs_steel_scaffolding_standard> * 8, [
    [<item:immersiveengineering:steel_scaffolding_standard>],
    [<item:immersiveengineering:steel_scaffolding_standard>, <item:immersiveengineering:steel_scaffolding_standard>],
    [<item:immersiveengineering:steel_scaffolding_standard>, <item:immersiveengineering:steel_scaffolding_standard>, <item:immersiveengineering:steel_scaffolding_standard>]
]);
craftingTable.addShaped("stairs_alu_scaffolding_standard_8x", <item:immersiveengineering:stairs_alu_scaffolding_standard> * 8, [
    [<item:immersiveengineering:alu_scaffolding_standard>],
    [<item:immersiveengineering:alu_scaffolding_standard>, <item:immersiveengineering:alu_scaffolding_standard>],
    [<item:immersiveengineering:alu_scaffolding_standard>, <item:immersiveengineering:alu_scaffolding_standard>, <item:immersiveengineering:alu_scaffolding_standard>]
]);
craftingTable.addShaped("stairs_steel_scaffolding_grate_top_8x", <item:immersiveengineering:stairs_steel_scaffolding_grate_top> * 8, [
    [<item:immersiveengineering:steel_scaffolding_grate_top>],
    [<item:immersiveengineering:steel_scaffolding_grate_top>, <item:immersiveengineering:steel_scaffolding_grate_top>],
    [<item:immersiveengineering:steel_scaffolding_grate_top>, <item:immersiveengineering:steel_scaffolding_grate_top>, <item:immersiveengineering:steel_scaffolding_grate_top>]
]);
craftingTable.addShaped("stairs_alu_scaffolding_grate_top_8x", <item:immersiveengineering:stairs_alu_scaffolding_grate_top> * 8, [
    [<item:immersiveengineering:alu_scaffolding_grate_top>],
    [<item:immersiveengineering:alu_scaffolding_grate_top>, <item:immersiveengineering:alu_scaffolding_grate_top>],
    [<item:immersiveengineering:alu_scaffolding_grate_top>, <item:immersiveengineering:alu_scaffolding_grate_top>, <item:immersiveengineering:alu_scaffolding_grate_top>]
]);
craftingTable.addShaped("stairs_steel_scaffolding_wooden_top_8x", <item:immersiveengineering:stairs_steel_scaffolding_wooden_top> * 8, [
    [<item:immersiveengineering:steel_scaffolding_wooden_top>],
    [<item:immersiveengineering:steel_scaffolding_wooden_top>, <item:immersiveengineering:steel_scaffolding_wooden_top>],
    [<item:immersiveengineering:steel_scaffolding_wooden_top>, <item:immersiveengineering:steel_scaffolding_wooden_top>, <item:immersiveengineering:steel_scaffolding_wooden_top>]
]);
craftingTable.addShaped("stairs_alu_scaffolding_wooden_top_8x", <item:immersiveengineering:stairs_alu_scaffolding_wooden_top> * 8, [
    [<item:immersiveengineering:alu_scaffolding_wooden_top>],
    [<item:immersiveengineering:alu_scaffolding_wooden_top>, <item:immersiveengineering:alu_scaffolding_wooden_top>],
    [<item:immersiveengineering:alu_scaffolding_wooden_top>, <item:immersiveengineering:alu_scaffolding_wooden_top>, <item:immersiveengineering:alu_scaffolding_wooden_top>]
]);
craftingTable.addShaped("turf_stairs_8x", <item:quark:turf_stairs> * 8, [
    [<item:quark:turf>],
    [<item:quark:turf>, <item:quark:turf>],
    [<item:quark:turf>, <item:quark:turf>, <item:quark:turf>]
]);
craftingTable.addShaped("soul_sandstone_stairs_8x", <item:quark:soul_sandstone_stairs> * 8, [
    [<item:quark:soul_sandstone>],
    [<item:quark:soul_sandstone>, <item:quark:soul_sandstone>],
    [<item:quark:soul_sandstone>, <item:quark:soul_sandstone>, <item:quark:soul_sandstone>]
]);
craftingTable.addShaped("smooth_soul_sandstone_stairs_8x", <item:quark:smooth_soul_sandstone_stairs> * 8, [
    [<item:quark:smooth_soul_sandstone>],
    [<item:quark:smooth_soul_sandstone>, <item:quark:smooth_soul_sandstone>],
    [<item:quark:smooth_soul_sandstone>, <item:quark:smooth_soul_sandstone>, <item:quark:smooth_soul_sandstone>]
]);
craftingTable.addShaped("brimstone_stairs_8x", <item:quark:brimstone_stairs> * 8, [
    [<item:quark:brimstone>],
    [<item:quark:brimstone>, <item:quark:brimstone>],
    [<item:quark:brimstone>, <item:quark:brimstone>, <item:quark:brimstone>]
]);
craftingTable.addShaped("brimstone_bricks_stairs_8x", <item:quark:brimstone_bricks_stairs> * 8, [
    [<item:quark:brimstone_bricks>],
    [<item:quark:brimstone_bricks>, <item:quark:brimstone_bricks>],
    [<item:quark:brimstone_bricks>, <item:quark:brimstone_bricks>, <item:quark:brimstone_bricks>]
]);
craftingTable.addShaped("biotite_block_stairs_8x", <item:quark:biotite_block_stairs> * 8, [
    [<item:quark:biotite_block>],
    [<item:quark:biotite_block>, <item:quark:biotite_block>],
    [<item:quark:biotite_block>, <item:quark:biotite_block>, <item:quark:biotite_block>]
]);
craftingTable.addShaped("smooth_biotite_stairs_8x", <item:quark:smooth_biotite_stairs> * 8, [
    [<item:quark:smooth_biotite>],
    [<item:quark:smooth_biotite>, <item:quark:smooth_biotite>],
    [<item:quark:smooth_biotite>, <item:quark:smooth_biotite>, <item:quark:smooth_biotite>]
]);
craftingTable.addShaped("marble_stairs_8x", <item:quark:marble_stairs> * 8, [
    [<item:quark:marble>],
    [<item:quark:marble>, <item:quark:marble>],
    [<item:quark:marble>, <item:quark:marble>, <item:quark:marble>]
]);
craftingTable.addShaped("polished_marble_stairs_8x", <item:quark:polished_marble_stairs> * 8, [
    [<item:quark:polished_marble>],
    [<item:quark:polished_marble>, <item:quark:polished_marble>],
    [<item:quark:polished_marble>, <item:quark:polished_marble>, <item:quark:polished_marble>]
]);
craftingTable.addShaped("limestone_stairs_8x", <item:quark:limestone_stairs> * 8, [
    [<item:quark:limestone>],
    [<item:quark:limestone>, <item:quark:limestone>],
    [<item:quark:limestone>, <item:quark:limestone>, <item:quark:limestone>]
]);
craftingTable.addShaped("polished_limestone_stairs_8x", <item:quark:polished_limestone_stairs> * 8, [
    [<item:quark:polished_limestone>],
    [<item:quark:polished_limestone>, <item:quark:polished_limestone>],
    [<item:quark:polished_limestone>, <item:quark:polished_limestone>, <item:quark:polished_limestone>]
]);
craftingTable.addShaped("jasper_stairs_8x", <item:quark:jasper_stairs> * 8, [
    [<item:quark:jasper>],
    [<item:quark:jasper>, <item:quark:jasper>],
    [<item:quark:jasper>, <item:quark:jasper>, <item:quark:jasper>]
]);
craftingTable.addShaped("polished_jasper_stairs_8x", <item:quark:polished_jasper_stairs> * 8, [
    [<item:quark:polished_jasper>],
    [<item:quark:polished_jasper>, <item:quark:polished_jasper>],
    [<item:quark:polished_jasper>, <item:quark:polished_jasper>, <item:quark:polished_jasper>]
]);
craftingTable.addShaped("slate_stairs_8x", <item:quark:slate_stairs> * 8, [
    [<item:quark:slate>],
    [<item:quark:slate>, <item:quark:slate>],
    [<item:quark:slate>, <item:quark:slate>, <item:quark:slate>]
]);
craftingTable.addShaped("polished_slate_stairs_8x", <item:quark:polished_slate_stairs> * 8, [
    [<item:quark:polished_slate>],
    [<item:quark:polished_slate>, <item:quark:polished_slate>],
    [<item:quark:polished_slate>, <item:quark:polished_slate>, <item:quark:polished_slate>]
]);
craftingTable.addShaped("basalt_stairs_8x", <item:quark:basalt_stairs> * 8, [
    [<item:quark:basalt>],
    [<item:quark:basalt>, <item:quark:basalt>],
    [<item:quark:basalt>, <item:quark:basalt>, <item:quark:basalt>]
]);
craftingTable.addShaped("polished_basalt_stairs_8x", <item:quark:polished_basalt_stairs> * 8, [
    [<item:quark:polished_basalt>],
    [<item:quark:polished_basalt>, <item:quark:polished_basalt>],
    [<item:quark:polished_basalt>, <item:quark:polished_basalt>, <item:quark:polished_basalt>]
]);
craftingTable.addShaped("elder_prismarine_stairs_8x", <item:quark:elder_prismarine_stairs> * 8, [
    [<item:quark:elder_prismarine>],
    [<item:quark:elder_prismarine>, <item:quark:elder_prismarine>],
    [<item:quark:elder_prismarine>, <item:quark:elder_prismarine>, <item:quark:elder_prismarine>]
]);
craftingTable.addShaped("elder_prismarine_bricks_stairs_8x", <item:quark:elder_prismarine_bricks_stairs> * 8, [
    [<item:quark:elder_prismarine_bricks>],
    [<item:quark:elder_prismarine_bricks>, <item:quark:elder_prismarine_bricks>],
    [<item:quark:elder_prismarine_bricks>, <item:quark:elder_prismarine_bricks>, <item:quark:elder_prismarine_bricks>]
]);
craftingTable.addShaped("dark_elder_prismarine_stairs_8x", <item:quark:dark_elder_prismarine_stairs> * 8, [
    [<item:quark:dark_elder_prismarine>],
    [<item:quark:dark_elder_prismarine>, <item:quark:dark_elder_prismarine>],
    [<item:quark:dark_elder_prismarine>, <item:quark:dark_elder_prismarine>, <item:quark:dark_elder_prismarine>]
]);
craftingTable.addShaped("white_stained_planks_stairs_8x", <item:quark:white_stained_planks_stairs> * 8, [
    [<item:quark:white_stained_planks>],
    [<item:quark:white_stained_planks>, <item:quark:white_stained_planks>],
    [<item:quark:white_stained_planks>, <item:quark:white_stained_planks>, <item:quark:white_stained_planks>]
]);
craftingTable.addShaped("orange_stained_planks_stairs_8x", <item:quark:orange_stained_planks_stairs> * 8, [
    [<item:quark:orange_stained_planks>],
    [<item:quark:orange_stained_planks>, <item:quark:orange_stained_planks>],
    [<item:quark:orange_stained_planks>, <item:quark:orange_stained_planks>, <item:quark:orange_stained_planks>]
]);
craftingTable.addShaped("magenta_stained_planks_stairs_8x", <item:quark:magenta_stained_planks_stairs> * 8, [
    [<item:quark:magenta_stained_planks>],
    [<item:quark:magenta_stained_planks>, <item:quark:magenta_stained_planks>],
    [<item:quark:magenta_stained_planks>, <item:quark:magenta_stained_planks>, <item:quark:magenta_stained_planks>]
]);
craftingTable.addShaped("light_blue_stained_planks_stairs_8x", <item:quark:light_blue_stained_planks_stairs> * 8, [
    [<item:quark:light_blue_stained_planks>],
    [<item:quark:light_blue_stained_planks>, <item:quark:light_blue_stained_planks>],
    [<item:quark:light_blue_stained_planks>, <item:quark:light_blue_stained_planks>, <item:quark:light_blue_stained_planks>]
]);
craftingTable.addShaped("yellow_stained_planks_stairs_8x", <item:quark:yellow_stained_planks_stairs> * 8, [
    [<item:quark:yellow_stained_planks>],
    [<item:quark:yellow_stained_planks>, <item:quark:yellow_stained_planks>],
    [<item:quark:yellow_stained_planks>, <item:quark:yellow_stained_planks>, <item:quark:yellow_stained_planks>]
]);
craftingTable.addShaped("lime_stained_planks_stairs_8x", <item:quark:lime_stained_planks_stairs> * 8, [
    [<item:quark:lime_stained_planks>],
    [<item:quark:lime_stained_planks>, <item:quark:lime_stained_planks>],
    [<item:quark:lime_stained_planks>, <item:quark:lime_stained_planks>, <item:quark:lime_stained_planks>]
]);
craftingTable.addShaped("pink_stained_planks_stairs_8x", <item:quark:pink_stained_planks_stairs> * 8, [
    [<item:quark:pink_stained_planks>],
    [<item:quark:pink_stained_planks>, <item:quark:pink_stained_planks>],
    [<item:quark:pink_stained_planks>, <item:quark:pink_stained_planks>, <item:quark:pink_stained_planks>]
]);
craftingTable.addShaped("gray_stained_planks_stairs_8x", <item:quark:gray_stained_planks_stairs> * 8, [
    [<item:quark:gray_stained_planks>],
    [<item:quark:gray_stained_planks>, <item:quark:gray_stained_planks>],
    [<item:quark:gray_stained_planks>, <item:quark:gray_stained_planks>, <item:quark:gray_stained_planks>]
]);
craftingTable.addShaped("light_gray_stained_planks_stairs_8x", <item:quark:light_gray_stained_planks_stairs> * 8, [
    [<item:quark:light_gray_stained_planks>],
    [<item:quark:light_gray_stained_planks>, <item:quark:light_gray_stained_planks>],
    [<item:quark:light_gray_stained_planks>, <item:quark:light_gray_stained_planks>, <item:quark:light_gray_stained_planks>]
]);
craftingTable.addShaped("cyan_stained_planks_stairs_8x", <item:quark:cyan_stained_planks_stairs> * 8, [
    [<item:quark:cyan_stained_planks>],
    [<item:quark:cyan_stained_planks>, <item:quark:cyan_stained_planks>],
    [<item:quark:cyan_stained_planks>, <item:quark:cyan_stained_planks>, <item:quark:cyan_stained_planks>]
]);
craftingTable.addShaped("purple_stained_planks_stairs_8x", <item:quark:purple_stained_planks_stairs> * 8, [
    [<item:quark:purple_stained_planks>],
    [<item:quark:purple_stained_planks>, <item:quark:purple_stained_planks>],
    [<item:quark:purple_stained_planks>, <item:quark:purple_stained_planks>, <item:quark:purple_stained_planks>]
]);
craftingTable.addShaped("blue_stained_planks_stairs_8x", <item:quark:blue_stained_planks_stairs> * 8, [
    [<item:quark:blue_stained_planks>],
    [<item:quark:blue_stained_planks>, <item:quark:blue_stained_planks>],
    [<item:quark:blue_stained_planks>, <item:quark:blue_stained_planks>, <item:quark:blue_stained_planks>]
]);
craftingTable.addShaped("brown_stained_planks_stairs_8x", <item:quark:brown_stained_planks_stairs> * 8, [
    [<item:quark:brown_stained_planks>],
    [<item:quark:brown_stained_planks>, <item:quark:brown_stained_planks>],
    [<item:quark:brown_stained_planks>, <item:quark:brown_stained_planks>, <item:quark:brown_stained_planks>]
]);
craftingTable.addShaped("green_stained_planks_stairs_8x", <item:quark:green_stained_planks_stairs> * 8, [
    [<item:quark:green_stained_planks>],
    [<item:quark:green_stained_planks>, <item:quark:green_stained_planks>],
    [<item:quark:green_stained_planks>, <item:quark:green_stained_planks>, <item:quark:green_stained_planks>]
]);
craftingTable.addShaped("red_stained_planks_stairs_8x", <item:quark:red_stained_planks_stairs> * 8, [
    [<item:quark:red_stained_planks>],
    [<item:quark:red_stained_planks>, <item:quark:red_stained_planks>],
    [<item:quark:red_stained_planks>, <item:quark:red_stained_planks>, <item:quark:red_stained_planks>]
]);
craftingTable.addShaped("black_stained_planks_stairs_8x", <item:quark:black_stained_planks_stairs> * 8, [
    [<item:quark:black_stained_planks>],
    [<item:quark:black_stained_planks>, <item:quark:black_stained_planks>],
    [<item:quark:black_stained_planks>, <item:quark:black_stained_planks>, <item:quark:black_stained_planks>]
]);
craftingTable.addShaped("cobblestone_bricks_stairs_8x", <item:quark:cobblestone_bricks_stairs> * 8, [
    [<item:quark:cobblestone_bricks>],
    [<item:quark:cobblestone_bricks>, <item:quark:cobblestone_bricks>],
    [<item:quark:cobblestone_bricks>, <item:quark:cobblestone_bricks>, <item:quark:cobblestone_bricks>]
]);
craftingTable.addShaped("mossy_cobblestone_bricks_stairs_8x", <item:quark:mossy_cobblestone_bricks_stairs> * 8, [
    [<item:quark:mossy_cobblestone_bricks>],
    [<item:quark:mossy_cobblestone_bricks>, <item:quark:mossy_cobblestone_bricks>],
    [<item:quark:mossy_cobblestone_bricks>, <item:quark:mossy_cobblestone_bricks>, <item:quark:mossy_cobblestone_bricks>]
]);
craftingTable.addShaped("thatch_stairs_8x", <item:quark:thatch_stairs> * 8, [
    [<item:quark:thatch>],
    [<item:quark:thatch>, <item:quark:thatch>],
    [<item:quark:thatch>, <item:quark:thatch>, <item:quark:thatch>]
]);
craftingTable.addShaped("granite_bricks_stairs_8x", <item:quark:granite_bricks_stairs> * 8, [
    [<item:quark:granite_bricks>],
    [<item:quark:granite_bricks>, <item:quark:granite_bricks>],
    [<item:quark:granite_bricks>, <item:quark:granite_bricks>, <item:quark:granite_bricks>]
]);
craftingTable.addShaped("diorite_bricks_stairs_8x", <item:quark:diorite_bricks_stairs> * 8, [
    [<item:quark:diorite_bricks>],
    [<item:quark:diorite_bricks>, <item:quark:diorite_bricks>],
    [<item:quark:diorite_bricks>, <item:quark:diorite_bricks>, <item:quark:diorite_bricks>]
]);
craftingTable.addShaped("andesite_bricks_stairs_8x", <item:quark:andesite_bricks_stairs> * 8, [
    [<item:quark:andesite_bricks>],
    [<item:quark:andesite_bricks>, <item:quark:andesite_bricks>],
    [<item:quark:andesite_bricks>, <item:quark:andesite_bricks>, <item:quark:andesite_bricks>]
]);
craftingTable.addShaped("marble_bricks_stairs_8x", <item:quark:marble_bricks_stairs> * 8, [
    [<item:quark:marble_bricks>],
    [<item:quark:marble_bricks>, <item:quark:marble_bricks>],
    [<item:quark:marble_bricks>, <item:quark:marble_bricks>, <item:quark:marble_bricks>]
]);
craftingTable.addShaped("limestone_bricks_stairs_8x", <item:quark:limestone_bricks_stairs> * 8, [
    [<item:quark:limestone_bricks>],
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>],
    [<item:quark:limestone_bricks>, <item:quark:limestone_bricks>, <item:quark:limestone_bricks>]
]);
craftingTable.addShaped("jasper_bricks_stairs_8x", <item:quark:jasper_bricks_stairs> * 8, [
    [<item:quark:jasper_bricks>],
    [<item:quark:jasper_bricks>, <item:quark:jasper_bricks>],
    [<item:quark:jasper_bricks>, <item:quark:jasper_bricks>, <item:quark:jasper_bricks>]
]);
