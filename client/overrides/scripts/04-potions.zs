#priority 10

import crafttweaker.oredict.IOreDict;

val basePotion=<minecraft:potion>;

val quarkRes1=basePotion.withTag({Potion: "quark:resistance"});
val quarkRes2=basePotion.withTag({Potion: "quark:strong_resistance"});
val cofhRes1=basePotion.withTag({Potion: "cofhcore:resistance"});
val cofhRes2=basePotion.withTag({Potion: "cofhcore:resistance2"});

val quarkHaste1=basePotion.withTag({Potion: "quark:haste"});
val quarkHaste2=basePotion.withTag({Potion: "quark:strong_haste"});
val cofhHaste1=basePotion.withTag({Potion: "cofhcore:haste"});
val cofhHaste2=basePotion.withTag({Potion: "cofhcore:haste2"});

val mcStr1=basePotion.withTag({Potion: "minecraft:strength"});
val mcStr2=basePotion.withTag({Potion: "minecraft:strong_strength"});
val cofhStr1=basePotion.withTag({Potion: "cofhcore:strength"});
val cofhStr2=basePotion.withTag({Potion: "cofhcore:strength2"});

val mcHarm1=basePotion.withTag({Potion: "minecraft:harming"});
val mcHarm2=basePotion.withTag({Potion: "minecraft:strong_harming"});
val cofhHarm1=basePotion.withTag({Potion: "cofhcore:harming"});
val cofhHarm2=basePotion.withTag({Potion: "cofhcore:harming2"});

recipes.addShapeless(quarkRes1, [cofhRes1]);
recipes.addShapeless(quarkRes2, [cofhRes2]);
recipes.addShapeless(cofhRes1, [quarkRes1]);
recipes.addShapeless(cofhRes2, [quarkRes2]);

recipes.addShapeless(quarkHaste1, [cofhHaste1]);
recipes.addShapeless(quarkHaste2, [cofhHaste2]);
recipes.addShapeless(cofhHaste1, [quarkHaste1]);
recipes.addShapeless(cofhHaste2, [quarkHaste2]);

recipes.addShapeless(mcStr1, [cofhStr1]);
recipes.addShapeless(mcStr2, [cofhStr2]);
recipes.addShapeless(cofhStr1, [mcStr1]);
recipes.addShapeless(cofhStr2, [mcStr2]);

recipes.addShapeless(mcHarm1, [cofhHarm1]);
recipes.addShapeless(mcHarm2, [cofhHarm2]);
recipes.addShapeless(cofhHarm1, [mcHarm1]);
recipes.addShapeless(cofhHarm2, [mcHarm2]);

brewing.addBrew(basePotion.withTag({Potion: "minecraft:awkward"}), oreDict.blockLapis, basePotion.withTag({Potion: "minecraft:luck"}));
