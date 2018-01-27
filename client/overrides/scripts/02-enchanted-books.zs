import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

val enchBook=<minecraft:enchanted_book>;
val basePotion=<minecraft:potion>;

val goldBlock=<minecraft:gold_block>;
val lavaBucket=<minecraft:lava_bucket>;

val potions = {
	"absorption": {
		"i": basePotion.withTag({Potion: "cofhcore:absorption"}),
		"ii": basePotion.withTag({Potion: "cofhcore:absorption2"}),
		"iii": basePotion.withTag({Potion: "cofhcore:absorption3"}),
		"iv": basePotion.withTag({Potion: "cofhcore:absorption4"}),
		"v": basePotion.withTag({Potion: "cofhcore:absorption5"}),
		"long": basePotion.withTag({Potion: "cofhcore:absorption+"})
	},
	"beheading": {
		"i": basePotion.withTag({Potion: "extraalchemy:beheading_normal"}),
		"ii": basePotion.withTag({Potion: "extraalchemy:beheading_strong"}),
		"long": basePotion.withTag({Potion: "extraalchemy:beheading_long"})
	},
	"concentration": {
		"std": basePotion.withTag({Potion: "extraalchemy:concentration_normal"})
	},
	"dangersight": {
		"std": basePotion.withTag({Potion: "minecraft:danger_sight"}),
		"long": basePotion.withTag({Potion: "minecraft:long_danger_sight"})
	},
	"fireresistance": {
		"std": basePotion.withTag({Potion: "minecraft:fire_resistance"}),
		"long": basePotion.withTag({Potion: "minecraft:long_fire_resistance"})
	},
	"fuse": {
		"i": basePotion.withTag({Potion: "extraalchemy:fuse_normal"}),
		"ii": basePotion.withTag({Potion: "extraalchemy:fuse_strong"}),
		"quick": basePotion.withTag({Potion: "extraalchemy:fuse_quick"})
	},
	"harming": {
		"i": basePotion.withTag({Potion: "minecraft:harming"}),
		"ii": basePotion.withTag({Potion: "minecraft:strong_harming"}),
		"iii": basePotion.withTag({Potion: "cofhcore:harming3"}),
		"iv": basePotion.withTag({Potion: "cofhcore:harming4"}),
		"v": basePotion.withTag({Potion: "cofhcore:harming5"})
	},
	"haste": {
		"i": basePotion.withTag({Potion: "quark:haste"}),
		"ii": basePotion.withTag({Potion: "quark:strong_haste"}),
		"iii": basePotion.withTag({Potion: "cofhcore:haste3"}),
		"iv": basePotion.withTag({Potion: "cofhcore:haste4"}),
		"long": basePotion.withTag({Potion: "quark:long_haste"})
	},
	"leech": {
		"i": basePotion.withTag({Potion: "extraalchemy:leech_normal"}),
		"ii": basePotion.withTag({Potion: "extraalchemy:leech_strong"}),
		"long": basePotion.withTag({Potion: "extraalchemy:leech_long"})
	},
	"luck": {
		"std": basePotion.withTag({Potion: "minecraft:luck"})
	},
	"nightvision": {
		"std": basePotion.withTag({Potion: "minecraft:night_vision"}),
		"long": basePotion.withTag({Potion: "minecraft:long_night_vision"})
	},
	"resistance": {
		"i": basePotion.withTag({Potion: "quark:resistance"}),
		"ii": basePotion.withTag({Potion: "quark:strong_resistance"}),
		"iii": basePotion.withTag({Potion: "cofhcore:resistance3"}),
		"iv": basePotion.withTag({Potion: "cofhcore:resistance4"}),
		"v": basePotion.withTag({Potion: "cofhcore:resistance5"}),
		"long": basePotion.withTag({Potion: "quark:long_resistance"})
	},
	"speed": {
		"i": basePotion.withTag({Potion: "minecraft:swiftness"}),
		"ii": basePotion.withTag({Potion: "minecraft:strong_swiftness"}),
		"iii": basePotion.withTag({Potion: "cofhcore:swiftness3"}),
		"iv": basePotion.withTag({Potion: "cofhcore:swiftness4"}),
		"v": basePotion.withTag({Potion: "cofhcore:swiftness5"}),
		"long": basePotion.withTag({Potion: "minecraft:long_swiftness"})
	},
	"strength": {
		"i": basePotion.withTag({Potion: "minecraft:strength"}),
		"ii": basePotion.withTag({Potion: "minecraft:strong_strength"}),
		"iii": basePotion.withTag({Potion: "cofhcore:strength3"}),
		"iv": basePotion.withTag({Potion: "cofhcore:strength4"}),
		"v": basePotion.withTag({Potion: "cofhcore:strength5"}),
		"long": basePotion.withTag({Potion: "minecraft:long_strength"})
	},
	"waterbreathing": {
		"std": basePotion.withTag({Potion: "minecraft:water_breathing"}),
		"long": basePotion.withTag({Potion: "minecraft:long_water_breathing"})
	}
} as IItemStack[string][string];

val bookItems = {
	"protection": potions["resistance"]["ii"],
	"fireresistance": potions["fireresistance"]["std"],
	"featherfall": <minecraft:feather>,
	"blastprotection": potions["resistance"]["ii"],
	"projectileprotection": potions["resistance"]["ii"],
	"respiration": potions["waterbreathing"]["long"],
	"thorns": potions["harming"]["ii"],
	"depthstrider": potions["waterbreathing"]["long"],
	"sharpness": potions["harming"]["ii"],
	"smite": potions["harming"]["ii"],
	"spiderbane": potions["dangersight"]["long"],
	"knockback": <minecraft:piston>,
	"fireaspect": potions["fuse"]["strong"],
	"looting": potions["concentration"]["std"],
	"sweepingedge": potions["harming"]["ii"],
	"reaper": potions.strength.ii,
	"furious": potions.strength.ii,
	"lifesteal": potions["leech"]["strong"],
	"nightvision": potions["nightvision"]["long"],
	"holding": potions["absorption"]["ii"],
	"insight": potions["concentration"]["std"],
	"efficiency": potions["speed"]["ii"],
	"unbreaking": potions["strength"]["ii"],
	"fortune": potions["concentration"]["std"],
	"leech": potions["leech"]["strong"],
	"multishot": <basemetals:diamond_arrow>,
	"vorpal": potions["beheading"]["strong"],
	"power": potions["strength"]["ii"],
	"punch": <minecraft:anvil>,
	"luckofthesea": potions["luck"]["std"],
	"lure": <thermalfoundation:bait:1>
} as IItemStack[string];

val bookTags = {
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
		{StoredEnchantments: [{lvl: 3 as short, id: 24 as short}]},
		{StoredEnchantments: [{lvl: 4 as short, id: 24 as short}]},
		{StoredEnchantments: [{lvl: 5 as short, id: 24 as short}]},
		{StoredEnchantments: [{lvl: 6 as short, id: 24 as short}]},
		{StoredEnchantments: [{lvl: 7 as short, id: 24 as short}]},
		{StoredEnchantments: [{lvl: 8 as short, id: 24 as short}]},
		{StoredEnchantments: [{lvl: 9 as short, id: 24 as short}]},
		{StoredEnchantments: [{lvl: 10 as short, id: 24 as short}]}
	],
	"lifesteal": [
		{StoredEnchantments: [{lvl: 3 as short, id: 25 as short}]},
		{StoredEnchantments: [{lvl: 4 as short, id: 25 as short}]},
		{StoredEnchantments: [{lvl: 5 as short, id: 25 as short}]},
		{StoredEnchantments: [{lvl: 6 as short, id: 25 as short}]},
		{StoredEnchantments: [{lvl: 7 as short, id: 25 as short}]},
		{StoredEnchantments: [{lvl: 8 as short, id: 25 as short}]},
		{StoredEnchantments: [{lvl: 9 as short, id: 25 as short}]},
		{StoredEnchantments: [{lvl: 10 as short, id: 25 as short}]}
	],
	"nightvision": [
		{StoredEnchantments: [{lvl: 1 as short, id: 28 as short}]}
	],
	"holding": [
		{StoredEnchantments: [{lvl: 4 as short, id: 30 as short}]},
		{StoredEnchantments: [{lvl: 5 as short, id: 30 as short}]},
		{StoredEnchantments: [{lvl: 6 as short, id: 30 as short}]},
		{StoredEnchantments: [{lvl: 7 as short, id: 30 as short}]},
		{StoredEnchantments: [{lvl: 8 as short, id: 30 as short}]},
		{StoredEnchantments: [{lvl: 9 as short, id: 30 as short}]},
		{StoredEnchantments: [{lvl: 10 as short, id: 30 as short}]}
	],
	"insight": [
		{StoredEnchantments: [{lvl: 3 as short, id: 31 as short}]},
		{StoredEnchantments: [{lvl: 4 as short, id: 31 as short}]},
		{StoredEnchantments: [{lvl: 5 as short, id: 31 as short}]},
		{StoredEnchantments: [{lvl: 6 as short, id: 31 as short}]},
		{StoredEnchantments: [{lvl: 7 as short, id: 31 as short}]},
		{StoredEnchantments: [{lvl: 8 as short, id: 31 as short}]},
		{StoredEnchantments: [{lvl: 9 as short, id: 31 as short}]},
		{StoredEnchantments: [{lvl: 10 as short, id: 31 as short}]}
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
	"leech": [
		{StoredEnchantments: [{lvl: 4 as short, id: 36 as short}]},
		{StoredEnchantments: [{lvl: 5 as short, id: 36 as short}]},
		{StoredEnchantments: [{lvl: 6 as short, id: 36 as short}]},
		{StoredEnchantments: [{lvl: 7 as short, id: 36 as short}]},
		{StoredEnchantments: [{lvl: 8 as short, id: 36 as short}]},
		{StoredEnchantments: [{lvl: 9 as short, id: 36 as short}]},
		{StoredEnchantments: [{lvl: 10 as short, id: 36 as short}]}
	],
	"multishot": [
		{StoredEnchantments: [{lvl: 4 as short, id: 37 as short}]},
		{StoredEnchantments: [{lvl: 5 as short, id: 37 as short}]},
		{StoredEnchantments: [{lvl: 6 as short, id: 37 as short}]},
		{StoredEnchantments: [{lvl: 7 as short, id: 37 as short}]},
		{StoredEnchantments: [{lvl: 8 as short, id: 37 as short}]},
		{StoredEnchantments: [{lvl: 9 as short, id: 37 as short}]},
		{StoredEnchantments: [{lvl: 10 as short, id: 37 as short}]}
	],
	"vorpal": [
		{StoredEnchantments: [{lvl: 3 as short, id: 39 as short}]},
		{StoredEnchantments: [{lvl: 4 as short, id: 39 as short}]},
		{StoredEnchantments: [{lvl: 5 as short, id: 39 as short}]},
		{StoredEnchantments: [{lvl: 6 as short, id: 39 as short}]},
		{StoredEnchantments: [{lvl: 7 as short, id: 39 as short}]},
		{StoredEnchantments: [{lvl: 8 as short, id: 39 as short}]},
		{StoredEnchantments: [{lvl: 9 as short, id: 39 as short}]},
		{StoredEnchantments: [{lvl: 10 as short, id: 39 as short}]}
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
} as IData[string];

val booksToMake = [
	"protection",
	"fireresistance",
	"featherfall",
	"blastprotection",
	"projectileprotection",
	"respiration",
	"thorns",
	"depthstrider",
	"sharpness",
	"smite",
	"spiderbane",
	"knockback",
	"fireaspect",
	"looting",
	"sweepingedge",
	"reaper",
	"furious",
	"lifesteal",
	"holding",
	"insight",
	"efficiency",
	"unbreaking",
	"fortune",
	"leech",
	"multishot",
	"vorpal",
	"power",
	"punch",
	"luckofthesea",
	"lure"
] as string[];

val singleBooksToMake = [
	"nightvision"
] as string[];

for book in booksToMake {
	var bookItem = bookItems[book];
	var numBooksToMake = bookTags[book].length - 1;

	for i in 0 .. numBooksToMake {
		var j = i + 1;
		var fromTag = bookTags[book][i];
		var toTag = bookTags[book][j];

		recipes.addShaped(
			enchBook.withTag(toTag),
			[
				[null, bookItem, null],
				[bookItem, enchBook.withTag(fromTag), bookItem],
				[null, goldBlock, null]
			]
		);

		mods.jei.JEI.addItem(enchBook.withTag(toTag));
	}
}
