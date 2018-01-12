# Make higher tier hearts craftable, but at great cost
val bhcRedHeart=<bhc:red_heart>;
val bhcOrangeHeart=<bhc:orange_heart>;
val bhcGreenHeart=<bhc:green_heart>;
val bhcBlueHeart=<bhc:blue_heart>;

recipes.addShaped(bhcOrangeHeart * 1, [[bhcRedHeart, bhcRedHeart, bhcRedHeart], [bhcRedHeart, <ore:dyeOrange>, bhcRedHeart], [bhcRedHeart, bhcRedHeart, bhcRedHeart]]);
recipes.addShaped(bhcGreenHeart * 1, [[bhcOrangeHeart, bhcRedHeart, bhcOrangeHeart], [bhcRedHeart, <ore:blockEmerald>, bhcRedHeart], [bhcOrangeHeart, bhcRedHeart, bhcOrangeHeart]]);
recipes.addShaped(bhcBlueHeart * 1, [[<ore:blockDiamond>, bhcOrangeHeart, <ore:blockDiamond>], [bhcGreenHeart, <ore:blockLapis>, bhcGreenHeart], [<ore:blockDiamond>, bhcOrangeHeart, <ore:blockDiamond>]]);
