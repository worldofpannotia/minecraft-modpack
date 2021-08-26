// Common Items
val bottle=<item:minecraft:glass_bottle>;
val milk=<fluid:minecraft:milk>;

// Recipe Types
val compacting=<recipetype:create:compacting>;
val crushing=<recipetype:create:crushing>;
val cutting=<recipetype:create:cutting>;
val emptying=<recipetype:create:emptying>;
val filling=<recipetype:create:filling>;
val milling=<recipetype:create:milling>;
val mixing=<recipetype:create:mixing>;
val splashing=<recipetype:create:splashing>;

// Tweaks =========================================================================================
splashing.removeByName("create:splashing/gravel");
splashing.addRecipe("gravel_splashing", [<item:minecraft:flint> % 25, <item:create:copper_nugget> % 12], <item:minecraft:gravel>);
splashing.removeByName("create:splashing/red_sand");
splashing.addRecipe("red_sand_splashing", [<item:minecraft:dead_bush> % 5, <item:minecraft:gold_nugget> % 2], <item:minecraft:red_sand>);
splashing.removeByName("create:compat/atmospheric/splashing/red_arid_sand");
splashing.addRecipe("red_arid_sand_splashing", [<item:atmospheric:aloe_kernels> % 5, <item:minecraft:gold_nugget> % 2], <item:atmospheric:red_arid_sand>);
splashing.removeByName("create:splashing/soul_sand");
splashing.addRecipe("soul_sand_splashing", [<item:minecraft:bone_meal> * 2 % 10, <item:minecraft:gold_nugget> % 2], <item:minecraft:soul_sand>);
splashing.addRecipe("soul_soil_splashing", [<item:minecraft:quartz> * 4 % 12, <item:minecraft:gold_nugget> % 2], <item:minecraft:soul_soil>);
furnace.addRecipe("honey_stone", <item:buzzier_bees:crystallized_honey_block>, <item:create:limestone_cobblestone>, 0.1, 200);
milling.addRecipe("honey_milling", [<item:create:limesand>, <item:minecraft:honeycomb> % 50], <item:create:limestone_cobblestone>);
crushing.addRecipe("honey_crushing", [<item:create:limesand>, <item:minecraft:honeycomb> % 50], <item:create:limestone_cobblestone>);
furnace.addRecipe("chocolate_stone", <item:neapolitan:chocolate_block>, <item:create:scoria_cobblestone>, 0.1, 200);
milling.addRecipe("chocolate_milling", [<item:minecraft:soul_sand>, <item:neapolitan:chocolate_bar> % 50], <item:create:scoria_cobblestone>);
crushing.addRecipe("chocolate_crushing", [<item:minecraft:soul_sand>, <item:neapolitan:chocolate_bar> % 50], <item:create:scoria_cobblestone>);
compacting.addRecipe("blastproof_create", "none", <item:savageandravage:blast_proof_plating>, [<item:savageandravage:creeper_spores> * 3, <item:minecraft:gold_ingot> * 2], []);
crushing.addRecipe("crushing_grass_blocks", [<item:minecraft:dirt>, <item:minecraft:grass> * 2, <item:minecraft:grass> % 20, <item:minecraft:tall_grass> % 30, <item:minecraft:tall_grass> % 5], <item:minecraft:grass_block>);

crushing.addRecipe(
    "crushing_diamond_hearts",
    [
        <item:minecraft:diamond>,
        <item:more_jellyfish:diamond_fragment> * 2 % 20,
        <item:more_jellyfish:diamond_shard> * 2 % 10,
        <item:alexsmobs:soul_heart> % 3,
        <item:bhc:blue_heart> % 1
    ],
    <item:quark:diamond_heart>
);

// Food and Drinks ================================================================================
compacting.addRecipe("wheat_pancake", "none", <item:autumnity:pancake>, [<item:autumnity:syrup_bottle>, <item:minecraft:egg>, <item:minecraft:wheat> * 2], [milk * 250]);
compacting.addRecipe("flour_pancake", "none", <item:autumnity:pancake>, [<item:autumnity:syrup_bottle>, <item:minecraft:egg>, <item:create:wheat_flour> * 2], [milk * 250]);
emptying.addRecipe("hot_cocoa_emptying", bottle, <fluid:create:chocolate> * 250, <item:farmersdelight:hot_cocoa>);
filling.addRecipe("hot_cocoa_filling", <item:farmersdelight:hot_cocoa>, bottle, <fluid:create:chocolate> * 250);
emptying.addRecipe("milk_emptying", bottle, milk * 250, <item:neapolitan:milk_bottle>);
filling.addRecipe("milk_filling", <item:neapolitan:milk_bottle>, bottle, milk * 250);
filling.removeByName("create:filling/honeyed_apple");
filling.addRecipe("buzzier_apple", <item:buzzier_bees:honey_apple>, <item:minecraft:apple>, <fluid:create:honey> * 250);
filling.addRecipe("buzzier_bread", <item:buzzier_bees:honey_bread>, <item:minecraft:bread>, <fluid:create:honey> * 250);
filling.addRecipe("buzzier_gooseberries", <item:bayou_blues:honey_glazed_gooseberries>, <item:bayou_blues:gooseberries>, <fluid:create:honey> * 250);
filling.addRecipe("buzzier_pork", <item:buzzier_bees:glazed_porkchop>, <item:minecraft:cooked_porkchop>, <fluid:create:honey> * 250);
mixing.removeByName("create:mixing/chocolate");
mixing.addRecipe("neapolitan_chocolate", "none", <fluid:create:chocolate> * 250, [<item:minecraft:sugar>, <item:minecraft:cocoa_beans> * 2], [milk * 250]);
mixing.addRecipe("vanilla_fudge", "none", <item:neapolitan:vanilla_fudge> * 4, [<item:minecraft:sugar>, <item:neapolitan:dried_vanilla_pods> * 2], [milk * 250]);

mixing.addRecipe("vanilla_milkshake", "none", <item:neapolitan:vanilla_milkshake> * 4, [bottle * 4, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("chocolate_milkshake_ice", "none", <item:neapolitan:chocolate_milkshake> * 4, [bottle * 4, <item:neapolitan:chocolate_bar>, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("chocolate_milkshake_pod", "none", <item:neapolitan:chocolate_milkshake> * 4, [bottle * 4, <item:neapolitan:dried_vanilla_pods>, <item:neapolitan:chocolate_ice_cream>], [milk * 250]);
mixing.addRecipe("strawberry_milkshake_ice", "none", <item:neapolitan:strawberry_milkshake> * 4, [bottle * 4, <item:neapolitan:strawberries>, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("strawberry_milkshake_pod", "none", <item:neapolitan:strawberry_milkshake> * 4, [bottle * 4, <item:neapolitan:dried_vanilla_pods>, <item:neapolitan:strawberry_ice_cream>], [milk * 250]);
mixing.addRecipe("banana_milkshake_ice", "none", <item:neapolitan:banana_milkshake> * 4, [bottle * 4, <item:neapolitan:banana>, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("banana_milkshake_pod", "none", <item:neapolitan:banana_milkshake> * 4, [bottle * 4, <item:neapolitan:dried_vanilla_pods>, <item:neapolitan:banana_ice_cream>], [milk * 250]);
mixing.addRecipe("mint_milkshake_ice", "none", <item:neapolitan:mint_milkshake> * 4, [bottle * 4, <item:neapolitan:mint_leaves>, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("mint_milkshake_pod", "none", <item:neapolitan:mint_milkshake> * 4, [bottle * 4, <item:neapolitan:dried_vanilla_pods>, <item:neapolitan:mint_ice_cream>], [milk * 250]);
mixing.addRecipe("adzuki_milkshake_ice", "none", <item:neapolitan:adzuki_milkshake> * 4, [bottle * 4, <item:neapolitan:roasted_adzuki_beans>, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("adzuki_milkshake_pod", "none", <item:neapolitan:adzuki_milkshake> * 4, [bottle * 4, <item:neapolitan:dried_vanilla_pods>, <item:neapolitan:adzuki_ice_cream>], [milk * 250]);
mixing.addRecipe("yucca_milkshake_ice", "none", <item:peculiars:yucca_milkshake> * 4, [bottle * 4, <item:atmospheric:yucca_fruit>, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("yucca_milkshake_pod", "none", <item:peculiars:yucca_milkshake> * 4, [bottle * 4, <item:neapolitan:dried_vanilla_pods>, <item:peculiars:yucca_ice_cream>], [milk * 250]);
mixing.addRecipe("aloe_milkshake_ice", "none", <item:peculiars:aloe_milkshake> * 4, [bottle * 4, <item:atmospheric:aloe_leaves>, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("aloe_milkshake_pod", "none", <item:peculiars:aloe_milkshake> * 4, [bottle * 4, <item:neapolitan:dried_vanilla_pods>, <item:peculiars:aloe_ice_cream>], [milk * 250]);
mixing.addRecipe("passionfruit_milkshake_ice", "none", <item:peculiars:passionfruit_milkshake> * 4, [bottle * 4, <item:atmospheric:passionfruit>, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("passionfruit_milkshake_pod", "none", <item:peculiars:passionfruit_milkshake> * 4, [bottle * 4, <item:neapolitan:dried_vanilla_pods>, <item:peculiars:passionfruit_ice_cream>], [milk * 250]);
mixing.addRecipe("pumpkin_milkshake_ice", "none", <item:seasonals:pumpkin_milkshake> * 4, [bottle * 4, <item:seasonals:roasted_pumpkin>, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("pumpkin_milkshake_pod", "none", <item:seasonals:pumpkin_milkshake> * 4, [bottle * 4, <item:neapolitan:dried_vanilla_pods>, <item:seasonals:pumpkin_ice_cream>], [milk * 250]);
mixing.addRecipe("sweet_berry_milkshake_ice", "none", <item:seasonals:sweet_berry_milkshake> * 4, [bottle * 4, <item:minecraft:sweet_berries>, <item:neapolitan:vanilla_ice_cream>], [milk * 250]);
mixing.addRecipe("sweet_berry_milkshake_pod", "none", <item:seasonals:sweet_berry_milkshake> * 4, [bottle * 4, <item:neapolitan:dried_vanilla_pods>, <item:seasonals:sweet_berry_ice_cream>], [milk * 250]);

// Feature Parity =================================================================================
crushing.addRecipe("red_crushing", [<item:minecraft:red_sand>], <item:minecraft:red_sandstone>);
crushing.addRecipe("arid_crushing", [<item:atmospheric:arid_sand>], <item:atmospheric:arid_sandstone>);
crushing.addRecipe("red_arid_crushing", [<item:atmospheric:red_arid_sand>], <item:atmospheric:red_arid_sandstone>);
crushing.addRecipe("soul_crushing", [<item:minecraft:soul_sand>], <item:quark:soul_sandstone>);

cutting.addRecipe("jacaranda_log", <item:abundance:stripped_jacaranda_log>, <item:abundance:jacaranda_log>);
cutting.addRecipe("jacaranda_wood", <item:abundance:stripped_jacaranda_wood>, <item:abundance:jacaranda_wood>);
cutting.addRecipe("stripped_jacaranda_log", <item:abundance:jacaranda_planks> * 5, <item:abundance:stripped_jacaranda_log>);
cutting.addRecipe("stripped_jacaranda_wood", <item:abundance:jacaranda_planks> * 5, <item:abundance:stripped_jacaranda_wood>);
cutting.addRecipe("redbud_log", <item:abundance:stripped_redbud_log>, <item:abundance:redbud_log>);
cutting.addRecipe("flowering_redbud_log", <item:abundance:stripped_redbud_log>, <item:abundance:flowering_redbud_log>);
cutting.addRecipe("redbud_wood", <item:abundance:stripped_redbud_wood>, <item:abundance:redbud_wood>);
cutting.addRecipe("flowering_redbud_wood", <item:abundance:stripped_redbud_wood>, <item:abundance:flowering_redbud_wood>);
cutting.addRecipe("stripped_redbud_log", <item:abundance:redbud_planks> * 5, <item:abundance:stripped_redbud_log>);
cutting.addRecipe("stripped_redbud_wood", <item:abundance:redbud_planks> * 5, <item:abundance:stripped_redbud_wood>);

cutting.addRecipe("morado_log", <item:atmospheric:stripped_morado_log>, <item:atmospheric:morado_log>);
cutting.addRecipe("morado_wood", <item:atmospheric:stripped_morado_wood>, <item:atmospheric:morado_wood>);
cutting.addRecipe("stripped_morado_log", <item:atmospheric:morado_planks> * 5, <item:atmospheric:stripped_morado_log>);
cutting.addRecipe("stripped_morado_wood", <item:atmospheric:morado_planks> * 5, <item:atmospheric:stripped_morado_wood>);
cutting.addRecipe("watchful_aspen_log", <item:atmospheric:stripped_aspen_log>, <item:atmospheric:watchful_aspen_log>);
cutting.addRecipe("watchful_aspen_wood", <item:atmospheric:stripped_aspen_wood>, <item:atmospheric:watchful_aspen_wood>);
cutting.addRecipe("crustose_log", <item:atmospheric:aspen_log>, <item:atmospheric:crustose_log>);
cutting.addRecipe("crustose_wood", <item:atmospheric:aspen_wood>, <item:atmospheric:crustose_wood>);
cutting.addRecipe("aspen_wood", <item:atmospheric:stripped_aspen_wood>, <item:atmospheric:aspen_wood>);
cutting.addRecipe("stripped_aspen_wood", <item:atmospheric:aspen_planks> * 5, <item:atmospheric:stripped_aspen_wood>);
cutting.addRecipe("rosewood", <item:atmospheric:stripped_rosewood>, <item:atmospheric:rosewood>);
cutting.addRecipe("stripped_rosewood", <item:atmospheric:rosewood_planks> * 5, <item:atmospheric:stripped_rosewood>);
cutting.addRecipe("yucca_wood", <item:atmospheric:stripped_yucca_wood>, <item:atmospheric:yucca_wood>);
cutting.addRecipe("stripped_yucca_wood", <item:atmospheric:yucca_planks> * 5, <item:atmospheric:stripped_yucca_wood>);
cutting.addRecipe("kousa_wood", <item:atmospheric:stripped_kousa_wood>, <item:atmospheric:kousa_wood>);
cutting.addRecipe("stripped_kousa_wood", <item:atmospheric:kousa_planks> * 5, <item:atmospheric:stripped_kousa_wood>);
cutting.addRecipe("grimwood", <item:atmospheric:stripped_grimwood>, <item:atmospheric:grimwood>);
cutting.addRecipe("stripped_grimwood", <item:atmospheric:grimwood_planks> * 5, <item:atmospheric:stripped_grimwood>);

cutting.addRecipe("maple_wood", <item:autumnity:stripped_maple_wood>, <item:autumnity:maple_wood>);
cutting.addRecipe("stripped_maple_wood", <item:autumnity:maple_planks> * 5, <item:autumnity:stripped_maple_wood>);
cutting.addRecipe("sappy_maple_log", <item:autumnity:maple_planks> * 5, <item:autumnity:sappy_maple_log>);
cutting.addRecipe("sappy_maple_wood", <item:autumnity:maple_planks> * 5, <item:autumnity:sappy_maple_wood>);

cutting.addRecipe("cypress_log", <item:bayou_blues:stripped_cypress_log>, <item:bayou_blues:cypress_log>);
cutting.addRecipe("cypress_wood", <item:bayou_blues:stripped_cypress_wood>, <item:bayou_blues:cypress_wood>);
cutting.addRecipe("stripped_cypress_log", <item:bayou_blues:cypress_planks> * 5, <item:bayou_blues:stripped_cypress_log>);
cutting.addRecipe("stripped_cypress_wood", <item:bayou_blues:cypress_planks> * 5, <item:bayou_blues:stripped_cypress_wood>);

cutting.addRecipe("red_mushroom_stem", <item:enhanced_mushrooms:stripped_red_mushroom_stem>, <item:enhanced_mushrooms:red_mushroom_stem>);
cutting.addRecipe("red_mushroom_hyphae", <item:enhanced_mushrooms:stripped_red_mushroom_hyphae>, <item:enhanced_mushrooms:red_mushroom_hyphae>);
cutting.addRecipe("stripped_red_mushroom_stem", <item:enhanced_mushrooms:red_mushroom_planks> * 5, <item:enhanced_mushrooms:stripped_red_mushroom_stem>);
cutting.addRecipe("stripped_red_mushroom_hyphae", <item:enhanced_mushrooms:red_mushroom_planks> * 5, <item:enhanced_mushrooms:stripped_red_mushroom_hyphae>);
cutting.addRecipe("brown_mushroom_stem", <item:enhanced_mushrooms:stripped_brown_mushroom_stem>, <item:enhanced_mushrooms:brown_mushroom_stem>);
cutting.addRecipe("brown_mushroom_hyphae", <item:enhanced_mushrooms:stripped_brown_mushroom_hyphae>, <item:enhanced_mushrooms:brown_mushroom_hyphae>);
cutting.addRecipe("stripped_brown_mushroom_stem", <item:enhanced_mushrooms:brown_mushroom_planks> * 5, <item:enhanced_mushrooms:stripped_brown_mushroom_stem>);
cutting.addRecipe("stripped_brown_mushroom_hyphae", <item:enhanced_mushrooms:brown_mushroom_planks> * 5, <item:enhanced_mushrooms:stripped_brown_mushroom_hyphae>);
cutting.addRecipe("glowshroom_stem", <item:enhanced_mushrooms:stripped_glowshroom_stem>, <item:enhanced_mushrooms:glowshroom_stem>);
cutting.addRecipe("glowshroom_hyphae", <item:enhanced_mushrooms:stripped_glowshroom_hyphae>, <item:enhanced_mushrooms:glowshroom_hyphae>);
cutting.addRecipe("stripped_glowshroom_stem", <item:enhanced_mushrooms:glowshroom_planks> * 5, <item:enhanced_mushrooms:stripped_glowshroom_stem>);
cutting.addRecipe("stripped_glowshroom_hyphae", <item:enhanced_mushrooms:glowshroom_planks> * 5, <item:enhanced_mushrooms:stripped_glowshroom_hyphae>);

cutting.addRecipe("willow_log", <item:environmental:stripped_willow_log>, <item:environmental:willow_log>);
cutting.addRecipe("willow_wood", <item:environmental:stripped_willow_wood>, <item:environmental:willow_wood>);
cutting.addRecipe("stripped_willow_log", <item:environmental:willow_planks> * 5, <item:environmental:stripped_willow_log>);
cutting.addRecipe("stripped_willow_wood", <item:environmental:willow_planks> * 5, <item:environmental:stripped_willow_wood>);
cutting.addRecipe("cherry_log", <item:environmental:stripped_cherry_log>, <item:environmental:cherry_log>);
cutting.addRecipe("cherry_wood", <item:environmental:stripped_cherry_wood>, <item:environmental:cherry_wood>);
cutting.addRecipe("stripped_cherry_log", <item:environmental:cherry_planks> * 5, <item:environmental:stripped_cherry_log>);
cutting.addRecipe("stripped_cherry_wood", <item:environmental:cherry_planks> * 5, <item:environmental:stripped_cherry_wood>);
cutting.addRecipe("wisteria_log", <item:environmental:stripped_wisteria_log>, <item:environmental:wisteria_log>);
cutting.addRecipe("wisteria_wood", <item:environmental:stripped_wisteria_wood>, <item:environmental:wisteria_wood>);
cutting.addRecipe("stripped_wisteria_log", <item:environmental:wisteria_planks> * 5, <item:environmental:stripped_wisteria_log>);
cutting.addRecipe("stripped_wisteria_wood", <item:environmental:wisteria_planks> * 5, <item:environmental:stripped_wisteria_wood>);

cutting.addRecipe("poise_wood", <item:endergetic:stripped_poise_wood>, <item:endergetic:poise_wood>);
cutting.addRecipe("stripped_poise_wood", <item:endergetic:poise_planks> * 5, <item:endergetic:stripped_poise_wood>);
cutting.addRecipe("glowing_poise_stem", <item:endergetic:stripped_poise_stem>, <item:endergetic:glowing_poise_stem>);
cutting.addRecipe("glowing_poise_wood", <item:endergetic:stripped_poise_wood>, <item:endergetic:glowing_poise_wood>);

cutting.addRecipe("driftwood", <item:upgrade_aquatic:stripped_driftwood>, <item:upgrade_aquatic:driftwood>);
cutting.addRecipe("stripped_driftwood", <item:upgrade_aquatic:driftwood_planks> * 5, <item:upgrade_aquatic:stripped_driftwood>);
cutting.addRecipe("river_wood", <item:upgrade_aquatic:stripped_river_wood>, <item:upgrade_aquatic:river_wood>);
cutting.addRecipe("stripped_river_wood", <item:upgrade_aquatic:river_planks> * 5, <item:upgrade_aquatic:stripped_river_wood>);

crushing.addRecipe("buttercup_crushing", [<item:minecraft:yellow_dye> * 2, <item:minecraft:brown_dye> % 10], <item:buzzier_bees:buttercup>);
milling.addRecipe("buttercup_milling", [<item:minecraft:yellow_dye> * 2, <item:minecraft:brown_dye> % 10], <item:buzzier_bees:buttercup>);
crushing.addRecipe("white_clover_crushing", [<item:minecraft:white_dye> * 2, <item:minecraft:lime_dye> % 10], <item:buzzier_bees:white_clover>);
milling.addRecipe("white_clover_milling", [<item:minecraft:white_dye> * 2, <item:minecraft:lime_dye> % 10], <item:buzzier_bees:white_clover>);
crushing.addRecipe("pink_clover_crushing", [<item:minecraft:pink_dye> * 2, <item:minecraft:lime_dye> % 10], <item:buzzier_bees:pink_clover>);
milling.addRecipe("pink_clover_milling", [<item:minecraft:pink_dye> * 2, <item:minecraft:lime_dye> % 10], <item:buzzier_bees:pink_clover>);

crushing.addRecipe("tall_yucca_crushing", [<item:minecraft:light_gray_dye> * 3, <item:minecraft:light_gray_dye> * 2 % 25, <item:minecraft:white_dye> * 2 % 5], <item:atmospheric:tall_yucca_flower>);
milling.addRecipe("tall_yucca_milling", [<item:minecraft:light_gray_dye> * 3, <item:minecraft:light_gray_dye> * 2 % 25, <item:minecraft:white_dye> * 2 % 5], <item:atmospheric:tall_yucca_flower>);
crushing.addRecipe("water_hyacinth_crushing", [<item:minecraft:purple_dye> * 2, <item:minecraft:green_dye> % 20], <item:atmospheric:water_hyacinth>);
milling.addRecipe("water_hyacinth_milling", [<item:minecraft:purple_dye> * 2, <item:minecraft:green_dye> % 20], <item:atmospheric:water_hyacinth>);

crushing.addRecipe("sunny_marigold_crushing", [<item:minecraft:orange_dye> * 2, <item:minecraft:yellow_dye> % 20], <item:abundance:sunny_marigold>);
milling.addRecipe("sunny_marigold_milling", [<item:minecraft:orange_dye> * 2, <item:minecraft:yellow_dye> % 20], <item:abundance:sunny_marigold>);
crushing.addRecipe("shady_marigold_crushing", [<item:minecraft:orange_dye> * 2, <item:minecraft:brown_dye> % 20], <item:abundance:shady_marigold>);
milling.addRecipe("shady_marigold_milling", [<item:minecraft:orange_dye> * 2, <item:minecraft:brown_dye> % 20], <item:abundance:shady_marigold>);
crushing.addRecipe("tall_marigold_crushing", [<item:minecraft:orange_dye> * 3, <item:minecraft:brown_dye> % 50, <item:minecraft:yellow_dye> % 50], <item:abundance:tall_marigold>);
milling.addRecipe("tall_marigold_milling", [<item:minecraft:orange_dye> * 3, <item:minecraft:brown_dye> % 50, <item:minecraft:yellow_dye> % 50], <item:abundance:tall_marigold>);
crushing.addRecipe("chicory_crushing", [<item:minecraft:light_blue_dye> * 2, <item:minecraft:magenta_dye> % 5], <item:abundance:chicory>);
milling.addRecipe("chicory_milling", [<item:minecraft:light_blue_dye> * 2, <item:minecraft:magenta_dye> % 5], <item:abundance:chicory>);
crushing.addRecipe("amaranthus_crushing", [<item:minecraft:red_dye> * 2], <item:abundance:amaranthus>);
milling.addRecipe("amaranthus_milling", [<item:minecraft:red_dye> * 2], <item:abundance:amaranthus>);
crushing.addRecipe("nemophila_crushing", [<item:minecraft:light_blue_dye> * 2], <item:abundance:nemophila>);
milling.addRecipe("nemophila_milling", [<item:minecraft:light_blue_dye> * 2], <item:abundance:nemophila>);
crushing.addRecipe("purple_african_daisy_crushing", [<item:minecraft:purple_dye> * 2], <item:abundance:purple_african_daisy>);
milling.addRecipe("purple_african_daisy_milling", [<item:minecraft:purple_dye> * 2], <item:abundance:purple_african_daisy>);
crushing.addRecipe("yellow_african_daisy_crushing", [<item:minecraft:yellow_dye> * 2], <item:abundance:yellow_african_daisy>);
milling.addRecipe("yellow_african_daisy_milling", [<item:minecraft:yellow_dye> * 2], <item:abundance:yellow_african_daisy>);

crushing.addRecipe("blue_lily_crushing", [<item:minecraft:blue_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:blue_lily>);
milling.addRecipe("blue_lily_milling", [<item:minecraft:blue_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:blue_lily>);
crushing.addRecipe("light_gray_lily_crushing", [<item:minecraft:light_gray_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:light_gray_lily>);
milling.addRecipe("light_gray_lily_milling", [<item:minecraft:light_gray_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:light_gray_lily>);
crushing.addRecipe("cyan_lily_crushing", [<item:minecraft:cyan_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:cyan_lily>);
milling.addRecipe("cyan_lily_milling", [<item:minecraft:cyan_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:cyan_lily>);
crushing.addRecipe("light_blue_lily_crushing", [<item:minecraft:light_blue_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:light_blue_lily>);
milling.addRecipe("light_blue_lily_milling", [<item:minecraft:light_blue_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:light_blue_lily>);
crushing.addRecipe("magenta_lily_crushing", [<item:minecraft:magenta_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:magenta_lily>);
milling.addRecipe("magenta_lily_milling", [<item:minecraft:magenta_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:magenta_lily>);
crushing.addRecipe("pink_lily_crushing", [<item:minecraft:pink_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:pink_lily>);
milling.addRecipe("pink_lily_milling", [<item:minecraft:pink_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:pink_lily>);
crushing.addRecipe("purple_lily_crushing", [<item:minecraft:purple_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:purple_lily>);
milling.addRecipe("purple_lily_milling", [<item:minecraft:purple_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:purple_lily>);
crushing.addRecipe("white_lily_crushing", [<item:minecraft:white_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:white_lily>);
milling.addRecipe("white_lily_milling", [<item:minecraft:white_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:white_lily>);

crushing.addRecipe("cartwheel_crushing", [<item:minecraft:pink_dye> * 2, <item:minecraft:yellow_dye> % 20], <item:environmental:cartwheel>);
milling.addRecipe("cartwheel_milling", [<item:minecraft:pink_dye> * 2, <item:minecraft:yellow_dye> % 20], <item:environmental:cartwheel>);
crushing.addRecipe("bluebell_crushing", [<item:minecraft:blue_dye> * 2, <item:minecraft:light_blue_dye> % 10], <item:environmental:bluebell>);
milling.addRecipe("bluebell_milling", [<item:minecraft:blue_dye> * 2, <item:minecraft:light_blue_dye> % 10], <item:environmental:bluebell>);
crushing.addRecipe("violet_crushing", [<item:minecraft:purple_dye> * 2, <item:minecraft:blue_dye> % 5], <item:environmental:violet>);
milling.addRecipe("violet_milling", [<item:minecraft:purple_dye> * 2, <item:minecraft:blue_dye> % 5], <item:environmental:violet>);
crushing.addRecipe("dianthus_crushing", [<item:minecraft:green_dye> * 2, <item:minecraft:lime_dye> % 25], <item:environmental:dianthus>);
milling.addRecipe("dianthus_milling", [<item:minecraft:green_dye> * 2, <item:minecraft:lime_dye> % 25], <item:environmental:dianthus>);
crushing.addRecipe("red_lotus_flower_crushing", [<item:minecraft:red_dye> * 2, <item:minecraft:orange_dye> % 5], <item:environmental:red_lotus_flower>);
milling.addRecipe("red_lotus_flower_milling", [<item:minecraft:red_dye> * 2, <item:minecraft:orange_dye> % 5], <item:environmental:red_lotus_flower>);
crushing.addRecipe("white_lotus_flower_crushing", [<item:minecraft:white_dye> * 2, <item:minecraft:orange_dye> % 5], <item:environmental:white_lotus_flower>);
milling.addRecipe("white_lotus_flower_milling", [<item:minecraft:white_dye> * 2, <item:minecraft:orange_dye> % 5], <item:environmental:white_lotus_flower>);
crushing.addRecipe("bird_of_paradise_crushing", [<item:minecraft:lime_dye>, <item:minecraft:red_dye> * 3 % 50, <item:minecraft:yellow_dye> * 3 % 50, <item:minecraft:blue_dye> * 3 % 50], <item:environmental:bird_of_paradise>);
milling.addRecipe("bird_of_paradise_milling", [<item:minecraft:lime_dye>, <item:minecraft:red_dye> * 3 % 50, <item:minecraft:yellow_dye> * 3 % 50, <item:minecraft:blue_dye> * 3 % 50], <item:environmental:bird_of_paradise>);
crushing.addRecipe("yellow_hibiscus_crushing", [<item:minecraft:yellow_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:yellow_hibiscus>);
milling.addRecipe("yellow_hibiscus_milling", [<item:minecraft:yellow_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:yellow_hibiscus>);
crushing.addRecipe("orange_hibiscus_crushing", [<item:minecraft:orange_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:orange_hibiscus>);
milling.addRecipe("orange_hibiscus_milling", [<item:minecraft:orange_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:orange_hibiscus>);
crushing.addRecipe("red_hibiscus_crushing", [<item:minecraft:red_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:red_hibiscus>);
milling.addRecipe("red_hibiscus_milling", [<item:minecraft:red_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:red_hibiscus>);
crushing.addRecipe("pink_hibiscus_crushing", [<item:minecraft:pink_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:pink_hibiscus>);
milling.addRecipe("pink_hibiscus_milling", [<item:minecraft:pink_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:pink_hibiscus>);
crushing.addRecipe("magenta_hibiscus_crushing", [<item:minecraft:magenta_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:magenta_hibiscus>);
milling.addRecipe("magenta_hibiscus_milling", [<item:minecraft:magenta_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:magenta_hibiscus>);
crushing.addRecipe("purple_hibiscus_crushing", [<item:minecraft:purple_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:purple_hibiscus>);
milling.addRecipe("purple_hibiscus_milling", [<item:minecraft:purple_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:purple_hibiscus>);
crushing.addRecipe("pink_delphinium_crushing", [<item:minecraft:pink_dye> * 3, <item:minecraft:pink_dye> * 2 % 25], <item:environmental:pink_delphinium>);
milling.addRecipe("pink_delphinium_milling", [<item:minecraft:pink_dye> * 3, <item:minecraft:pink_dye> * 2 % 25], <item:environmental:pink_delphinium>);
crushing.addRecipe("blue_delphinium_crushing", [<item:minecraft:blue_dye> * 3, <item:minecraft:blue_dye> * 2 % 25], <item:environmental:blue_delphinium>);
milling.addRecipe("blue_delphinium_milling", [<item:minecraft:blue_dye> * 3, <item:minecraft:blue_dye> * 2 % 25], <item:environmental:blue_delphinium>);
crushing.addRecipe("purple_delphinium_crushing", [<item:minecraft:purple_dye> * 3, <item:minecraft:purple_dye> * 2 % 25], <item:environmental:purple_delphinium>);
milling.addRecipe("purple_delphinium_milling", [<item:minecraft:purple_dye> * 3, <item:minecraft:purple_dye> * 2 % 25], <item:environmental:purple_delphinium>);
crushing.addRecipe("white_delphinium_crushing", [<item:minecraft:white_dye> * 3, <item:minecraft:white_dye> * 2 % 25], <item:environmental:white_delphinium>);
milling.addRecipe("white_delphinium_milling", [<item:minecraft:white_dye> * 3, <item:minecraft:white_dye> * 2 % 25], <item:environmental:white_delphinium>);
