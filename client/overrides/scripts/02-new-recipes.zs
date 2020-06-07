craftingTable.addShapeless("shapeless_oak_chest_to_chest", <item:minecraft:chest>, [<item:quark:oak_chest>], null);
craftingTable.addShapeless("shapeless_spruce_chest_to_chest", <item:minecraft:chest>, [<item:quark:spruce_chest>], null);
craftingTable.addShapeless("shapeless_birch_chest_to_chest", <item:minecraft:chest>, [<item:quark:birch_chest>], null);
craftingTable.addShapeless("shapeless_jungle_chest_to_chest", <item:minecraft:chest>, [<item:quark:jungle_chest>], null);
craftingTable.addShapeless("shapeless_acacia_chest_to_chest", <item:minecraft:chest>, [<item:quark:acacia_chest>], null);
craftingTable.addShapeless("shapeless_dark_oak_chest_to_chest", <item:minecraft:chest>, [<item:quark:dark_oak_chest>], null);

# Allow converting blocks back to their items
craftingTable.addShapeless("shapeless_sapling_to_sticks", <item:minecraft:stick> * 2, [<tag:minecraft:saplings>], null);
craftingTable.addShapeless("shapeless_quartz_block_to_quartz", <item:minecraft:quartz> * 4, [<item:minecraft:quartz_block>], null);
craftingTable.addShapeless("shapeless_nether_wart_block_to_wart", <item:minecraft:nether_wart> * 9, [<item:minecraft:nether_wart_block>], null);
craftingTable.addShapeless("shapeless_magma_to_cream", <item:minecraft:magma_cream> * 4, [<item:minecraft:magma_block>], null);

# Make grass paths convertible to dirt (for when silk touch picks up the path)
craftingTable.addShapeless("shapeless_path_to_dirt", <item:minecraft:dirt>, [<item:minecraft:grass_path>], null);

# Make creative items from Refined Storage craftable with nether stars
craftingTable.addShaped("rs_creative_controller", <item:refinedstorage:creative_controller>, [
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:nether_star>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:silicon>, <item:refinedstorage:machine_casing>, <item:refinedstorage:silicon>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:silicon>, <item:refinedstorage:quartz_enriched_iron>]
]);

craftingTable.addShaped("rs_creative_storage_disk", <item:refinedstorage:creative_storage_disk>, [
    [<tag:forge:glass>, <item:minecraft:redstone>, <tag:forge:glass>],
    [<item:minecraft:redstone>, <item:minecraft:nether_star>, <item:minecraft:redstone>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:quartz_enriched_iron>]
]);

craftingTable.addShapeless("rs_creative_fluid_storage_disk", <item:refinedstorage:creative_fluid_storage_disk>, [<item:refinedstorage:creative_storage_disk>, <item:minecraft:bucket>]);

craftingTable.addShaped("rs_creative_wireless_grid", <item:refinedstorage:creative_wireless_grid>, [
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:ender_pearl>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:grid>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:nether_star>, <item:refinedstorage:quartz_enriched_iron>]
]);

craftingTable.addShaped("rs_creative_wireless_fluid_grid", <item:refinedstorage:creative_wireless_fluid_grid>, [
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:ender_pearl>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:fluid_grid>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:nether_star>, <item:refinedstorage:quartz_enriched_iron>]
]);

craftingTable.addShaped("rs_creative_wireless_crafting_monitor", <item:refinedstorage:creative_wireless_crafting_monitor>, [
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:ender_pearl>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:crafting_monitor>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:nether_star>, <item:refinedstorage:quartz_enriched_iron>]
]);

craftingTable.addShaped("rs_creative_wireless_crafting_grid", <item:refinedstorageaddons:creative_wireless_crafting_grid>, [
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:ender_pearl>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:crafting_grid>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:nether_star>, <item:refinedstorage:quartz_enriched_iron>]
]);
