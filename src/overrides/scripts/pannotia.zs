recipes.addShapeless(<chisel:marble>, [<quark:marble>]);
recipes.addShapeless(<quark:marble>, [<chisel:marble>]);
recipes.addShapeless(<chisel:basalt>, [<quark:basalt>]);
recipes.addShapeless(<quark:basalt>, [<chisel:basalt>]);

recipes.addShapeless(<minecraft:stick> * 2, [<ore:treeSapling>]);

furnace.addRecipe(<minecraft:stone> * 9, <extrautils2:compressedcobblestone:0>, 10.0);
furnace.addRecipe(<minecraft:glass> * 9, <extrautils2:compressedsand>, 10.0);
furnace.addRecipe(<minecraft:netherbrick> * 9, <extrautils2:compressednetherrack>, 10.0);

recipes.addShaped(
    <minecraft:glass_pane> * 16,
    [
        [<tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>],
        [<tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>]
    ]
);

# Iron recycling
furnace.addRecipe(<minecraft:iron_ingot> * 5, <minecraft:iron_helmet:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 8, <minecraft:iron_chestplate:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 7, <minecraft:iron_leggings:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 4, <minecraft:iron_boots:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 6, <minecraft:iron_door>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <minecraft:bucket>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <minecraft:shears:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <minecraft:iron_horse_armor:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <minecraft:iron_hoe:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <minecraft:iron_pickaxe:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <minecraft:iron_shovel:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <minecraft:iron_axe:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <minecraft:iron_sword:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 5, <ic2:forge_hammer:*>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 5, <ic2:cutter:*>, 0.5);

# Gold recycling
furnace.addRecipe(<minecraft:gold_ingot> * 5, <minecraft:golden_helmet:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 8, <minecraft:golden_chestplate:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 7, <minecraft:golden_leggings:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 4, <minecraft:golden_boots:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 3, <minecraft:golden_horse_armor:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 2, <minecraft:golden_hoe:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 3, <minecraft:golden_pickaxe:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <minecraft:golden_shovel:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 3, <minecraft:golden_axe:*>, 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 2, <minecraft:golden_sword:*>, 0.5);

# Diamond Recycling
furnace.addRecipe(<minecraft:diamond> * 5, <minecraft:diamond_helmet:*>, 0.5);
furnace.addRecipe(<minecraft:diamond> * 8, <minecraft:diamond_chestplate:*>, 0.5);
furnace.addRecipe(<minecraft:diamond> * 7, <minecraft:diamond_leggings:*>, 0.5);
furnace.addRecipe(<minecraft:diamond> * 4, <minecraft:diamond_boots:*>, 0.5);
furnace.addRecipe(<minecraft:diamond> * 3, <minecraft:diamond_pickaxe:*>, 0.5);
furnace.addRecipe(<minecraft:diamond> * 2, <minecraft:diamond_hoe:*>, 0.5);
furnace.addRecipe(<minecraft:diamond> * 1, <minecraft:diamond_shovel:*>, 0.5);
furnace.addRecipe(<minecraft:diamond> * 3, <minecraft:diamond_axe:*>, 0.5);
furnace.addRecipe(<minecraft:diamond> * 2, <minecraft:diamond_sword:*>, 0.5);
furnace.addRecipe(<minecraft:diamond> * 3, <minecraft:diamond_horse_armor:*>, 0.5);

# ic2 Bronze recycling
furnace.addRecipe(<ic2:ingot:1> * 5, <ic2:bronze_helmet:*>, 0.5);
furnace.addRecipe(<ic2:ingot:1> * 8, <ic2:bronze_chestplate:*>, 0.5);
furnace.addRecipe(<ic2:ingot:1> * 7, <ic2:bronze_leggings:*>, 0.5);
furnace.addRecipe(<ic2:ingot:1> * 4, <ic2:bronze_boots:*>, 0.5);
furnace.addRecipe(<ic2:ingot:1> * 3, <ic2:bronze_pickaxe:*>, 0.5);
furnace.addRecipe(<ic2:ingot:1> * 3, <ic2:bronze_axe:*>, 0.5);
furnace.addRecipe(<ic2:ingot:1> * 2, <ic2:bronze_sword:*>, 0.5);
furnace.addRecipe(<ic2:ingot:1> * 1, <ic2:bronze_shovel:*>, 0.5);
furnace.addRecipe(<ic2:ingot:1> * 2, <ic2:bronze_hoe:*>, 0.5);

# Manasteel recycling
furnace.addRecipe(<botania:manaResource:0> * 5, <botania:manasteelHelm:*>, 0.5);
furnace.addRecipe(<botania:manaResource:0> * 8, <botania:manasteelChest:*>, 0.5);
furnace.addRecipe(<botania:manaResource:0> * 7, <botania:manasteelLegs:*>, 0.5);
furnace.addRecipe(<botania:manaResource:0> * 4, <botania:manasteelBoots:*>, 0.5);
furnace.addRecipe(<botania:manaResource:0> * 2, <botania:manasteelSword:*>, 0.5);
furnace.addRecipe(<botania:manaResource:0> * 3, <botania:manasteelAxe:*>, 0.5);
furnace.addRecipe(<botania:manaResource:0> * 1, <botania:manasteelShovel:*>, 0.5);
furnace.addRecipe(<botania:manaResource:0> * 3, <botania:manasteelPick:*>, 0.5);
furnace.addRecipe(<botania:manaResource:0> * 2, <botania:manasteelShears:*>, 0.5);

# Elementium recycling
furnace.addRecipe(<botania:manaResource:7> * 5, <botania:elementiumHelm:*>, 0.5);
furnace.addRecipe(<botania:manaResource:7> * 8, <botania:elementiumChest:*>, 0.5);
furnace.addRecipe(<botania:manaResource:7> * 7, <botania:elementiumLegs:*>, 0.5);
furnace.addRecipe(<botania:manaResource:7> * 4, <botania:elementiumBoots:*>, 0.5);
furnace.addRecipe(<botania:manaResource:7> * 2, <botania:elementiumSword:*>, 0.5);
furnace.addRecipe(<botania:manaResource:7> * 3, <botania:elementiumAxe:*>, 0.5);
furnace.addRecipe(<botania:manaResource:7> * 1, <botania:elementiumShovel:*>, 0.5);
furnace.addRecipe(<botania:manaResource:7> * 3, <botania:elementiumPick:*>, 0.5);
furnace.addRecipe(<botania:manaResource:7> * 2, <botania:elementiumShears:*>, 0.5);

# Terrasteel recycling
furnace.addRecipe(<botania:manaResource:4> * 5, <botania:terrasteelHelm:*>, 0.5);
furnace.addRecipe(<botania:manaResource:4> * 8, <botania:terrasteelChest:*>, 0.5);
furnace.addRecipe(<botania:manaResource:4> * 7, <botania:terrasteelLegs:*>, 0.5);
furnace.addRecipe(<botania:manaResource:4> * 4, <botania:terrasteelBoots:*>, 0.5);

#Fuel Values

#Ladders
furnace.setFuel(<minecraft:ladder>, 300);
furnace.setFuel(<minecraft:leaves>, 10);


## Chisel support for Wool
#mods.chisel.Groups.addGroup("wool");
#mods.chisel.Groups.addVariation("wool", <minecraft:wool>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:1>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:2>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:3>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:4>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:5>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:6>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:7>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:8>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:9>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:10>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:11>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:12>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:13>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:14>);
#mods.chisel.Groups.addVariation("wool", <minecraft:wool:15>);
#
## Chisel support for Hardened Stained Clay
#mods.chisel.Groups.addGroup("hardenedclay");
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:hardened_clay>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:1>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:2>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:3>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:4>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:5>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:6>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:7>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:8>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:9>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:10>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:11>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:12>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:13>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:14>);
#mods.chisel.Groups.addVariation("hardenedclay", <minecraft:stained_hardened_clay:15>);
