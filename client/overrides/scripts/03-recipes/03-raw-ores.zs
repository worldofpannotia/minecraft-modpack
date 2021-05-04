import mods.jei.JEI as JEI;

val rawCopper=<item:raw_ores_mod:raw_netherite>.withTag({is_copper: "\"true\"" as string, display: {Name: "{\"text\":\"Raw Copper\"}" as string}});
val rawSilver=<item:raw_ores_mod:raw_quartz>.withTag({is_silver: "\"true\"" as string, display: {Name: "{\"text\":\"Raw Silver\"}" as string}});
val rawZinc=<item:raw_ores_mod:raw_diamond>.withTag({is_zinc: "\"true\"" as string, display: {Name: "{\"text\":\"Raw Zinc\"}" as string}});

JEI.hideItem(<item:raw_ores_mod:crushing_hammer>);
JEI.hideItem(<item:raw_ores_mod:gemcutting_chisel>);
JEI.hideItem(<item:raw_ores_mod:raw_coal>);
JEI.hideItem(<item:raw_ores_mod:raw_emerald>);
JEI.hideItem(<item:raw_ores_mod:raw_lapis>);
JEI.hideItem(<item:raw_ores_mod:raw_redstone>);

# Add explainer for why netherite === copper
JEI.addInfo(<item:raw_ores_mod:raw_netherite>, [
    "In this modpack, we chose not to use raw netherite.",
    "Instead, it has been repurposed to serve as",
    "a raw version of Create's copper."
]);

# Add explainer for why quartz === silver
JEI.addInfo(<item:raw_ores_mod:raw_quartz>, [
    "In this modpack, we chose not to use raw quartz.",
    "Instead, it has been repurposed to serve as",
    "a raw version of Caverns and Chasms' silver."
]);

# Add explainer for why diamond === zinc
JEI.addInfo(<item:raw_ores_mod:raw_diamond>, [
    "In this modpack, we chose not to use raw diamond.",
    "Instead, it has been repurposed to serve as",
    "a raw version of Create's zinc."
]);

furnace.addRecipe("fake_raw_silver", <item:caverns_and_chasms:silver_ingot>, rawSilver, 1, 200);
blastFurnace.addRecipe("fake_raw_silver_blast", <item:caverns_and_chasms:silver_ingot>, rawSilver, 1, 100);

furnace.addRecipe("fake_raw_zinc", <item:create:zinc_ingot>, rawZinc, 1, 200);
blastFurnace.addRecipe("fake_raw_zinc_blast", <item:create:zinc_ingot>, rawZinc, 1, 100);

furnace.addRecipe("fake_raw_copper", <item:create:copper_ingot>, rawCopper, 1, 200);
blastFurnace.addRecipe("fake_raw_copper_blast", <item:create:copper_ingot>, rawCopper, 1, 100);

### Remove raw ores -> real ores for ones we're using to fake modded raw stuff'n'thingz
craftingTable.removeByName("raw_ores_mod:diamond_recipe");
craftingTable.removeByName("raw_ores_mod:raw_diamond_recipe");
craftingTable.removeByName("raw_ores_mod:raw_diamond_block_recipe");

furnace.removeByName("raw_ores_mod:netherite_scrap_recipe");
blastFurnace.removeByName("raw_ores_mod:netherite_scrap_recipe_blast");
craftingTable.removeByName("raw_ores_mod:raw_netherite_recipe");
craftingTable.removeByName("raw_ores_mod:raw_netherite_block_recipe");

craftingTable.removeByName("raw_ores_mod:quartz_recipe");
craftingTable.removeByName("raw_ores_mod:raw_quartz_recipe");
craftingTable.removeByName("raw_ores_mod:raw_quartz_block_recipe");

### Make raw items of unused things uncraftable/unusable
craftingTable.removeByName("raw_ores_mod:coal_recipe");
craftingTable.removeByName("raw_ores_mod:raw_coal_block_recipe");
craftingTable.removeByName("raw_ores_mod:raw_coal_recipe");

craftingTable.removeByName("raw_ores_mod:emerald_recipe");
craftingTable.removeByName("raw_ores_mod:raw_emerald_block_recipe");
craftingTable.removeByName("raw_ores_mod:raw_emerald_recipe");

craftingTable.removeByName("raw_ores_mod:lapis_recipe");
craftingTable.removeByName("raw_ores_mod:raw_lapis_block_recipe");
craftingTable.removeByName("raw_ores_mod:raw_lapis_recipe");

craftingTable.removeByName("raw_ores_mod:raw_redstone_block_recipe");
craftingTable.removeByName("raw_ores_mod:raw_redstone_recipe");
craftingTable.removeByName("raw_ores_mod:redstone_recipe");

### Make raw blocks obtainable via smelting and convertible back to their item via smelting again
furnace.addRecipe("raw_netherite_block_from_netherite", <item:raw_ores_mod:raw_netherite_block>, <item:minecraft:netherite_block>, 1, 200);
blastFurnace.addRecipe("raw_netherite_block_from_netherite_blast", <item:raw_ores_mod:raw_netherite_block>, <item:minecraft:netherite_block>, 1, 100);
furnace.addRecipe("netherite_block_from_raw_netherite", <item:minecraft:netherite_block>, <item:raw_ores_mod:raw_netherite_block>, 1, 200);
blastFurnace.addRecipe("netherite_block_from_raw_netherite_blast", <item:minecraft:netherite_block>, <item:raw_ores_mod:raw_netherite_block>, 1, 100);

furnace.addRecipe("raw_coal_block_from_coal", <item:raw_ores_mod:raw_coal_block>, <item:minecraft:coal_block>, 1, 200);
blastFurnace.addRecipe("raw_coal_block_from_coal_blast", <item:raw_ores_mod:raw_coal_block>, <item:minecraft:coal_block>, 1, 100);
furnace.addRecipe("coal_block_from_raw_coal", <item:minecraft:coal_block>, <item:raw_ores_mod:raw_coal_block>, 1, 200);
blastFurnace.addRecipe("coal_block_from_raw_coal_blast", <item:minecraft:coal_block>, <item:raw_ores_mod:raw_coal_block>, 1, 100);

furnace.addRecipe("raw_diamond_block_from_diamond", <item:raw_ores_mod:raw_diamond_block>, <item:minecraft:diamond_block>, 1, 200);
blastFurnace.addRecipe("raw_diamond_block_from_diamond_blast", <item:raw_ores_mod:raw_diamond_block>, <item:minecraft:diamond_block>, 1, 100);
furnace.addRecipe("diamond_block_from_raw_diamond", <item:minecraft:diamond_block>, <item:raw_ores_mod:raw_diamond_block>, 1, 200);
blastFurnace.addRecipe("diamond_block_from_raw_diamond_blast", <item:minecraft:diamond_block>, <item:raw_ores_mod:raw_diamond_block>, 1, 100);

furnace.addRecipe("raw_emerald_block_from_emerald", <item:raw_ores_mod:raw_emerald_block>, <item:minecraft:emerald_block>, 1, 200);
blastFurnace.addRecipe("raw_emerald_block_from_emerald_blast", <item:raw_ores_mod:raw_emerald_block>, <item:minecraft:emerald_block>, 1, 100);
furnace.addRecipe("emerald_block_from_raw_emerald", <item:minecraft:emerald_block>, <item:raw_ores_mod:raw_emerald_block>, 1, 200);
blastFurnace.addRecipe("emerald_block_from_raw_emerald_blast", <item:minecraft:emerald_block>, <item:raw_ores_mod:raw_emerald_block>, 1, 100);

furnace.addRecipe("raw_lapis_block_from_lapis", <item:raw_ores_mod:raw_lapis_block>, <item:minecraft:lapis_block>, 1, 200);
blastFurnace.addRecipe("raw_lapis_block_from_lapis_blast", <item:raw_ores_mod:raw_lapis_block>, <item:minecraft:lapis_block>, 1, 100);
furnace.addRecipe("lapis_block_from_raw_lapis", <item:minecraft:lapis_block>, <item:raw_ores_mod:raw_lapis_block>, 1, 200);
blastFurnace.addRecipe("lapis_block_from_raw_lapis_blast", <item:minecraft:lapis_block>, <item:raw_ores_mod:raw_lapis_block>, 1, 100);

furnace.addRecipe("raw_quartz_block_from_quartz", <item:raw_ores_mod:raw_quartz_block>, <item:minecraft:smooth_quartz>, 1, 200);
blastFurnace.addRecipe("raw_quartz_block_from_quartz_blast", <item:raw_ores_mod:raw_quartz_block>, <item:minecraft:smooth_quartz>, 1, 100);
furnace.addRecipe("quartz_block_from_raw_quartz", <item:minecraft:smooth_quartz>, <item:raw_ores_mod:raw_quartz_block>, 1, 200);
blastFurnace.addRecipe("quartz_block_from_raw_quartz_blast", <item:minecraft:smooth_quartz>, <item:raw_ores_mod:raw_quartz_block>, 1, 100);

furnace.addRecipe("raw_redstone_block_from_redstone", <item:raw_ores_mod:raw_redstone_block>, <item:minecraft:redstone_block>, 1, 200);
blastFurnace.addRecipe("raw_redstone_block_from_redstone_blast", <item:raw_ores_mod:raw_redstone_block>, <item:minecraft:redstone_block>, 1, 100);
furnace.addRecipe("redstone_block_from_raw_redstone", <item:minecraft:redstone_block>, <item:raw_ores_mod:raw_redstone_block>, 1, 200);
blastFurnace.addRecipe("redstone_block_from_raw_redstone_blast", <item:minecraft:redstone_block>, <item:raw_ores_mod:raw_redstone_block>, 1, 100);
