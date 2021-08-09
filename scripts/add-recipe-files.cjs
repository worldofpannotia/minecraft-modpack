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

const recipes = {
    minecraft: [
        'polished_granite',
        'polished_diorite',
        'polished_andesite',
    ],
    quark: [
        'polished_myalite',
        'polished_slate',
        'polished_jasper',
        'polished_limestone',
        'polished_marble',
    ],
};

const recipe = `{
  "type": "minecraft:crafting_shapeless",
  "ingredients": [
    {
      "item": "!MOD!:!MATERIAL!"
    }
  ],
  "result": {
    "item": "lepton:!MATERIAL!_button",
    "count": 16
  }
}`;

const exec = async () => {
    for (const [mod, mats] of Object.entries(recipes)) {
        for (const mat of mats) {
            const btnRecipe = JSON.parse(recipe.replace(/!MOD!/g, mod).replace(/!MATERIAL!/g, mat));
            const btnFile = path.join(DATA_PACK_DIR, 'lepton', 'recipes', 'crafting', `${mat}_button.json`);
            await fs.writeFile(btnFile, JSON.stringify(btnRecipe, null, 4));
        }
    }

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
