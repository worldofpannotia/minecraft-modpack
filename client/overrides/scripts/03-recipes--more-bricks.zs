### Remove 2x2 recipes for brick -> bricks
craftingTable.removeRecipe(<item:endergetic:eumus_bricks>);
craftingTable.removeRecipe(<item:minecraft:nether_bricks>);
craftingTable.removeRecipe(<item:minecraft:red_nether_bricks>);

# More bricks crafting
craftingTable.addShaped("eumus_brick_to_bricks_4x", <item:endergetic:eumus_bricks> * 4, [
    [<item:endergetic:eumus_brick>, <item:endergetic:eumus_brick>],
    [<item:endergetic:eumus_brick>, <item:endergetic:eumus_brick>]
]);
craftingTable.addShaped("nether_brick_to_bricks_4x", <item:minecraft:nether_bricks> * 4, [
    [<item:minecraft:nether_brick>, <item:minecraft:nether_brick>],
    [<item:minecraft:nether_brick>, <item:minecraft:nether_brick>]
]);
craftingTable.addShaped("nether_wart_brick_to_bricks_2x", <item:minecraft:red_nether_bricks> * 2, [
    [<item:minecraft:nether_brick>, <item:minecraft:nether_wart>],
    [<item:minecraft:nether_wart>, <item:minecraft:nether_brick>]
]);
