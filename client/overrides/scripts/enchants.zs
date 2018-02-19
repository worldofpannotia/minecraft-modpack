#priority 100

import crafttweaker.data.IData;

static tags as IData[][string] = {
    "protection": [
        {StoredEnchantments: [{lvl: 4 as short, id: 0 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 0 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 0 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 0 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 0 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 0 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 0 as short}]}
    ],
    "fireresistance": [
        {StoredEnchantments: [{lvl: 4 as short, id: 1 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 1 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 1 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 1 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 1 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 1 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 1 as short}]}
    ],
    "featherfall": [
        {StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 2 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 2 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 2 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 2 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 2 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 2 as short}]}
    ],
    "blastprotection": [
        {StoredEnchantments: [{lvl: 4 as short, id: 3 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 3 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 3 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 3 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 3 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 3 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 3 as short}]}
    ],
    "projectileprotection": [
        {StoredEnchantments: [{lvl: 4 as short, id: 4 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 4 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 4 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 4 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 4 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 4 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 4 as short}]}
    ],
    "respiration": [
        {StoredEnchantments: [{lvl: 3 as short, id: 5 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 5 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 5 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 5 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 5 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 5 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 5 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 5 as short}]}
    ],
    "thorns": [
        {StoredEnchantments: [{lvl: 3 as short, id: 7 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 7 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 7 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 7 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 7 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 7 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 7 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 7 as short}]}
    ],
    "depthstrider": [
        {StoredEnchantments: [{lvl: 3 as short, id: 8 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 8 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 8 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 8 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 8 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 8 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 8 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 8 as short}]}
    ],
    "sharpness": [
        {StoredEnchantments: [{lvl: 5 as short, id: 16 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 16 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 16 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 16 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 16 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 16 as short}]}
    ],
    "smite": [
        {StoredEnchantments: [{lvl: 5 as short, id: 17 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 17 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 17 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 17 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 17 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 17 as short}]}
    ],
    "spiderbane": [
        {StoredEnchantments: [{lvl: 5 as short, id: 18 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 18 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 18 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 18 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 18 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 18 as short}]}
    ],
    "knockback": [
        {StoredEnchantments: [{lvl: 2 as short, id: 19 as short}]},
        {StoredEnchantments: [{lvl: 3 as short, id: 19 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 19 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 19 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 19 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 19 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 19 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 19 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 19 as short}]}
    ],
    "fireaspect": [
        {StoredEnchantments: [{lvl: 2 as short, id: 20 as short}]},
        {StoredEnchantments: [{lvl: 3 as short, id: 20 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 20 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 20 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 20 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 20 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 20 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 20 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 20 as short}]}
    ],
    "looting": [
        {StoredEnchantments: [{lvl: 3 as short, id: 21 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 21 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 21 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 21 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 21 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 21 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 21 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 21 as short}]}
    ],
    "sweepingedge": [
        {StoredEnchantments: [{lvl: 3 as short, id: 22 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 22 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 22 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 22 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 22 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 22 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 22 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 22 as short}]}
    ],
    "reaper": [
        {StoredEnchantments: [{lvl: 5 as short, id: 23 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 23 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 23 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 23 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 23 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 23 as short}]}
    ],
    "furious": [
        {StoredEnchantments: [{lvl: 3 as short, id: 27 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 27 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 27 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 27 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 27 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 27 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 27 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 27 as short}]}
    ],
    "lifesteal": [
        {StoredEnchantments: [{lvl: 3 as short, id: 28 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 28 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 28 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 28 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 28 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 28 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 28 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 28 as short}]}
    ],
    "nightvision": [
        {StoredEnchantments: [{lvl: 1 as short, id: 31 as short}]}
    ],
    "efficiency": [
        {StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 32 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 32 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 32 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 32 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 32 as short}]}
    ],
    "unbreaking": [
        {StoredEnchantments: [{lvl: 3 as short, id: 34 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 34 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 34 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 34 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 34 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 34 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 34 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 34 as short}]}
    ],
    "fortune": [
        {StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 35 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 35 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 35 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 35 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 35 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 35 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 35 as short}]}
    ],
    "holding": [
        {StoredEnchantments: [{lvl: 4 as short, id: 37 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 37 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 37 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 37 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 37 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 37 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 37 as short}]}
    ],
    "insight": [
        {StoredEnchantments: [{lvl: 3 as short, id: 38 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 38 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 38 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 38 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 38 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 38 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 38 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 38 as short}]}
    ],
    "leech": [
        {StoredEnchantments: [{lvl: 4 as short, id: 39 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 39 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 39 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 39 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 39 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 39 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 39 as short}]}
    ],
    "multishot": [
        {StoredEnchantments: [{lvl: 4 as short, id: 40 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 40 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 40 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 40 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 40 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 40 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 40 as short}]}
    ],
    "vorpal": [
        {StoredEnchantments: [{lvl: 3 as short, id: 42 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 42 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 42 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 42 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 42 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 42 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 42 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 42 as short}]}
    ],
    "power": [
        {StoredEnchantments: [{lvl: 5 as short, id: 48 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 48 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 48 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 48 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 48 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 48 as short}]}
    ],
    "punch": [
        {StoredEnchantments: [{lvl: 2 as short, id: 49 as short}]},
        {StoredEnchantments: [{lvl: 3 as short, id: 49 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 49 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 49 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 49 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 49 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 49 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 49 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 49 as short}]}
    ],
    "luckofthesea": [
        {StoredEnchantments: [{lvl: 3 as short, id: 61 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 61 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 61 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 61 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 61 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 61 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 61 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 61 as short}]}
    ],
    "lure": [
        {StoredEnchantments: [{lvl: 3 as short, id: 62 as short}]},
        {StoredEnchantments: [{lvl: 4 as short, id: 62 as short}]},
        {StoredEnchantments: [{lvl: 5 as short, id: 62 as short}]},
        {StoredEnchantments: [{lvl: 6 as short, id: 62 as short}]},
        {StoredEnchantments: [{lvl: 7 as short, id: 62 as short}]},
        {StoredEnchantments: [{lvl: 8 as short, id: 62 as short}]},
        {StoredEnchantments: [{lvl: 9 as short, id: 62 as short}]},
        {StoredEnchantments: [{lvl: 10 as short, id: 62 as short}]}
    ]
};

static toMake as int[string] = {
    "protection": 6,
    "fireresistance": 6,
    "featherfall": 6,
    "blastprotection": 6,
    "projectileprotection": 6,
    "respiration": 7,
    "thorns": 7,
    "depthstrider": 7,
    "sharpness": 5,
    "smite": 5,
    "spiderbane": 5,
    "knockback": 8,
    "fireaspect": 8,
    "looting": 7,
    "sweepingedge": 7,
    "reaper": 5,
    "furious": 7,
    "lifesteal": 7,
    "nightvision": 1,
    "efficiency": 5,
    "unbreaking": 7,
    "fortune": 7,
    "holding": 6,
    "insight": 7,
    "leech": 6,
    "multishot": 6,
    "vorpal": 7,
    "power": 5,
    "punch": 8,
    "luckofthesea": 7,
    "lure": 7
};
