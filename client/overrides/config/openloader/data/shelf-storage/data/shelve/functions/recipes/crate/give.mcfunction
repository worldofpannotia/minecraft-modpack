give @s panda_spawn_egg{display:{Name:'[{"text":"Crate","italic":false}]'},CustomModelData:8,EntityTag:{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["crate"],ArmorItems:[{},{},{},{id:"panda_spawn_egg",Count:1b,tag:{CustomModelData:8}}]}}
scoreboard players remove @s count 1
execute if score @s count matches 1.. run function shelve:recipes/crate/give