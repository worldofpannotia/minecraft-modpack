# Re-add string-to-wool recipe
craftingTable.addShaped("string_to_wool", <item:minecraft:white_wool>, [
    [<tag:forge:string>, <tag:forge:string>],
    [<tag:forge:string>, <tag:forge:string>]
]);

# Allow converting Quark's chests to vanilla ones
craftingTable.addShapeless("shapeless_oak_chest_to_chest", <item:minecraft:chest>, [<item:quark:oak_chest>], null);
craftingTable.addShapeless("shapeless_spruce_chest_to_chest", <item:minecraft:chest>, [<item:quark:spruce_chest>], null);
craftingTable.addShapeless("shapeless_birch_chest_to_chest", <item:minecraft:chest>, [<item:quark:birch_chest>], null);
craftingTable.addShapeless("shapeless_jungle_chest_to_chest", <item:minecraft:chest>, [<item:quark:jungle_chest>], null);
craftingTable.addShapeless("shapeless_acacia_chest_to_chest", <item:minecraft:chest>, [<item:quark:acacia_chest>], null);
craftingTable.addShapeless("shapeless_dark_oak_chest_to_chest", <item:minecraft:chest>, [<item:quark:dark_oak_chest>], null);

# Allow converting blocks back to their items
craftingTable.addShapeless("shapeless_sapling_to_sticks", <item:minecraft:stick> * 2, [<tag:minecraft:saplings>], null);
craftingTable.addShapeless("shapeless_quartz_block_to_quartz", <item:minecraft:quartz> * 4, [<item:minecraft:quartz_block>], null);
craftingTable.addShapeless("shapeless_nether_wart_block_to_wart", <item:minecraft:nether_wart> * 4, [<item:minecraft:nether_wart_block>], null);
craftingTable.addShapeless("shapeless_magma_to_cream", <item:minecraft:magma_cream> * 4, [<item:minecraft:magma_block>], null);
craftingTable.addShapeless("shapeless_blue_ice_to_packed", <item:minecraft:packed_ice> * 9, [<item:minecraft:blue_ice>], null);
craftingTable.addShapeless("shapeless_packed_ice_to_ice", <item:minecraft:ice> * 9, [<item:minecraft:packed_ice>], null);

# Make grass paths convertible to dirt (for when silk touch picks up the path)
craftingTable.addShapeless("shapeless_path_to_dirt", <item:minecraft:dirt>, [<item:minecraft:grass_path>], null);

# Make creative paste container for Building Gadgets craftable
craftingTable.addShapeless("bg_creative_paste_container", <item:buildinggadgets:construction_paste_container_creative>, [<item:buildinggadgets:construction_paste_container_t3>, <item:minecraft:nether_star>], null);

# Make creative capacitor for Immersive Engineering craftable
craftingTable.addShaped("ie_creative_capacitor", <item:immersiveengineering:capacitor_creative>, [
    [<tag:forge:ingots/iron>, <tag:forge:ingots/iron>, <tag:forge:ingots/iron>],
    [<tag:forge:ingots/copper>, <tag:forge:ingots/lead>, <tag:forge:ingots/copper>],
    [<tag:forge:treated_wood>, <item:minecraft:nether_star>, <tag:forge:treated_wood>]
]);

# Make creative storage upgrade for Storage Drawers craftable
craftingTable.addShaped("sd_creative_storage_upgrade", <item:storagedrawers:creative_storage_upgrade>, [
    [<tag:forge:rods/wooden>, <tag:forge:rods/wooden>, <tag:forge:rods/wooden>],
    [<item:minecraft:nether_star>, <item:storagedrawers:upgrade_template>, <item:minecraft:nether_star>],
    [<tag:forge:rods/wooden>, <tag:forge:rods/wooden>, <tag:forge:rods/wooden>]
]);

# Make creative items from Refined Storage craftable with nether stars
craftingTable.addShaped("rs_creative_controller", <item:refinedstorage:creative_controller>, [
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:nether_star>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:silicon>, <item:refinedstorage:machine_casing>, <item:refinedstorage:silicon>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:silicon>, <item:refinedstorage:quartz_enriched_iron>]
]);

craftingTable.addShaped("rs_creative_storage_disk", <item:refinedstorage:creative_storage_disk>, [
    [<tag:forge:glass>, <tag:forge:dusts/redstone>, <tag:forge:glass>],
    [<tag:forge:dusts/redstone>, <item:minecraft:nether_star>, <tag:forge:dusts/redstone>],
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

craftingTable.addShaped("rs_creative_portable_grid", <item:refinedstorage:creative_portable_grid>, [
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:grid>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:creative_controller>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:fluid_grid>, <item:refinedstorage:quartz_enriched_iron>]
]);

craftingTable.addShaped("rs_creative_storage_block", <item:refinedstorage:creative_storage_block>, [
    [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:nether_star>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:machine_casing>, <item:refinedstorage:quartz_enriched_iron>],
    [<item:refinedstorage:quartz_enriched_iron>, <tag:forge:dusts/redstone>, <item:refinedstorage:quartz_enriched_iron>]
]);

craftingTable.addShapeless("rs_creative_fluid_storage_block", <item:refinedstorage:creative_fluid_storage_block>, [<item:refinedstorage:creative_storage_block>, <item:minecraft:bucket>]);
