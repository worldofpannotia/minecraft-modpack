val strng=<tag:items:forge:string>;
val dirt=<item:minecraft:dirt>;

# Allow fermented spider eyes to be crafted with any mushroom, not just brown ones
craftingTable.removeByName("minecraft:fermented_spider_eye");
craftingTable.addShapeless("universal_fermented_spider_eye", <item:minecraft:fermented_spider_eye>, [<item:minecraft:sugar>, <item:minecraft:spider_eye>, <tag:items:forge:mushrooms>]);

# Allow converting wheat to seeds
craftingTable.addShapeless("wheat_to_seeds", <item:minecraft:wheat_seeds> * 2, [<tag:items:forge:crops/wheat>]);

# Make flint craftable from 3 gravel
craftingTable.addShapeless("gravel_to_flint", <item:minecraft:flint>, [<tag:items:forge:gravel>, <tag:items:forge:gravel>, <tag:items:forge:gravel>]);

# 2 logs -> 16 sticks shortcut recipe
craftingTable.addShaped("logs_to_sticks", <item:minecraft:stick> * 16, [
    [<tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>]
]);

# Allow smelting rotten flesh to leather
furnace.addRecipe("smelt_rotten_flesh_to_leather", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 1, 40);
blastFurnace.addRecipe("blast_rotten_flesh_to_leather", <item:minecraft:leather>, <item:minecraft:rotten_flesh>, 1, 20);

#snip modnotloaded nether_extension
# Allow converting between BHC and Nether Extension wither bones
craftingTable.addShapeless("bhc_ne_wither_bone", <item:nether_extension:wither_bone>, [<item:bhc:wither_bone>]);
craftingTable.addShapeless("ne_bhc_wither_bone", <item:bhc:wither_bone>, [<item:nether_extension:wither_bone>]);
#snip end

#snip modnotloaded caverns_and_chasms
# Allow converting between Charm and Caverns and Chasms' gold lanterns
craftingTable.addShapeless("ch_cnc_gold_lantern", <item:caverns_and_chasms:golden_lantern>, [<item:charm:gold_lantern>]);
craftingTable.addShapeless("cnc_ch_gold_lantern", <item:charm:gold_lantern>, [<item:caverns_and_chasms:golden_lantern>]);
#snip end

# Make spawners craftable into themselves to clear NBT data
craftingTable.addShapeless("spawner_to_spawner", <item:minecraft:spawner>, [<item:minecraft:spawner>]);

# Allow converting blocks back to their items
craftingTable.addShapeless("shapeless_sapling_to_sticks", <item:minecraft:stick> * 2, [<tag:items:minecraft:saplings>]);
craftingTable.addShapeless("shapeless_quartz_block_to_quartz", <item:minecraft:quartz> * 4, [<item:minecraft:quartz_block>]);
craftingTable.addShapeless("shapeless_nether_wart_block_to_wart", <item:minecraft:nether_wart> * 4, [<item:minecraft:nether_wart_block>]);
craftingTable.addShapeless("shapeless_magma_to_cream", <item:minecraft:magma_cream> * 4, [<item:minecraft:magma_block>]);
craftingTable.addShapeless("shapeless_blue_ice_to_packed", <item:minecraft:packed_ice> * 9, [<item:minecraft:blue_ice>]);
craftingTable.addShapeless("shapeless_packed_ice_to_ice", <item:minecraft:ice> * 9, [<item:minecraft:packed_ice>]);

# Make grass paths convertible to dirt (for when silk touch picks up the path)
craftingTable.addShapeless("shapeless_path_to_dirt", <item:minecraft:dirt>, [<item:minecraft:grass_path>]);

# Allow converting between Quark crates and Farmer's Delight ones
craftingTable.addShapeless("shapeless_fd_qrk_beetcrate", <item:farmersdelight:beetroot_crate>, [<item:quark:beetroot_crate>]);
craftingTable.addShapeless("shapeless_qrk_fd_beetcrate", <item:quark:beetroot_crate>, [<item:farmersdelight:beetroot_crate>]);
craftingTable.addShapeless("shapeless_fd_qrk_carrotcrate", <item:farmersdelight:carrot_crate>, [<item:quark:carrot_crate>]);
craftingTable.addShapeless("shapeless_qrk_fd_carrotcrate", <item:quark:carrot_crate>, [<item:farmersdelight:carrot_crate>]);

# Allow converting between Quark candles and Buzzier Bees ones
craftingTable.addShapeless("shapeless_bb_qrk_blk_candle", <item:buzzier_bees:black_candle>, [<item:quark:black_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_blk_candle", <item:quark:black_candle>, [<item:buzzier_bees:black_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_blu_candle", <item:buzzier_bees:blue_candle>, [<item:quark:blue_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_blu_candle", <item:quark:blue_candle>, [<item:buzzier_bees:blue_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_brn_candle", <item:buzzier_bees:brown_candle>, [<item:quark:brown_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_brn_candle", <item:quark:brown_candle>, [<item:buzzier_bees:brown_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_cyn_candle", <item:buzzier_bees:cyan_candle>, [<item:quark:cyan_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_cyn_candle", <item:quark:cyan_candle>, [<item:buzzier_bees:cyan_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_gry_candle", <item:buzzier_bees:gray_candle>, [<item:quark:gray_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_gry_candle", <item:quark:gray_candle>, [<item:buzzier_bees:gray_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_grn_candle", <item:buzzier_bees:green_candle>, [<item:quark:green_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_grn_candle", <item:quark:green_candle>, [<item:buzzier_bees:green_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_lblu_candle", <item:buzzier_bees:light_blue_candle>, [<item:quark:light_blue_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_lblu_candle", <item:quark:light_blue_candle>, [<item:buzzier_bees:light_blue_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_lgry_candle", <item:buzzier_bees:light_gray_candle>, [<item:quark:light_gray_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_lgry_candle", <item:quark:light_gray_candle>, [<item:buzzier_bees:light_gray_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_lm_candle", <item:buzzier_bees:lime_candle>, [<item:quark:lime_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_lm_candle", <item:quark:lime_candle>, [<item:buzzier_bees:lime_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_mag_candle", <item:buzzier_bees:magenta_candle>, [<item:quark:magenta_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_mag_candle", <item:quark:magenta_candle>, [<item:buzzier_bees:magenta_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_orn_candle", <item:buzzier_bees:orange_candle>, [<item:quark:orange_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_orn_candle", <item:quark:orange_candle>, [<item:buzzier_bees:orange_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_pnk_candle", <item:buzzier_bees:pink_candle>, [<item:quark:pink_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_pnk_candle", <item:quark:pink_candle>, [<item:buzzier_bees:pink_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_pur_candle", <item:buzzier_bees:purple_candle>, [<item:quark:purple_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_pur_candle", <item:quark:purple_candle>, [<item:buzzier_bees:purple_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_red_candle", <item:buzzier_bees:red_candle>, [<item:quark:red_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_red_candle", <item:quark:red_candle>, [<item:buzzier_bees:red_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_wht_candle", <item:buzzier_bees:white_candle>, [<item:quark:white_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_wht_candle", <item:quark:white_candle>, [<item:buzzier_bees:white_candle>]);
craftingTable.addShapeless("shapeless_bb_qrk_yel_candle", <item:buzzier_bees:yellow_candle>, [<item:quark:yellow_candle>]);
craftingTable.addShapeless("shapeless_qrk_bb_yel_candle", <item:quark:yellow_candle>, [<item:buzzier_bees:yellow_candle>]);

# Convert between Create and Quark's limestone
craftingTable.addShapeless("create_quark_limestone", <item:quark:limestone>, [<item:create:limestone>]);
craftingTable.addShapeless("quark_create_limestone", <item:create:limestone>, [<item:quark:limestone>]);
