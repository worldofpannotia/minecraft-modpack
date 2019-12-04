#debug

import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

# Recipes duplicated between Charm and I Like Wood
craftingTable.removeRecipe(<item:charm:barrel_spruce>);
craftingTable.removeRecipe(<item:charm:barrel_dark_oak>);
craftingTable.removeRecipe(<item:charm:barrel_jungle>);
craftingTable.removeRecipe(<item:charm:barrel_birch>);
craftingTable.removeRecipe(<item:charm:barrel_acacia>);

# This doesn't work yet, but once JEI support is added back to CraftTweaker, it would be nice to remove the uncraftable items from JEI.
# mods.jei.JEI.hide(<item:charm:barrel_spruce>);
# mods.jei.JEI.hide(<item:charm:barrel_dark_oak>);
# mods.jei.JEI.hide(<item:charm:barrel_jungle>);
# mods.jei.JEI.hide(<item:charm:barrel_birch>);
# mods.jei.JEI.hide(<item:charm:barrel_acacia>);
