give @s panda_spawn_egg{display:{Name:'[{"text":"Clay Pot","italic":false}]'},CustomModelData:6,EntityTag:{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Marker:1b,NoGravity:1b,Tags:["clay_pot"],ArmorItems:[{},{},{},{id:"panda_spawn_egg",Count:1b,tag:{CustomModelData:6}}]}}
scoreboard players remove @s count 1
execute if score @s count matches 1.. run function shelve:recipes/clay_pot/give