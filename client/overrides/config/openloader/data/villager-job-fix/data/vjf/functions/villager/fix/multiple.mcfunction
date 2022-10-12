######################### EXECUTING AS PLAYER #########################

############### DEBUG ###############
#say Villager Fix - Multiple
############### DEBUG ###############

tellraw @s ["",{"text":"[Villager Job Fix]","bold":true,"color":"yellow"},{"text":" MULTIPLE","bold":true,"color":"gold"},{"text":"\n"},{"text":"(max 16 per command)","italic":true}]

tag @s add vjf_source

execute as @e[type=minecraft:villager,tag=!vjf_entity,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/feet
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/north
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/south
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/east
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/west
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/north_east
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/south_west
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/south_east
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/north_west

tag @s remove vjf_source
scoreboard players set @s vjf_multiple 0