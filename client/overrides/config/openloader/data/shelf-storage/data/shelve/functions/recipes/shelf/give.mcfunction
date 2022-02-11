give @s panda_spawn_egg{display:{Name:'[{"text":"Shelf","italic":false}]'},CustomModelData:1,EntityTag:{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["oak_shelve"],ArmorItems:[{},{},{},{id:"panda_spawn_egg",Count:1b,tag:{CustomModelData:1}}]}}
scoreboard players remove @s count 1
execute if score @s count matches 1.. run function shelve:recipes/shelf/give