const fs = require('fs');

const inputs = [
    'minecraft:acacia_trapdoor',
    'minecraft:birch_trapdoor',
    'minecraft:crimson_trapdoor',
    'minecraft:dark_oak_trapdoor',
    'minecraft:iron_trapdoor',
    'minecraft:jungle_trapdoor',
    'minecraft:oak_trapdoor',
    'minecraft:spruce_trapdoor',
    'minecraft:warped_trapdoor',
];

let output = '';

for (const input of inputs) {
    const stairs = `<item:${input}>`;
    const planks = `<item:${input.replace('_trapdoor', '_planks').replace('_brick_planks', '_bricks').replace('sandstone_planks', 'sandstone')}>`;

    output += `# ${input}
craftingTable.removeRecipe(<item:${input}>);
craftingTable.addShaped("${input.replace(':', '_')}_12x", ${stairs} * 12, [
    [${planks}, ${planks}, ${planks}],
    [${planks}, ${planks}, ${planks}]
]);

`;
}

fs.writeFileSync('_output.txt', output);
