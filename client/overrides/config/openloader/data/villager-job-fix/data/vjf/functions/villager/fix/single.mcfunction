######################### EXECUTING AS AND AT PLAYER #########################

################## DEBUG ##################
#say Villager Fix - Single
################## DEBUG ##################

tellraw @s ["",{"text":"[Villager Job Fix]","bold":true,"color":"yellow"},{"text":" SINGLE","bold":true,"color":"green"}]

tag @s add vjf_source

execute as @e[type=minecraft:villager,tag=!vjf_entity,distance=..20,sort=nearest,limit=1] at @s align xyz positioned ~.5 ~ ~.5 run function vjf:villager/fix/single_run

tag @s remove vjf_source
scoreboard players set @s vjf_single 0