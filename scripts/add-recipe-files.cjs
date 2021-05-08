const path = require('path');
const fs = require('fs/promises');

const DATA_PACK_DIR=path.join(__dirname, '..', 'client', 'overrides', 'openloader', 'data', 'pannotia_data_v1', 'data');

const MOD = 'minecraft';
const COLORS = [
    'black',
    'blue',
    'brown',
    'cyan',
    'gray',
    'green',
    'light_blue',
    'light_gray',
    'lime',
    'magenta',
    'orange',
    'pink',
    'purple',
    'red',
    'white',
    'yellow',
];

//const recipe = `{
//    "type": "crafting_shaped",
//    "pattern": [
//        "XXX",
//        "XYX",
//        "XXX"
//    ],
//    "key": {
//        "X": {
//            "tag": "forge:glass"
//        },
//        "Y": {
//            "tag": "forge:dyes/!COLOR!"
//        }
//    },
//    "result": {
//        "item": "minecraft:!COLOR!_stained_glass",
//        "count": 8
//    }
//}`;

const exec = async () => {
//    for (const color of COLORS) {
//        const glassRecipe = JSON.parse(recipe.replace(/!COLOR!/g, color));
//        const glassPaneRecipe = JSON.parse(recipe.replace(/!COLOR!/g, color).replace('forge:glass', 'forge:glass_panes').replace('stained_glass', 'stained_glass_pane'));
//    
//        const glassFile = path.join(DATA_PACK_DIR, MOD, 'recipes', `${color}_stained_glass.json`);
//        const glassPaneFile = path.join(DATA_PACK_DIR, MOD, 'recipes', `${color}_stained_glass_pane_from_glass_pane.json`);
//    
//        await fs.writeFile(glassFile, JSON.stringify(glassRecipe, null, 4));
//        await fs.writeFile(glassPaneFile, JSON.stringify(glassPaneRecipe, null, 4));
//    }
};

exec();
