val iron=<item:minecraft:iron_ingot>;
val gold=<item:minecraft:gold_ingot>;
val diamond=<item:minecraft:diamond>;
val netherite=<item:minecraft:netherite_ingot>;
val strng=<item:minecraft:string>;
val leather=<item:minecraft:leather>;

# Iron recycling
furnace.removeByName("minecraft:iron_nugget_from_smelting");
blastFurnace.removeByName("minecraft:iron_nugget_from_blasting");
furnace.addRecipe("recycle_iron_helmet", iron * 5, <item:minecraft:iron_helmet>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_helmet", iron * 5, <item:minecraft:iron_helmet>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_iron_chestplate", iron * 8, <item:minecraft:iron_chestplate>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_chestplate", iron * 8, <item:minecraft:iron_chestplate>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_iron_leggings", iron * 7, <item:minecraft:iron_leggings>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_leggings", iron * 7, <item:minecraft:iron_leggings>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_iron_boots", iron * 4, <item:minecraft:iron_boots>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_boots", iron * 4, <item:minecraft:iron_boots>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_iron_door", iron * 6, <item:minecraft:iron_door>, 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_door", iron * 6, <item:minecraft:iron_door>, 0.5, 20);
furnace.addRecipe("recycle_bucket", iron * 3, <item:minecraft:bucket>, 0.5, 40);
blastFurnace.addRecipe("bf_recycle_bucket", iron * 3, <item:minecraft:bucket>, 0.5, 20);
furnace.addRecipe("recycle_shears", iron * 2, <item:minecraft:shears>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_shears", iron * 2, <item:minecraft:shears>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_iron_hoe", iron * 2, <item:minecraft:iron_hoe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_hoe", iron * 2, <item:minecraft:iron_hoe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_iron_pickaxe", iron * 3, <item:minecraft:iron_pickaxe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_pickaxe", iron * 3, <item:minecraft:iron_pickaxe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_iron_shovel", iron * 1, <item:minecraft:iron_shovel>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_shovel", iron * 1, <item:minecraft:iron_shovel>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_iron_axe", iron * 3, <item:minecraft:iron_axe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_axe", iron * 3, <item:minecraft:iron_axe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_iron_sword", iron * 2, <item:minecraft:iron_sword>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_sword", iron * 2, <item:minecraft:iron_sword>.anyDamage(), 0.5, 20);

furnace.removeByName("farmersdelight:iron_nugget_from_smelting_knife");
blastFurnace.removeByName("farmersdelight:iron_nugget_from_blasting_knife");
furnace.addRecipe("recycle_iron_knife", iron * 1, <item:farmersdelight:iron_knife>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_iron_knife", iron * 1, <item:farmersdelight:iron_knife>.anyDamage(), 0.5, 20);

furnace.removeByName("quark:tools/smelting/trowel_to_iron_nugget");
furnace.addRecipe("recycle_quark_trowel", iron * 2, <item:quark:trowel>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_quark_trowel", iron * 2, <item:quark:trowel>.anyDamage(), 0.5, 20);

# Gold recycling
furnace.removeByName("minecraft:gold_nugget_from_smelting");
blastFurnace.removeByName("minecraft:gold_nugget_from_blasting");
furnace.addRecipe("recycle_gold_helmet", gold * 5, <item:minecraft:golden_helmet>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_gold_helmet", gold * 5, <item:minecraft:golden_helmet>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_gold_chestplate", gold * 8, <item:minecraft:golden_chestplate>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_gold_chestplate", gold * 8, <item:minecraft:golden_chestplate>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_gold_leggings", gold * 7, <item:minecraft:golden_leggings>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_gold_leggings", gold * 7, <item:minecraft:golden_leggings>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_gold_boots", gold * 4, <item:minecraft:golden_boots>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_gold_boots", gold * 4, <item:minecraft:golden_boots>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_gold_hoe", gold * 2, <item:minecraft:golden_hoe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_gold_hoe", gold * 2, <item:minecraft:golden_hoe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_gold_pickaxe", gold * 3, <item:minecraft:golden_pickaxe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_gold_pickaxe", gold * 3, <item:minecraft:golden_pickaxe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_gold_shovel", gold * 1, <item:minecraft:golden_shovel>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_gold_shovel", gold * 1, <item:minecraft:golden_shovel>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_gold_axe", gold * 3, <item:minecraft:golden_axe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_gold_axe", gold * 3, <item:minecraft:golden_axe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_gold_sword", gold * 2, <item:minecraft:golden_sword>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_gold_sword", gold * 2, <item:minecraft:golden_sword>.anyDamage(), 0.5, 20);

furnace.removeByName("farmersdelight:gold_nugget_from_smelting_knife");
blastFurnace.removeByName("farmersdelight:gold_nugget_from_blasting_knife");
furnace.addRecipe("recycle_gold_knife", gold * 1, <item:farmersdelight:golden_knife>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_gold_knife", gold * 1, <item:farmersdelight:golden_knife>.anyDamage(), 0.5, 20);

# Diamond Recycling
furnace.addRecipe("recycle_diamond_helmet", diamond * 5, <item:minecraft:diamond_helmet>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_diamond_helmet", diamond * 5, <item:minecraft:diamond_helmet>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_diamond_chestplate", diamond * 8, <item:minecraft:diamond_chestplate>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_diamond_chestplate", diamond * 8, <item:minecraft:diamond_chestplate>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_diamond_leggings", diamond * 7, <item:minecraft:diamond_leggings>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_diamond_leggings", diamond * 7, <item:minecraft:diamond_leggings>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_diamond_boots", diamond * 4, <item:minecraft:diamond_boots>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_diamond_boots", diamond * 4, <item:minecraft:diamond_boots>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_diamond_hoe", diamond * 2, <item:minecraft:diamond_hoe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_diamond_hoe", diamond * 2, <item:minecraft:diamond_hoe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_diamond_pickaxe", diamond * 3, <item:minecraft:diamond_pickaxe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_diamond_pickaxe", diamond * 3, <item:minecraft:diamond_pickaxe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_diamond_shovel", diamond * 1, <item:minecraft:diamond_shovel>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_diamond_shovel", diamond * 1, <item:minecraft:diamond_shovel>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_diamond_axe", diamond * 3, <item:minecraft:diamond_axe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_diamond_axe", diamond * 3, <item:minecraft:diamond_axe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_diamond_sword", diamond * 2, <item:minecraft:diamond_sword>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_diamond_sword", diamond * 2, <item:minecraft:diamond_sword>.anyDamage(), 0.5, 20);

# Netherite Recycling
furnace.removeByName("nether_extension:netherite/netherite_nugget_from_smelting");
blastFurnace.removeByName("nether_extension:netherite/netherite_nugget_from_blasting");
furnace.addRecipe("recycle_netherite_helmet", netherite, <item:minecraft:netherite_helmet>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_netherite_helmet", netherite, <item:minecraft:netherite_helmet>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_netherite_chestplate", netherite, <item:minecraft:netherite_chestplate>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_netherite_chestplate", netherite, <item:minecraft:netherite_chestplate>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_netherite_leggings", netherite, <item:minecraft:netherite_leggings>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_netherite_leggings", netherite, <item:minecraft:netherite_leggings>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_netherite_boots", netherite, <item:minecraft:netherite_boots>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_netherite_boots", netherite, <item:minecraft:netherite_boots>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_netherite_hoe", netherite, <item:minecraft:netherite_hoe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_netherite_hoe", netherite, <item:minecraft:netherite_hoe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_netherite_pickaxe", netherite, <item:minecraft:netherite_pickaxe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_netherite_pickaxe", netherite, <item:minecraft:netherite_pickaxe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_netherite_shovel", netherite, <item:minecraft:netherite_shovel>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_netherite_shovel", netherite, <item:minecraft:netherite_shovel>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_netherite_axe", netherite, <item:minecraft:netherite_axe>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_netherite_axe", netherite, <item:minecraft:netherite_axe>.anyDamage(), 0.5, 20);
furnace.addRecipe("recycle_netherite_sword", netherite, <item:minecraft:netherite_sword>.anyDamage(), 0.5, 40);
blastFurnace.addRecipe("bf_recycle_netherite_sword", netherite, <item:minecraft:netherite_sword>.anyDamage(), 0.5, 20);

furnace.removeByName("caverns_and_chasms:silver/silver_nugget_from_smelting");
blastFurnace.removeByName("caverns_and_chasms:silver/silver_nugget_from_blasting");
furnace.removeByName("caverns_and_chasms:necromium/necromium_nugget_from_smelting");
blastFurnace.removeByName("caverns_and_chasms:necromium/necromium_nugget_from_blasting");

#snip modnotloaded caverns_and_chasms
val silver=<item:caverns_and_chasms:silver_ingot>;
val silverNug=<item:caverns_and_chasms:silver_nugget>;
val necromiumNug=<item:caverns_and_chasms:necromium_nugget>;
<recipetype:create:crushing>.addRecipe("silver_horse_armor", [silver * 2, leather * 2 % 50, silver * 2 % 50, strng * 2 % 25, silverNug * 8 % 25], <item:caverns_and_chasms:silver_horse_armor>);
<recipetype:create:crushing>.addRecipe("necromium_horse_armor", [necromiumNug * 2, leather * 2 % 50, necromiumNug * 2 % 50, strng * 2 % 25, necromiumNug * 5 % 25], <item:caverns_and_chasms:necromium_horse_armor>);
#snip end

#snip modnotloaded nether_extension
val netheriteNug=<item:nether_extension:netherite_nugget>;
<recipetype:create:crushing>.addRecipe("netherite_horse_armor", [netheriteNug * 2, leather * 2 % 50, netheriteNug * 2 % 50, strng * 2 % 25, netheriteNug * 5 % 25], <item:nether_extension:netherite_horse_armor>);
#snip end
