#priority 10

# Make higher tier hearts craftable, but at great cost
val redHeart=<bhc:red_heart>;
val orangeHeart=<bhc:orange_heart>;
val greenHeart=<bhc:green_heart>;
val blueHeart=<bhc:blue_heart>;

recipes.addShaped(
    orangeHeart * 1,
    [
        [redHeart, redHeart, redHeart],
        [redHeart, <ore:dyeOrange>, redHeart],
        [redHeart, redHeart, redHeart]
    ]
);

recipes.addShaped(
    greenHeart * 1,
    [
        [orangeHeart, redHeart, orangeHeart],
        [redHeart, <ore:blockEmerald>, redHeart],
        [orangeHeart, redHeart, orangeHeart]
    ]
);

recipes.addShaped(
    blueHeart * 1,
    [
        [<ore:blockDiamond>, orangeHeart, <ore:blockDiamond>],
        [greenHeart, <ore:blockLapis>, greenHeart],
        [<ore:blockDiamond>, orangeHeart, <ore:blockDiamond>]
    ]
);
