#Summon Armor-Stand for stage 1 of Apple Growth#
execute at @s[scores={AppleStages=1},tag=golden_apple_leaves] as @s positioned ~ ~-1 ~ run summon armor_stand ~ ~-0.95 ~0.2 {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["AppleState","Stage_1"],ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:7955}}]}

#Changes data of Armor-Stand for stage 2 of Apple Growth#
execute at @s[scores={AppleStages=2},tag=golden_apple_leaves] as @s run data merge entity @e[type=armor_stand,limit=1,tag=AppleState,distance=..2,sort=nearest] {Tags:["AppleState","Stage_2"],ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:7956}}]}

#Changes data of Armor-Stand for stage 3 of Apple Growth#
execute at @s[scores={AppleStages=3},tag=golden_apple_leaves] as @s run data merge entity @e[type=armor_stand,limit=1,tag=AppleState,distance=..2,sort=nearest] {Tags:["AppleState","Stage_3"],ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:7957}}]}

#Changes data of Armor-Stand for stage 4 of Apple Growth#
execute at @s[scores={AppleStages=4},tag=golden_apple_leaves] as @s run data merge entity @e[type=armor_stand,limit=1,tag=AppleState,distance=..2,sort=nearest] {Tags:["AppleState","Stage_4"],ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:7958}}]}

#Changes data of Armor-Stand for stage 5 of Apple Growth#
execute at @s[scores={AppleStages=5},tag=golden_apple_leaves] as @s run data merge entity @e[type=armor_stand,limit=1,tag=AppleState,distance=..2,sort=nearest] {Tags:["AppleState","Stage_5"],ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:7959}}]}

#Changes data of Armor-Stand for stage 6 of Apple Growth#
execute at @s[scores={AppleStages=6},tag=golden_apple_leaves] as @s run data merge entity @e[type=armor_stand,limit=1,tag=AppleState,distance=..2,sort=nearest] {Tags:["AppleState","Stage_6"],ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b,tag:{CustomModelData:7960}}]}

#Changes data of Armor-Stand for stage 7 of Apple Growth#
execute at @s[scores={AppleStages=7},tag=golden_apple_leaves] as @s run data merge entity @e[type=armor_stand,limit=1,tag=AppleState,distance=..2,sort=nearest] {Tags:["AppleState","Stage_7"],ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b}]}

#Changes data of Armor-Stand for stage 8 of Apple Growth#
execute at @s[scores={AppleStages=8},tag=golden_apple_leaves] as @s run data merge entity @e[type=armor_stand,limit=1,tag=AppleState,distance=..2,sort=nearest] {Tags:["AppleState","Stage_8"],ArmorItems:[{},{},{},{id:"minecraft:golden_apple",Count:1b}]}

#Runs the Apple PoP function#
execute at @s[scores={AppleStages=9..},tag=golden_apple_leaves] as @s positioned ~ ~-1.75 ~ run function apt:apples/golden_apple/grow_golden_apple/golden_apple_pop