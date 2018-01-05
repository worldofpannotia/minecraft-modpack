import mods.industrialforegoing.LaserDrill;

// Fix broken bread recipe - How did this even happen?
recipes.addShaped(<minecraft:bread> * 1, [[<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>]]);

// See https://github.com/Darkhax-Minecraft/Dark-Utilities/issues/121
recipes.remove(<darkutils:charm_null>);
<darkutils:charm_null>.addTooltip(format.darkRed("Disabled due to bug!"));

// Items disappearing supposedly
recipes.remove(<extrautils2:bagofholding>);
<extrautils2:bagofholding>.addTooltip(format.darkRed("Disabled due to bug!"));

// Fix bug where casting cobalt blocks gives chisel block rather than tinkers' construct one
mods.tconstruct.Casting.removeBasinRecipe(<chisel:blockcobalt>, <liquid:cobalt>);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:metal>, null, <liquid:cobalt>, 1296);

// Helpful tooltips
<tconstruct:toolforge>.addTooltip(format.yellow("Can be made from any metal block"));

// Self Unification
recipes.addShapeless(<thermalfoundation:material:163> * 4, [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotTin>]);

// Fixed UniDict screwing with things causing bronze gears to not be craftable
recipes.remove(<teslacorelib:gear_diamond>);
recipes.remove(<thermalfoundation:material:256>);
recipes.remove(<thermalfoundation:material:257>);
recipes.remove(<thermalfoundation:material:291>);
recipes.addShaped(<teslacorelib:gear_diamond> * 1, [[null, <ore:gemDiamond>], [<ore:gemDiamond>, <ore:ingotIron>, <ore:gemDiamond>], [null, <ore:gemDiamond>]]);
recipes.addShaped(<thermalfoundation:material:256> * 1, [[null, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotIron>, <ore:ingotCopper>], [null, <ore:ingotCopper>]]);
recipes.addShaped(<thermalfoundation:material:257> * 1, [[null, <ore:ingotTin>], [<ore:ingotTin>, <ore:ingotIron>, <ore:ingotTin>], [null, <ore:ingotTin>]]);
recipes.addShaped(<thermalfoundation:material:291> * 1, [[null, <ore:ingotBronze>], [<ore:ingotBronze>, <ore:ingotIron>, <ore:ingotBronze>], [null, <ore:ingotBronze>]]);

// Industrial Foregoing - Laser Drill compatibility for other mods
LaserDrill.add(15, <actuallyadditions:block_misc:3>, 6); // Actually Additions
LaserDrill.add(3, <thermalfoundation:ore:8>, 1); // Thermal Foundation

// Addresses some inconsistency with Actually Additions' Black Quartz
recipes.removeShapeless(<actuallyadditions:item_misc:5>);
mods.extrautils2.Crusher.add(<actuallyadditions:item_dust:7> * 2, <actuallyadditions:block_misc:3>);
mods.extrautils2.Crusher.add(<actuallyadditions:item_dust:7> * 1, <actuallyadditions:item_misc:5>);
