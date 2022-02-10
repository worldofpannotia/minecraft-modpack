#Play sound for placing seed#
playsound item.crop.plant block @a[distance=..16] ~ ~ ~ 1 1

#Replaces block with oak sapling#
setblock ~ ~ ~ minecraft:oak_sapling replace

#Summon Armor-Stand seeds#
summon armor_stand ~0.001 ~0.125 ~ {NoGravity:1b,Fire:19999999980,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["EGolden_Apple_Tree","EGolden_Apple_Seeds_Stand"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:3091,Enchantments:[{}]}}]}

#Kills self#
kill @s