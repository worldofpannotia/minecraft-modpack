#priority 100

import crafttweaker.item.IItemStack;

static list as IItemStack[string][string] = {
    "absorption": {
        "i": <minecraft:potion>.withTag({Potion: "cofhcore:absorption"}),
        "ii": <minecraft:potion>.withTag({Potion: "cofhcore:absorption2"}),
        "iii": <minecraft:potion>.withTag({Potion: "cofhcore:absorption3"}),
        "iv": <minecraft:potion>.withTag({Potion: "cofhcore:absorption4"}),
        "v": <minecraft:potion>.withTag({Potion: "cofhcore:absorption5"}),
        "long": <minecraft:potion>.withTag({Potion: "cofhcore:absorption+"})
    },
    "beheading": {
        "i": <minecraft:potion>.withTag({Potion: "extraalchemy:beheading_normal"}),
        "ii": <minecraft:potion>.withTag({Potion: "extraalchemy:beheading_strong"}),
        "long": <minecraft:potion>.withTag({Potion: "extraalchemy:beheading_long"})
    },
    "concentration": {
        "i": <minecraft:potion>.withTag({Potion: "extraalchemy:concentration_normal"})
    },
    "dangersight": {
        "i": <minecraft:potion>.withTag({Potion: "minecraft:danger_sight"}),
        "long": <minecraft:potion>.withTag({Potion: "minecraft:long_danger_sight"})
    },
    "fireresistance": {
        "i": <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}),
        "long": <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"})
    },
    "fuse": {
        "i": <minecraft:potion>.withTag({Potion: "extraalchemy:fuse_normal"}),
        "ii": <minecraft:potion>.withTag({Potion: "extraalchemy:fuse_strong"}),
        "quick": <minecraft:potion>.withTag({Potion: "extraalchemy:fuse_quick"})
    },
    "harming": {
        "i": <minecraft:potion>.withTag({Potion: "minecraft:harming"}),
        "ii": <minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),
        "iii": <minecraft:potion>.withTag({Potion: "cofhcore:harming3"}),
        "iv": <minecraft:potion>.withTag({Potion: "cofhcore:harming4"}),
        "v": <minecraft:potion>.withTag({Potion: "cofhcore:harming5"})
    },
    "haste": {
        "i": <minecraft:potion>.withTag({Potion: "quark:haste"}),
        "ii": <minecraft:potion>.withTag({Potion: "quark:strong_haste"}),
        "iii": <minecraft:potion>.withTag({Potion: "cofhcore:haste3"}),
        "iv": <minecraft:potion>.withTag({Potion: "cofhcore:haste4"}),
        "long": <minecraft:potion>.withTag({Potion: "quark:long_haste"})
    },
    "leech": {
        "i": <minecraft:potion>.withTag({Potion: "extraalchemy:leech_normal"}),
        "ii": <minecraft:potion>.withTag({Potion: "extraalchemy:leech_strong"}),
        "long": <minecraft:potion>.withTag({Potion: "extraalchemy:leech_long"})
    },
    "luck": {
        "i": <minecraft:potion>.withTag({Potion: "minecraft:luck"})
    },
    "nightvision": {
        "i": <minecraft:potion>.withTag({Potion: "minecraft:night_vision"}),
        "long": <minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"})
    },
    "resistance": {
        "i": <minecraft:potion>.withTag({Potion: "quark:resistance"}),
        "ii": <minecraft:potion>.withTag({Potion: "quark:strong_resistance"}),
        "iii": <minecraft:potion>.withTag({Potion: "cofhcore:resistance3"}),
        "iv": <minecraft:potion>.withTag({Potion: "cofhcore:resistance4"}),
        "v": <minecraft:potion>.withTag({Potion: "cofhcore:resistance5"}),
        "long": <minecraft:potion>.withTag({Potion: "quark:long_resistance"})
    },
    "speed": {
        "i": <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
        "ii": <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}),
        "iii": <minecraft:potion>.withTag({Potion: "cofhcore:swiftness3"}),
        "iv": <minecraft:potion>.withTag({Potion: "cofhcore:swiftness4"}),
        "v": <minecraft:potion>.withTag({Potion: "cofhcore:swiftness5"}),
        "long": <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"})
    },
    "strength": {
        "i": <minecraft:potion>.withTag({Potion: "minecraft:strength"}),
        "ii": <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}),
        "iii": <minecraft:potion>.withTag({Potion: "cofhcore:strength3"}),
        "iv": <minecraft:potion>.withTag({Potion: "cofhcore:strength4"}),
        "v": <minecraft:potion>.withTag({Potion: "cofhcore:strength5"}),
        "long": <minecraft:potion>.withTag({Potion: "minecraft:long_strength"})
    },
    "waterbreathing": {
        "i": <minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}),
        "long": <minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"})
    }
};
