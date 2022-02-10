execute as @e[type=minecraft:armor_stand,tag=oak_shelve] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=drawer] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=display_case] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=clay_pot] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=crate] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=eldritch_shelf] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=soul_shrine] at @s run setblock ~ ~ ~ minecraft:air

clear @a minecraft:panda_spawn_egg{display:{Name:'[{"text":"Shelf","italic":false}]'},CustomModelData:1,EntityTag:{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["oak_shelve"],ArmorItems:[{},{},{},{id:"panda_spawn_egg",Count:1b,tag:{CustomModelData:1}}]}}
clear @a minecraft:panda_spawn_egg{display:{Name:'[{"text":"Display Case","italic":false}]'},CustomModelData:5,EntityTag:{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["display_case"],ArmorItems:[{},{},{},{id:"panda_spawn_egg",Count:1b,tag:{CustomModelData:5}}]}}
clear @a minecraft:panda_spawn_egg{display:{Name:'[{"text":"Drawer","italic":false}]'},CustomModelData:4,EntityTag:{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["drawer"],ArmorItems:[{},{},{},{id:"panda_spawn_egg",Count:1b,tag:{CustomModelData:4}}]}}
clear @a minecraft:panda_spawn_egg{display:{Name:'[{"text":"Clay Pot","italic":false}]'},CustomModelData:6,EntityTag:{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["clay_pot"],ArmorItems:[{},{},{},{id:"panda_spawn_egg",Count:1b,tag:{CustomModelData:6}}]}}
clear @a minecraft:panda_spawn_egg{display:{Name:'[{"text":"Crate","italic":false}]'},CustomModelData:8,EntityTag:{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["crate"],ArmorItems:[{},{},{},{id:"panda_spawn_egg",Count:1b,tag:{CustomModelData:8}}]}}
clear @a minecraft:panda_spawn_egg{display:{Name:'[{"text":"Eldritch shelf","italic":false}]'},CustomModelData:10,EntityTag:{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["eldritch_shelf"],ArmorItems:[{},{},{},{id:"panda_spawn_egg",Count:1b,tag:{CustomModelData:10}}]}}
clear @a minecraft:panda_spawn_egg{display:{Name:'[{"text":"Soul shrine","italic":false}]'},CustomModelData:13,EntityTag:{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["soul_shrine"],ArmorItems:[{},{},{},{id:"panda_spawn_egg",Count:1b,tag:{CustomModelData:13}}]}}
schedule function shelve:admin/delete 1t append