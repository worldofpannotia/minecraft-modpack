#priority 10

recipes.addShapeless(<chisel:marble>, [<quark:marble>]);
recipes.addShapeless(<quark:marble>, [<chisel:marble>]);
recipes.addShapeless(<chisel:basalt>, [<quark:basalt>]);
recipes.addShapeless(<quark:basalt>, [<chisel:basalt>]);

recipes.addShapeless(<minecraft:glass>, [<tconstruct:clear_glass:0>]);

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

recipes.addShaped(
    <minecraft:glass_pane> * 16,
    [
        [<tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>],
        [<tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>, <tconstruct:clear_glass:0>]
    ]
);

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

# Make grass paths convertible to dirt (for when silk touch picks up the path)
recipes.addShapeless(<minecraft:dirt>, [<minecraft:grass_path>]);
