val bkshelf=<ore:bookshelf>;
val bkshelfBirch=<ore:bookshelfBirch>;
val bkshelfSpruce=<ore:bookshelfSpruce>;
val bkshelfJungle=<ore:bookshelfJungle>;
val bkshelfAcacia=<ore:bookshelfAcacia>;
val bkshelfDarkOak=<ore:bookshelfDarkOak>;

bkshelf.add(<chisel:bookshelf_oak>);
bkshelfBirch.add(<chisel:bookshelf_birch>);
bkshelfSpruce.add(<chisel:bookshelf_spruce>);
bkshelfJungle.add(<chisel:bookshelf_jungle>);
bkshelfAcacia.add(<chisel:bookshelf_acacia>);
bkshelfDarkOak.add(<chisel:bookshelf_darkoak>);

recipes.addShapeless(<minecraft:redstone>, [<minecraft:redstone:4>]);

recipes.addShapeless(<chisel:marble>, [<quark:marble>]);
recipes.addShapeless(<quark:marble>, [<chisel:marble>]);
recipes.addShapeless(<chisel:basalt>, [<quark:basalt>]);
recipes.addShapeless(<quark:basalt>, [<chisel:basalt>]);

recipes.addShapeless(<minecraft:glass>, [<tconstruct:clear_glass:0>]);

recipes.addShapeless(<minecraft:stick> * 2, [<ore:treeSapling>]);

recipes.addShapeless(<minecraft:quartz> * 4, [<minecraft:quartz_block>]);
recipes.addShapeless(<botania:quartz:0> * 4, [<botania:quartztypedark>]);
recipes.addShapeless(<botania:quartz:1> * 4, [<botania:quartztypemana>]);
recipes.addShapeless(<botania:quartz:2> * 4, [<botania:quartztypeblaze>]);
recipes.addShapeless(<botania:quartz:3> * 4, [<botania:quartztypelavender>]);
recipes.addShapeless(<botania:quartz:4> * 4, [<botania:quartztypered>]);
recipes.addShapeless(<botania:quartz:5> * 4, [<botania:quartztypeelf>]);
recipes.addShapeless(<botania:quartz:6> * 4, [<botania:quartztypesunny>]);
recipes.addShapeless(<actuallyadditions:item_misc:5> * 4, [<actuallyadditions:block_misc:2>]);
recipes.addShapeless(<minecraft:nether_wart> * 9, [<minecraft:nether_wart_block>]);
recipes.addShapeless(<minecraft:magma_cream> * 4, [<minecraft:magma>]);

furnace.addRecipe(<minecraft:stone> * 8, <extrautils2:compressedcobblestone:0>, 10.0);
furnace.addRecipe(<minecraft:glass> * 8, <extrautils2:compressedsand>, 10.0);
furnace.addRecipe(<minecraft:netherbrick> * 8, <extrautils2:compressednetherrack>, 10.0);

recipes.addShaped(
    <minecraft:glass_pane> * 16,
    [
        [<tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>],
        [<tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>]
    ]
);

# Iron recycling
furnace.addRecipe(<minecraft:iron_ingot> * 5, <minecraft:iron_helmet>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 8, <minecraft:iron_chestplate>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 7, <minecraft:iron_leggings>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 4, <minecraft:iron_boots>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 6, <minecraft:iron_door>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <minecraft:bucket>, 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <minecraft:shears>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <minecraft:iron_horse_armor>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <minecraft:iron_hoe>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <minecraft:iron_pickaxe>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 1, <minecraft:iron_shovel>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 3, <minecraft:iron_axe>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:iron_ingot> * 2, <minecraft:iron_sword>.anyDamage(), 0.5);

# Gold recycling
furnace.addRecipe(<minecraft:gold_ingot> * 5, <minecraft:golden_helmet>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 8, <minecraft:golden_chestplate>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 7, <minecraft:golden_leggings>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 4, <minecraft:golden_boots>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 3, <minecraft:golden_horse_armor>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 2, <minecraft:golden_hoe>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 3, <minecraft:golden_pickaxe>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 1, <minecraft:golden_shovel>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 3, <minecraft:golden_axe>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:gold_ingot> * 2, <minecraft:golden_sword>.anyDamage(), 0.5);

# Diamond Recycling
furnace.addRecipe(<minecraft:diamond> * 5, <minecraft:diamond_helmet>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:diamond> * 8, <minecraft:diamond_chestplate>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:diamond> * 7, <minecraft:diamond_leggings>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:diamond> * 4, <minecraft:diamond_boots>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:diamond> * 3, <minecraft:diamond_pickaxe>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:diamond> * 2, <minecraft:diamond_hoe>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:diamond> * 1, <minecraft:diamond_shovel>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:diamond> * 3, <minecraft:diamond_axe>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:diamond> * 2, <minecraft:diamond_sword>.anyDamage(), 0.5);
furnace.addRecipe(<minecraft:diamond> * 3, <minecraft:diamond_horse_armor>.anyDamage(), 0.5);

#Fuel Values

#Ladders
furnace.setFuel(<minecraft:ladder>, 300);
furnace.setFuel(<minecraft:leaves>, 10);

# Wither Bones
# Armor Plus <--> Baubley Heart Canisters <--> Tinkers' Wither Bone
recipes.addShapeless(<armorplus:material:2>, [<bhc:wither_bone>]);
recipes.addShapeless(<bhc:wither_bone>, [<tconstruct:materials:17>]);
recipes.addShapeless(<tconstruct:materials:17>, [<armorplus:material:2>]);

# Minecraft/TiCon Slime
# Green -> Blue -> Purple -> Red -> Orange
recipes.addShapeless(<minecraft:slime_ball>, [<tconstruct:edible:1>]);
recipes.addShapeless(<tconstruct:edible:1>, [<tconstruct:edible:2>]);
recipes.addShapeless(<tconstruct:edible:2>, [<tconstruct:edible:3>]);
recipes.addShapeless(<tconstruct:edible:3>, [<tconstruct:edible:4>]);
recipes.addShapeless(<tconstruct:edible:4>, [<minecraft:slime_ball>]);

# Fix recipe conflict between Iron Gear and Iron Lattice
recipes.remove(<rustic:iron_lattice>);
recipes.addShaped(<rustic:iron_lattice>, [
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [null, <ore:ingotIron>, null],
    [<ore:ingotIron>, null, <ore:ingotIron>]
]);

# Make grass paths convertible to dirt (for when silk touch picks up the path)
recipes.addShapeless(<minecraft:dirt>, [<minecraft:grass_path>]);
