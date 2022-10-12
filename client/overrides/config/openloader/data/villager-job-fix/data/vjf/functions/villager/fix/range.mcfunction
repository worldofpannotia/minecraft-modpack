######################### EXECUTING AS AND AT PLAYER #########################

############### DEBUG ###############
#say Villager Fix - Range
############### DEBUG ###############


execute as @e[type=minecraft:villager,tag=!vjf_entity,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/feet
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/north
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/south
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/east
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/west
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/north_east
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/south_west
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/south_east
execute as @e[type=minecraft:villager,tag=vjf_searching,distance=..20,sort=nearest,limit=16] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/workstation/search/position/north_west