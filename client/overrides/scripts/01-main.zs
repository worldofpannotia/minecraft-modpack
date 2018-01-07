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

# Manasteel recycling
furnace.addRecipe(<botania:manaresource:0> * 5, <botania:manasteelhelm:*>, 0.5);
furnace.addRecipe(<botania:manaresource:0> * 8, <botania:manasteelchest:*>, 0.5);
furnace.addRecipe(<botania:manaresource:0> * 7, <botania:manasteellegs:*>, 0.5);
furnace.addRecipe(<botania:manaresource:0> * 4, <botania:manasteelboots:*>, 0.5);
furnace.addRecipe(<botania:manaresource:0> * 2, <botania:manasteelsword:*>, 0.5);
furnace.addRecipe(<botania:manaresource:0> * 3, <botania:manasteelaxe:*>, 0.5);
furnace.addRecipe(<botania:manaresource:0> * 1, <botania:manasteelshovel:*>, 0.5);
furnace.addRecipe(<botania:manaresource:0> * 3, <botania:manasteelpick:*>, 0.5);
furnace.addRecipe(<botania:manaresource:0> * 2, <botania:manasteelshears:*>, 0.5);

# Elementium recycling
furnace.addRecipe(<botania:manaresource:7> * 5, <botania:elementiumhelm:*>, 0.5);
furnace.addRecipe(<botania:manaresource:7> * 8, <botania:elementiumchest:*>, 0.5);
furnace.addRecipe(<botania:manaresource:7> * 7, <botania:elementiumlegs:*>, 0.5);
furnace.addRecipe(<botania:manaresource:7> * 4, <botania:elementiumboots:*>, 0.5);
furnace.addRecipe(<botania:manaresource:7> * 2, <botania:elementiumsword:*>, 0.5);
furnace.addRecipe(<botania:manaresource:7> * 3, <botania:elementiumaxe:*>, 0.5);
furnace.addRecipe(<botania:manaresource:7> * 1, <botania:elementiumshovel:*>, 0.5);
furnace.addRecipe(<botania:manaresource:7> * 3, <botania:elementiumpick:*>, 0.5);
furnace.addRecipe(<botania:manaresource:7> * 2, <botania:elementiumshears:*>, 0.5);

# Terrasteel recycling
furnace.addRecipe(<botania:manaresource:4> * 5, <botania:terrasteelhelm:*>, 0.5);
furnace.addRecipe(<botania:manaresource:4> * 8, <botania:terrasteelchest:*>, 0.5);
furnace.addRecipe(<botania:manaresource:4> * 7, <botania:terrasteellegs:*>, 0.5);
furnace.addRecipe(<botania:manaresource:4> * 4, <botania:terrasteelboots:*>, 0.5);

#Fuel Values

#Ladders
furnace.setFuel(<minecraft:ladder>, 300);
furnace.setFuel(<minecraft:leaves>, 10);

# Make higher tier hearts craftable, but at great cost
recipes.addShaped(
    <bhc:orange_heart> * 1,
    [
        [<bhc:red_heart>, <bhc:red_heart>, <bhc:red_heart>],
        [<bhc:red_heart>, <ore:dyeOrange>, <bhc:red_heart>],
        [<bhc:red_heart>, <bhc:red_heart>, <bhc:red_heart>]
    ]
);

recipes.addShaped(
    <bhc:green_heart> * 1,
    [
        [<bhc:orange_heart>, <bhc:red_heart>, <bhc:orange_heart>],
        [<bhc:red_heart>, <ore:blockEmerald>, <bhc:red_heart>],
        [<bhc:orange_heart>, <bhc:red_heart>, <bhc:orange_heart>]
    ]
);

recipes.addShaped(
    <bhc:blue_heart> * 1,
    [
        [<ore:blockDiamond>, <bhc:orange_heart>, <ore:blockDiamond>],
        [<bhc:green_heart>, <ore:blockLapis>, <bhc:green_heart>],
        [<ore:blockDiamond>, <bhc:orange_heart>, <ore:blockDiamond>]
    ]
);

recipes.addShaped(
	<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1, id: 27}]}),
	[
		[null, <minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"}), null],
		[<minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"}), <potionfingers:ring:0>, <minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"})],
		[null, <minecraft:gold_block>, null]
	]
);

# Loot Bags
recipes.addShaped(
	<lootbags:itemlootbag:1>,
	[
		[<lootbags:itemlootbag>, <lootbags:itemlootbag>],
		[<lootbags:itemlootbag>, <lootbags:itemlootbag>]
	]
);
recipes.addShapeless(<lootbags:itemlootbag> * 4, [<lootbags:itemlootbag:1>]);

recipes.addShaped(
	<lootbags:itemlootbag:2>,
	[
		[<lootbags:itemlootbag:1>, <lootbags:itemlootbag:1>],
		[<lootbags:itemlootbag:1>, <lootbags:itemlootbag:1>]
	]
);
recipes.addShapeless(<lootbags:itemlootbag:1> * 4, [<lootbags:itemlootbag:2>]);

recipes.addShaped(
	<lootbags:itemlootbag:3>,
	[
		[<lootbags:itemlootbag:2>, <lootbags:itemlootbag:2>],
		[<lootbags:itemlootbag:2>, <lootbags:itemlootbag:2>]
	]
);
recipes.addShapeless(<lootbags:itemlootbag:2> * 4, [<lootbags:itemlootbag:3>]);

recipes.addShaped(
	<lootbags:itemlootbag:4>,
	[
		[<lootbags:itemlootbag:3>, <lootbags:itemlootbag:3>],
		[<lootbags:itemlootbag:3>, <lootbags:itemlootbag:3>]
	]
);
recipes.addShapeless(<lootbags:itemlootbag:3> * 4, [<lootbags:itemlootbag:4>]);

recipes.addShaped(
	<lootbags:itemlootbag:11>,
	[
		[<lootbags:itemlootbag:4>, <lootbags:itemlootbag:4>],
		[<lootbags:itemlootbag:4>, <lootbags:itemlootbag:4>]
	]
);
recipes.addShapeless(<lootbags:itemlootbag:4> * 4, [<lootbags:itemlootbag:11>]);
