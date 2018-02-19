#priority 10

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

val enchBook=<minecraft:enchanted_book>;
val enchBottle=<minecraft:experience_bottle>;
val goldBlock=<minecraft:gold_block>;
val basePotion=<minecraft:potion>;

val bookItems = {
    "protection": scripts.potions.list["resistance"]["ii"],
    "fireresistance": scripts.potions.list["fireresistance"]["i"],
    "featherfall": <minecraft:feather>,
    "blastprotection": scripts.potions.list["resistance"]["ii"],
    "projectileprotection": scripts.potions.list["resistance"]["ii"],
    "respiration": scripts.potions.list["waterbreathing"]["long"],
    "thorns": scripts.potions.list["harming"]["ii"],
    "depthstrider": scripts.potions.list["waterbreathing"]["long"],
    "sharpness": scripts.potions.list["harming"]["ii"],
    "smite": scripts.potions.list["harming"]["ii"],
    "spiderbane": scripts.potions.list["dangersight"]["long"],
    "knockback": <minecraft:piston>,
    "fireaspect": scripts.potions.list["fuse"]["ii"],
    "looting": scripts.potions.list["concentration"]["i"],
    "sweepingedge": scripts.potions.list["harming"]["ii"],
    "reaper": scripts.potions.list["strength"]["ii"],
    "furious": scripts.potions.list["strength"]["ii"],
    "lifesteal": scripts.potions.list["leech"]["ii"],
    "nightvision": scripts.potions.list["nightvision"]["long"],
    "efficiency": scripts.potions.list["speed"]["ii"],
    "unbreaking": scripts.potions.list["strength"]["ii"],
    "fortune": scripts.potions.list["concentration"]["i"],
    "holding": scripts.potions.list["absorption"]["ii"],
    "insight": scripts.potions.list["concentration"]["i"],
    "leech": scripts.potions.list["leech"]["ii"],
    "multishot": <quark:arrow_ender>,
    "vorpal": scripts.potions.list["beheading"]["ii"],
    "power": scripts.potions.list["strength"]["ii"],
    "punch": <minecraft:anvil>,
    "luckofthesea": scripts.potions.list["luck"]["i"],
    "lure": <thermalfoundation:bait:1>
} as IItemStack[string];

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
    "nightvision",
    "efficiency",
    "unbreaking",
    "fortune",
    "holding",
    "insight",
    "leech",
    "multishot",
    "vorpal",
    "power",
    "punch",
    "luckofthesea",
    "lure"
] as string[];

for book in booksToMake {
    var numToMake = scripts.enchants.toMake[book];
    var bookTags = scripts.enchants.tags[book];
    var bookItem = bookItems[book];

    if (numToMake == 1) {
        recipes.addShaped("alt" ~ book,
            enchBook.withTag(bookTags[0]),
            [
                [enchBottle, bookItem, enchBottle],
                [bookItem, <minecraft:book>, bookItem],
                [enchBottle, goldBlock, enchBottle]
            ]
        );
        mods.jei.JEI.addItem(enchBook.withTag(bookTags[0]));
    } else {
        for i in 0 .. numToMake {
            var j = i + 1;

            var fromTag = bookTags[i];
            var toTag = bookTags[j];

            var fromLevel = 10 - numToMake + i;
            var toLevel = 10 - numToMake + j;

            recipes.addShaped("alt" ~ book ~ fromLevel ~ "_" ~ toLevel,
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
}
