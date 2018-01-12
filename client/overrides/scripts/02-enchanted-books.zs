val goldBlock=<minecraft:gold_block>;

val nitevisbook=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 28 as short}]});
val nitevispotion2=<minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"});
recipes.addShaped(nitevisbook, [[null, nitevispotion2, null], [nitevispotion2, <minecraft:book>, nitevispotion2], [null, goldBlock, null]]);

val prot4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 0 as short}]});
val prot5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 0 as short}]});
val prot6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 0 as short}]});
val prot7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 0 as short}]});
val prot8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 0 as short}]});
val prot9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 0 as short}]});
val prot10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 0 as short}]});
val protPotion=<minecraft:potion>.withTag({Potion: "quark:strong_resistance"});

recipes.addShaped(prot5book, [[null, protPotion, null], [protPotion, prot4book, protPotion], [null, goldBlock, null]]);
recipes.addShaped(prot6book, [[null, protPotion, null], [protPotion, prot5book, protPotion], [null, goldBlock, null]]);
recipes.addShaped(prot7book, [[null, protPotion, null], [protPotion, prot6book, protPotion], [null, goldBlock, null]]);
recipes.addShaped(prot8book, [[null, protPotion, null], [protPotion, prot7book, protPotion], [null, goldBlock, null]]);
recipes.addShaped(prot9book, [[null, protPotion, null], [protPotion, prot8book, protPotion], [null, goldBlock, null]]);
recipes.addShaped(prot10book, [[null, protPotion, null], [protPotion, prot9book, protPotion], [null, goldBlock, null]]);

val fireprot4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 1 as short}]});
val fireprot5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 1 as short}]});
val fireprot6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 1 as short}]});
val fireprot7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 1 as short}]});
val fireprot8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 1 as short}]});
val fireprot9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 1 as short}]});
val fireprot10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 1 as short}]});
val fireprotPotion=<minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"});

recipes.addShaped(fireprot5book, [[null, fireprotPotion, null], [fireprotPotion, fireprot4book, fireprotPotion], [null, goldBlock, null]]);
recipes.addShaped(fireprot6book, [[null, fireprotPotion, null], [fireprotPotion, fireprot5book, fireprotPotion], [null, goldBlock, null]]);
recipes.addShaped(fireprot7book, [[null, fireprotPotion, null], [fireprotPotion, fireprot6book, fireprotPotion], [null, goldBlock, null]]);
recipes.addShaped(fireprot8book, [[null, fireprotPotion, null], [fireprotPotion, fireprot7book, fireprotPotion], [null, goldBlock, null]]);
recipes.addShaped(fireprot9book, [[null, fireprotPotion, null], [fireprotPotion, fireprot8book, fireprotPotion], [null, goldBlock, null]]);
recipes.addShaped(fireprot10book, [[null, fireprotPotion, null], [fireprotPotion, fireprot9book, fireprotPotion], [null, goldBlock, null]]);

val blastprot4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 3 as short}]});
val blastprot5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 3 as short}]});
val blastprot6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 3 as short}]});
val blastprot7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 3 as short}]});
val blastprot8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 3 as short}]});
val blastprot9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 3 as short}]});
val blastprot10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 3 as short}]});
val blastprotPotion=<minecraft:potion>.withTag({Potion: "quark:strong_resistance"});

recipes.addShaped(blastprot5book, [[null, blastprotPotion, null], [blastprotPotion, blastprot4book, blastprotPotion], [null, goldBlock, null]]);
recipes.addShaped(blastprot6book, [[null, blastprotPotion, null], [blastprotPotion, blastprot5book, blastprotPotion], [null, goldBlock, null]]);
recipes.addShaped(blastprot7book, [[null, blastprotPotion, null], [blastprotPotion, blastprot6book, blastprotPotion], [null, goldBlock, null]]);
recipes.addShaped(blastprot8book, [[null, blastprotPotion, null], [blastprotPotion, blastprot7book, blastprotPotion], [null, goldBlock, null]]);
recipes.addShaped(blastprot9book, [[null, blastprotPotion, null], [blastprotPotion, blastprot8book, blastprotPotion], [null, goldBlock, null]]);
recipes.addShaped(blastprot10book, [[null, blastprotPotion, null], [blastprotPotion, blastprot9book, blastprotPotion], [null, goldBlock, null]]);

val projprot4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 4 as short}]});
val projprot5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 4 as short}]});
val projprot6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 4 as short}]});
val projprot7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 4 as short}]});
val projprot8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 4 as short}]});
val projprot9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 4 as short}]});
val projprot10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 4 as short}]});
val projprotPotion=<minecraft:potion>.withTag({Potion: "quark:strong_resistance"});

recipes.addShaped(projprot5book, [[null, projprotPotion, null], [projprotPotion, projprot4book, projprotPotion], [null, goldBlock, null]]);
recipes.addShaped(projprot6book, [[null, projprotPotion, null], [projprotPotion, projprot5book, projprotPotion], [null, goldBlock, null]]);
recipes.addShaped(projprot7book, [[null, projprotPotion, null], [projprotPotion, projprot6book, projprotPotion], [null, goldBlock, null]]);
recipes.addShaped(projprot8book, [[null, projprotPotion, null], [projprotPotion, projprot7book, projprotPotion], [null, goldBlock, null]]);
recipes.addShaped(projprot9book, [[null, projprotPotion, null], [projprotPotion, projprot8book, projprotPotion], [null, goldBlock, null]]);
recipes.addShaped(projprot10book, [[null, projprotPotion, null], [projprotPotion, projprot9book, projprotPotion], [null, goldBlock, null]]);

val respiration3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 5 as short}]});
val respiration4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 5 as short}]});
val respiration5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 5 as short}]});
val respiration6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 5 as short}]});
val respiration7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 5 as short}]});
val respiration8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 5 as short}]});
val respiration9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 5 as short}]});
val respiration10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 5 as short}]});
val respirationPotion=<minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"});

recipes.addShaped(respiration4book, [[null, respirationPotion, null], [respirationPotion, respiration3book, respirationPotion], [null, goldBlock, null]]);
recipes.addShaped(respiration5book, [[null, respirationPotion, null], [respirationPotion, respiration4book, respirationPotion], [null, goldBlock, null]]);
recipes.addShaped(respiration6book, [[null, respirationPotion, null], [respirationPotion, respiration5book, respirationPotion], [null, goldBlock, null]]);
recipes.addShaped(respiration7book, [[null, respirationPotion, null], [respirationPotion, respiration6book, respirationPotion], [null, goldBlock, null]]);
recipes.addShaped(respiration8book, [[null, respirationPotion, null], [respirationPotion, respiration7book, respirationPotion], [null, goldBlock, null]]);
recipes.addShaped(respiration9book, [[null, respirationPotion, null], [respirationPotion, respiration8book, respirationPotion], [null, goldBlock, null]]);
recipes.addShaped(respiration10book, [[null, respirationPotion, null], [respirationPotion, respiration9book, respirationPotion], [null, goldBlock, null]]);

val thorns3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 7 as short}]});
val thorns4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 7 as short}]});
val thorns5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 7 as short}]});
val thorns6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 7 as short}]});
val thorns7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 7 as short}]});
val thorns8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 7 as short}]});
val thorns9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 7 as short}]});
val thorns10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 7 as short}]});
val thornsPotion=<minecraft:potion>.withTag({Potion: "minecraft:strong_harming"});

recipes.addShaped(thorns4book, [[null, thornsPotion, null], [thornsPotion, thorns3book, thornsPotion], [null, goldBlock, null]]);
recipes.addShaped(thorns5book, [[null, thornsPotion, null], [thornsPotion, thorns4book, thornsPotion], [null, goldBlock, null]]);
recipes.addShaped(thorns6book, [[null, thornsPotion, null], [thornsPotion, thorns5book, thornsPotion], [null, goldBlock, null]]);
recipes.addShaped(thorns7book, [[null, thornsPotion, null], [thornsPotion, thorns6book, thornsPotion], [null, goldBlock, null]]);
recipes.addShaped(thorns8book, [[null, thornsPotion, null], [thornsPotion, thorns7book, thornsPotion], [null, goldBlock, null]]);
recipes.addShaped(thorns9book, [[null, thornsPotion, null], [thornsPotion, thorns8book, thornsPotion], [null, goldBlock, null]]);
recipes.addShaped(thorns10book, [[null, thornsPotion, null], [thornsPotion, thorns9book, thornsPotion], [null, goldBlock, null]]);

val depthstrider3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 8 as short}]});
val depthstrider4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 8 as short}]});
val depthstrider5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 8 as short}]});
val depthstrider6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 8 as short}]});
val depthstrider7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 8 as short}]});
val depthstrider8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 8 as short}]});
val depthstrider9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 8 as short}]});
val depthstrider10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 8 as short}]});
val depthstriderPotion=<minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"});

recipes.addShaped(depthstrider4book, [[null, depthstriderPotion, null], [depthstriderPotion, depthstrider3book, depthstriderPotion], [null, goldBlock, null]]);
recipes.addShaped(depthstrider5book, [[null, depthstriderPotion, null], [depthstriderPotion, depthstrider4book, depthstriderPotion], [null, goldBlock, null]]);
recipes.addShaped(depthstrider6book, [[null, depthstriderPotion, null], [depthstriderPotion, depthstrider5book, depthstriderPotion], [null, goldBlock, null]]);
recipes.addShaped(depthstrider7book, [[null, depthstriderPotion, null], [depthstriderPotion, depthstrider6book, depthstriderPotion], [null, goldBlock, null]]);
recipes.addShaped(depthstrider8book, [[null, depthstriderPotion, null], [depthstriderPotion, depthstrider7book, depthstriderPotion], [null, goldBlock, null]]);
recipes.addShaped(depthstrider9book, [[null, depthstriderPotion, null], [depthstriderPotion, depthstrider8book, depthstriderPotion], [null, goldBlock, null]]);
recipes.addShaped(depthstrider10book, [[null, depthstriderPotion, null], [depthstriderPotion, depthstrider9book, depthstriderPotion], [null, goldBlock, null]]);

val sharp5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 16 as short}]});
val sharp6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 16 as short}]});
val sharp7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 16 as short}]});
val sharp8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 16 as short}]});
val sharp9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 16 as short}]});
val sharp10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 16 as short}]});
val sharpPotion=<minecraft:potion>.withTag({Potion: "minecraft:strong_harming"});

recipes.addShaped(sharp6book, [[null, sharpPotion, null], [sharpPotion, sharp5book, sharpPotion], [null, goldBlock, null]]);
recipes.addShaped(sharp7book, [[null, sharpPotion, null], [sharpPotion, sharp6book, sharpPotion], [null, goldBlock, null]]);
recipes.addShaped(sharp8book, [[null, sharpPotion, null], [sharpPotion, sharp7book, sharpPotion], [null, goldBlock, null]]);
recipes.addShaped(sharp9book, [[null, sharpPotion, null], [sharpPotion, sharp8book, sharpPotion], [null, goldBlock, null]]);
recipes.addShaped(sharp10book, [[null, sharpPotion, null], [sharpPotion, sharp9book, sharpPotion], [null, goldBlock, null]]);

val smite5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 17 as short}]});
val smite6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 17 as short}]});
val smite7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 17 as short}]});
val smite8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 17 as short}]});
val smite9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 17 as short}]});
val smite10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 17 as short}]});
val smitePotion=<minecraft:potion>.withTag({Potion: "minecraft:strong_harming"});

recipes.addShaped(smite6book, [[null, smitePotion, null], [smitePotion, smite5book, smitePotion], [null, goldBlock, null]]);
recipes.addShaped(smite7book, [[null, smitePotion, null], [smitePotion, smite6book, smitePotion], [null, goldBlock, null]]);
recipes.addShaped(smite8book, [[null, smitePotion, null], [smitePotion, smite7book, smitePotion], [null, goldBlock, null]]);
recipes.addShaped(smite9book, [[null, smitePotion, null], [smitePotion, smite8book, smitePotion], [null, goldBlock, null]]);
recipes.addShaped(smite10book, [[null, smitePotion, null], [smitePotion, smite9book, smitePotion], [null, goldBlock, null]]);

val spiderbane5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 18 as short}]});
val spiderbane6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 18 as short}]});
val spiderbane7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 18 as short}]});
val spiderbane8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 18 as short}]});
val spiderbane9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 18 as short}]});
val spiderbane10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 18 as short}]});
val spiderbanePotion=<minecraft:potion>.withTag({Potion: "quark:long_danger_sight"});

recipes.addShaped(spiderbane6book, [[null, spiderbanePotion, null], [spiderbanePotion, spiderbane5book, spiderbanePotion], [null, goldBlock, null]]);
recipes.addShaped(spiderbane7book, [[null, spiderbanePotion, null], [spiderbanePotion, spiderbane6book, spiderbanePotion], [null, goldBlock, null]]);
recipes.addShaped(spiderbane8book, [[null, spiderbanePotion, null], [spiderbanePotion, spiderbane7book, spiderbanePotion], [null, goldBlock, null]]);
recipes.addShaped(spiderbane9book, [[null, spiderbanePotion, null], [spiderbanePotion, spiderbane8book, spiderbanePotion], [null, goldBlock, null]]);
recipes.addShaped(spiderbane10book, [[null, spiderbanePotion, null], [spiderbanePotion, spiderbane9book, spiderbanePotion], [null, goldBlock, null]]);

val fireaspect2book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 20 as short}]});
val fireaspect3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 20 as short}]});
val fireaspect4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 20 as short}]});
val fireaspect5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 20 as short}]});
val fireaspect6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 20 as short}]});
val fireaspect7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 20 as short}]});
val fireaspect8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 20 as short}]});
val fireaspect9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 20 as short}]});
val fireaspect10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 20 as short}]});
val fireaspectPotion=<minecraft:potion>.withTag({Potion: "extraalchemy:fuse_strong"});

recipes.addShaped(fireaspect3book, [[null, fireaspectPotion, null], [fireaspectPotion, fireaspect2book, fireaspectPotion], [null, goldBlock, null]]);
recipes.addShaped(fireaspect4book, [[null, fireaspectPotion, null], [fireaspectPotion, fireaspect3book, fireaspectPotion], [null, goldBlock, null]]);
recipes.addShaped(fireaspect5book, [[null, fireaspectPotion, null], [fireaspectPotion, fireaspect4book, fireaspectPotion], [null, goldBlock, null]]);
recipes.addShaped(fireaspect6book, [[null, fireaspectPotion, null], [fireaspectPotion, fireaspect5book, fireaspectPotion], [null, goldBlock, null]]);
recipes.addShaped(fireaspect7book, [[null, fireaspectPotion, null], [fireaspectPotion, fireaspect6book, fireaspectPotion], [null, goldBlock, null]]);
recipes.addShaped(fireaspect8book, [[null, fireaspectPotion, null], [fireaspectPotion, fireaspect7book, fireaspectPotion], [null, goldBlock, null]]);
recipes.addShaped(fireaspect9book, [[null, fireaspectPotion, null], [fireaspectPotion, fireaspect8book, fireaspectPotion], [null, goldBlock, null]]);
recipes.addShaped(fireaspect10book, [[null, fireaspectPotion, null], [fireaspectPotion, fireaspect9book, fireaspectPotion], [null, goldBlock, null]]);

val loot3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 21 as short}]});
val loot4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 21 as short}]});
val loot5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 21 as short}]});
val loot6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 21 as short}]});
val loot7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 21 as short}]});
val loot8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 21 as short}]});
val loot9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 21 as short}]});
val loot10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 21 as short}]});
val lootPotion=<minecraft:potion>.withTag({Potion: "extraalchemy:concentration_normal"});

recipes.addShaped(loot4book, [[null, lootPotion, null], [lootPotion, loot3book, lootPotion], [null, goldBlock, null]]);
recipes.addShaped(loot5book, [[null, lootPotion, null], [lootPotion, loot4book, lootPotion], [null, goldBlock, null]]);
recipes.addShaped(loot6book, [[null, lootPotion, null], [lootPotion, loot5book, lootPotion], [null, goldBlock, null]]);
recipes.addShaped(loot7book, [[null, lootPotion, null], [lootPotion, loot6book, lootPotion], [null, goldBlock, null]]);
recipes.addShaped(loot8book, [[null, lootPotion, null], [lootPotion, loot7book, lootPotion], [null, goldBlock, null]]);
recipes.addShaped(loot9book, [[null, lootPotion, null], [lootPotion, loot8book, lootPotion], [null, goldBlock, null]]);
recipes.addShaped(loot10book, [[null, lootPotion, null], [lootPotion, loot9book, lootPotion], [null, goldBlock, null]]);

val sweeping3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 22 as short}]});
val sweeping4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 22 as short}]});
val sweeping5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 22 as short}]});
val sweeping6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 22 as short}]});
val sweeping7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 22 as short}]});
val sweeping8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 22 as short}]});
val sweeping9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 22 as short}]});
val sweeping10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 22 as short}]});
val sweepingPotion=<minecraft:potion>.withTag({Potion: "minecraft:strong_harming"});

recipes.addShaped(sweeping4book, [[null, sweepingPotion, null], [sweepingPotion, sweeping3book, sweepingPotion], [null, goldBlock, null]]);
recipes.addShaped(sweeping5book, [[null, sweepingPotion, null], [sweepingPotion, sweeping4book, sweepingPotion], [null, goldBlock, null]]);
recipes.addShaped(sweeping6book, [[null, sweepingPotion, null], [sweepingPotion, sweeping5book, sweepingPotion], [null, goldBlock, null]]);
recipes.addShaped(sweeping7book, [[null, sweepingPotion, null], [sweepingPotion, sweeping6book, sweepingPotion], [null, goldBlock, null]]);
recipes.addShaped(sweeping8book, [[null, sweepingPotion, null], [sweepingPotion, sweeping7book, sweepingPotion], [null, goldBlock, null]]);
recipes.addShaped(sweeping9book, [[null, sweepingPotion, null], [sweepingPotion, sweeping8book, sweepingPotion], [null, goldBlock, null]]);
recipes.addShaped(sweeping10book, [[null, sweepingPotion, null], [sweepingPotion, sweeping9book, sweepingPotion], [null, goldBlock, null]]);

val reaper5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 23 as short}]});
val reaper6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 23 as short}]});
val reaper7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 23 as short}]});
val reaper8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 23 as short}]});
val reaper9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 23 as short}]});
val reaper10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 23 as short}]});
val reaperPotion=<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"});

recipes.addShaped(reaper6book, [[null, reaperPotion, null], [reaperPotion, reaper5book, reaperPotion], [null, goldBlock, null]]);
recipes.addShaped(reaper7book, [[null, reaperPotion, null], [reaperPotion, reaper6book, reaperPotion], [null, goldBlock, null]]);
recipes.addShaped(reaper8book, [[null, reaperPotion, null], [reaperPotion, reaper7book, reaperPotion], [null, goldBlock, null]]);
recipes.addShaped(reaper9book, [[null, reaperPotion, null], [reaperPotion, reaper8book, reaperPotion], [null, goldBlock, null]]);
recipes.addShaped(reaper10book, [[null, reaperPotion, null], [reaperPotion, reaper9book, reaperPotion], [null, goldBlock, null]]);

val furious3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 24 as short}]});
val furious4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 24 as short}]});
val furious5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 24 as short}]});
val furious6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 24 as short}]});
val furious7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 24 as short}]});
val furious8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 24 as short}]});
val furious9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 24 as short}]});
val furious10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 24 as short}]});
val furiousPotion=<minecraft:potion>.withTag({Potion: "minecraft:strong_strength"});

recipes.addShaped(furious4book, [[null, furiousPotion, null], [furiousPotion, furious3book, furiousPotion], [null, goldBlock, null]]);
recipes.addShaped(furious5book, [[null, furiousPotion, null], [furiousPotion, furious4book, furiousPotion], [null, goldBlock, null]]);
recipes.addShaped(furious6book, [[null, furiousPotion, null], [furiousPotion, furious5book, furiousPotion], [null, goldBlock, null]]);
recipes.addShaped(furious7book, [[null, furiousPotion, null], [furiousPotion, furious6book, furiousPotion], [null, goldBlock, null]]);
recipes.addShaped(furious8book, [[null, furiousPotion, null], [furiousPotion, furious7book, furiousPotion], [null, goldBlock, null]]);
recipes.addShaped(furious9book, [[null, furiousPotion, null], [furiousPotion, furious8book, furiousPotion], [null, goldBlock, null]]);
recipes.addShaped(furious10book, [[null, furiousPotion, null], [furiousPotion, furious9book, furiousPotion], [null, goldBlock, null]]);

val lifesteal3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 25 as short}]});
val lifesteal4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 25 as short}]});
val lifesteal5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 25 as short}]});
val lifesteal6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 25 as short}]});
val lifesteal7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 25 as short}]});
val lifesteal8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 25 as short}]});
val lifesteal9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 25 as short}]});
val lifesteal10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 25 as short}]});
val lifestealPotion=<minecraft:potion>.withTag({Potion: "extraalchemy:leech_strong"});

recipes.addShaped(lifesteal4book, [[null, lifestealPotion, null], [lifestealPotion, lifesteal3book, lifestealPotion], [null, goldBlock, null]]);
recipes.addShaped(lifesteal5book, [[null, lifestealPotion, null], [lifestealPotion, lifesteal4book, lifestealPotion], [null, goldBlock, null]]);
recipes.addShaped(lifesteal6book, [[null, lifestealPotion, null], [lifestealPotion, lifesteal5book, lifestealPotion], [null, goldBlock, null]]);
recipes.addShaped(lifesteal7book, [[null, lifestealPotion, null], [lifestealPotion, lifesteal6book, lifestealPotion], [null, goldBlock, null]]);
recipes.addShaped(lifesteal8book, [[null, lifestealPotion, null], [lifestealPotion, lifesteal7book, lifestealPotion], [null, goldBlock, null]]);
recipes.addShaped(lifesteal9book, [[null, lifestealPotion, null], [lifestealPotion, lifesteal8book, lifestealPotion], [null, goldBlock, null]]);
recipes.addShaped(lifesteal10book, [[null, lifestealPotion, null], [lifestealPotion, lifesteal9book, lifestealPotion], [null, goldBlock, null]]);

val holding4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 30 as short}]});
val holding5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 30 as short}]});
val holding6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 30 as short}]});
val holding7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 30 as short}]});
val holding8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 30 as short}]});
val holding9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 30 as short}]});
val holding10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 30 as short}]});
val holdingPotion=<minecraft:potion>.withTag({Potion: "cofhcore:absorption2"});

recipes.addShaped(holding5book, [[null, holdingPotion, null], [holdingPotion, holding4book, holdingPotion], [null, goldBlock, null]]);
recipes.addShaped(holding6book, [[null, holdingPotion, null], [holdingPotion, holding5book, holdingPotion], [null, goldBlock, null]]);
recipes.addShaped(holding7book, [[null, holdingPotion, null], [holdingPotion, holding6book, holdingPotion], [null, goldBlock, null]]);
recipes.addShaped(holding8book, [[null, holdingPotion, null], [holdingPotion, holding7book, holdingPotion], [null, goldBlock, null]]);
recipes.addShaped(holding9book, [[null, holdingPotion, null], [holdingPotion, holding8book, holdingPotion], [null, goldBlock, null]]);
recipes.addShaped(holding10book, [[null, holdingPotion, null], [holdingPotion, holding9book, holdingPotion], [null, goldBlock, null]]);

val insight3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 31 as short}]});
val insight4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 31 as short}]});
val insight5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 31 as short}]});
val insight6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 31 as short}]});
val insight7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 31 as short}]});
val insight8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 31 as short}]});
val insight9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 31 as short}]});
val insight10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 31 as short}]});
val insightPotion=<minecraft:potion>.withTag({Potion: "extraalchemy:concentration_normal"});

recipes.addShaped(insight4book, [[null, insightPotion, null], [insightPotion, insight3book, insightPotion], [null, goldBlock, null]]);
recipes.addShaped(insight5book, [[null, insightPotion, null], [insightPotion, insight4book, insightPotion], [null, goldBlock, null]]);
recipes.addShaped(insight6book, [[null, insightPotion, null], [insightPotion, insight5book, insightPotion], [null, goldBlock, null]]);
recipes.addShaped(insight7book, [[null, insightPotion, null], [insightPotion, insight6book, insightPotion], [null, goldBlock, null]]);
recipes.addShaped(insight8book, [[null, insightPotion, null], [insightPotion, insight7book, insightPotion], [null, goldBlock, null]]);
recipes.addShaped(insight9book, [[null, insightPotion, null], [insightPotion, insight8book, insightPotion], [null, goldBlock, null]]);
recipes.addShaped(insight10book, [[null, insightPotion, null], [insightPotion, insight9book, insightPotion], [null, goldBlock, null]]);

val eff5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]});
val eff6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 32 as short}]});
val eff7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 32 as short}]});
val eff8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 32 as short}]});
val eff9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 32 as short}]});
val eff10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 32 as short}]});
val effPotion=<minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"});

recipes.addShaped(eff6book, [[null, effPotion, null], [effPotion, eff5book, effPotion], [null, goldBlock, null]]);
recipes.addShaped(eff7book, [[null, effPotion, null], [effPotion, eff6book, effPotion], [null, goldBlock, null]]);
recipes.addShaped(eff8book, [[null, effPotion, null], [effPotion, eff7book, effPotion], [null, goldBlock, null]]);
recipes.addShaped(eff9book, [[null, effPotion, null], [effPotion, eff8book, effPotion], [null, goldBlock, null]]);
recipes.addShaped(eff10book, [[null, effPotion, null], [effPotion, eff9book, effPotion], [null, goldBlock, null]]);

val unbreaking3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 34 as short}]});
val unbreaking4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 34 as short}]});
val unbreaking5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 34 as short}]});
val unbreaking6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 34 as short}]});
val unbreaking7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 34 as short}]});
val unbreaking8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 34 as short}]});
val unbreaking9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 34 as short}]});
val unbreaking10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 34 as short}]});
val unbreakingPotion=<minecraft:potion>.withTag({Potion: "quark:strong_resistance"});

recipes.addShaped(unbreaking4book, [[null, unbreakingPotion, null], [unbreakingPotion, unbreaking3book, unbreakingPotion], [null, goldBlock, null]]);
recipes.addShaped(unbreaking5book, [[null, unbreakingPotion, null], [unbreakingPotion, unbreaking4book, unbreakingPotion], [null, goldBlock, null]]);
recipes.addShaped(unbreaking6book, [[null, unbreakingPotion, null], [unbreakingPotion, unbreaking5book, unbreakingPotion], [null, goldBlock, null]]);
recipes.addShaped(unbreaking7book, [[null, unbreakingPotion, null], [unbreakingPotion, unbreaking6book, unbreakingPotion], [null, goldBlock, null]]);
recipes.addShaped(unbreaking8book, [[null, unbreakingPotion, null], [unbreakingPotion, unbreaking7book, unbreakingPotion], [null, goldBlock, null]]);
recipes.addShaped(unbreaking9book, [[null, unbreakingPotion, null], [unbreakingPotion, unbreaking8book, unbreakingPotion], [null, goldBlock, null]]);
recipes.addShaped(unbreaking10book, [[null, unbreakingPotion, null], [unbreakingPotion, unbreaking9book, unbreakingPotion], [null, goldBlock, null]]);

val fortune3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]});
val fortune4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 35 as short}]});
val fortune5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 35 as short}]});
val fortune6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 35 as short}]});
val fortune7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 35 as short}]});
val fortune8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 35 as short}]});
val fortune9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 35 as short}]});
val fortune10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 35 as short}]});
val fortunePotion=<minecraft:potion>.withTag({Potion: "extraalchemy:concentration_normal"});

recipes.addShaped(fortune4book, [[null, fortunePotion, null], [fortunePotion, fortune3book, fortunePotion], [null, goldBlock, null]]);
recipes.addShaped(fortune5book, [[null, fortunePotion, null], [fortunePotion, fortune4book, fortunePotion], [null, goldBlock, null]]);
recipes.addShaped(fortune6book, [[null, fortunePotion, null], [fortunePotion, fortune5book, fortunePotion], [null, goldBlock, null]]);
recipes.addShaped(fortune7book, [[null, fortunePotion, null], [fortunePotion, fortune6book, fortunePotion], [null, goldBlock, null]]);
recipes.addShaped(fortune8book, [[null, fortunePotion, null], [fortunePotion, fortune7book, fortunePotion], [null, goldBlock, null]]);
recipes.addShaped(fortune9book, [[null, fortunePotion, null], [fortunePotion, fortune8book, fortunePotion], [null, goldBlock, null]]);
recipes.addShaped(fortune10book, [[null, fortunePotion, null], [fortunePotion, fortune9book, fortunePotion], [null, goldBlock, null]]);

val leech4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 36 as short}]});
val leech5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 36 as short}]});
val leech6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 36 as short}]});
val leech7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 36 as short}]});
val leech8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 36 as short}]});
val leech9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 36 as short}]});
val leech10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 36 as short}]});
val leechPotion=<minecraft:potion>.withTag({Potion: "extraalchemy:leech_strong"});

recipes.addShaped(leech5book, [[null, leechPotion, null], [leechPotion, leech4book, leechPotion], [null, goldBlock, null]]);
recipes.addShaped(leech6book, [[null, leechPotion, null], [leechPotion, leech5book, leechPotion], [null, goldBlock, null]]);
recipes.addShaped(leech7book, [[null, leechPotion, null], [leechPotion, leech6book, leechPotion], [null, goldBlock, null]]);
recipes.addShaped(leech8book, [[null, leechPotion, null], [leechPotion, leech7book, leechPotion], [null, goldBlock, null]]);
recipes.addShaped(leech9book, [[null, leechPotion, null], [leechPotion, leech8book, leechPotion], [null, goldBlock, null]]);
recipes.addShaped(leech10book, [[null, leechPotion, null], [leechPotion, leech9book, leechPotion], [null, goldBlock, null]]);

val vorpal3book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 39 as short}]});
val vorpal4book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 39 as short}]});
val vorpal5book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 39 as short}]});
val vorpal6book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 6 as short, id: 39 as short}]});
val vorpal7book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 7 as short, id: 39 as short}]});
val vorpal8book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 8 as short, id: 39 as short}]});
val vorpal9book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 9 as short, id: 39 as short}]});
val vorpal10book=<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short, id: 39 as short}]});
val vorpalPotion=<minecraft:potion>.withTag({Potion: "extraalchemy:beheading_strong"});

recipes.addShaped(vorpal4book, [[null, vorpalPotion, null], [vorpalPotion, vorpal3book, vorpalPotion], [null, goldBlock, null]]);
recipes.addShaped(vorpal5book, [[null, vorpalPotion, null], [vorpalPotion, vorpal4book, vorpalPotion], [null, goldBlock, null]]);
recipes.addShaped(vorpal6book, [[null, vorpalPotion, null], [vorpalPotion, vorpal5book, vorpalPotion], [null, goldBlock, null]]);
recipes.addShaped(vorpal7book, [[null, vorpalPotion, null], [vorpalPotion, vorpal6book, vorpalPotion], [null, goldBlock, null]]);
recipes.addShaped(vorpal8book, [[null, vorpalPotion, null], [vorpalPotion, vorpal7book, vorpalPotion], [null, goldBlock, null]]);
recipes.addShaped(vorpal9book, [[null, vorpalPotion, null], [vorpalPotion, vorpal8book, vorpalPotion], [null, goldBlock, null]]);
recipes.addShaped(vorpal10book, [[null, vorpalPotion, null], [vorpalPotion, vorpal9book, vorpalPotion], [null, goldBlock, null]]);
