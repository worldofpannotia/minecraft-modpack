########### EXECUTING AS ALL ENTITIES WITH TAG vjf_entity INSIDE 160 BLOCK RADIUS FROM ALL PLAYERS ###########

################## DEBUG ##################
#say Entity - Decrease Life Timer
#execute as @s[tag=vjf_entity] run say vjf_entity
#execute as @s[tag=vjf_linked] run say vjf_linked
################## DEBUG ##################

execute at @s[tag=vjf_done,tag=vjf_0,tag=!vjf_2,tag=!vjf_linked,tag=!vjf_workstation] run particle minecraft:poof ~ ~1.5 ~ 0 0 0 0 0 force @a
effect give @s[tag=vjf_0,tag=!vjf_1,tag=vjf_linked] minecraft:glowing 6 1 true

execute as @s[tag=vjf_5,tag=vjf_workstation] run function vjf:entity/magma_cube/kill
execute as @s[tag=!vjf_linked,tag=vjf_workstation] run function vjf:entity/magma_cube/kill
tag @s[tag=vjf_5] remove vjf_4
tag @s[tag=vjf_5] remove vjf_3
tag @s[tag=vjf_5] remove vjf_2
tag @s[tag=vjf_5] remove vjf_1
tag @s[tag=vjf_5] remove vjf_0
tag @s[tag=vjf_5] remove vjf_linked
tag @s[tag=vjf_5] remove vjf_done
tag @s[tag=vjf_5] remove vjf_search_above
tag @s[tag=vjf_5] remove vjf_search_below
effect clear @s[tag=vjf_5] minecraft:glowing
team leave @s[tag=vjf_5]
tag @s[tag=vjf_5] remove vjf_entity
tag @s[tag=vjf_5] remove vjf_5

tag @s[tag=vjf_4] add vjf_5
tag @s[tag=vjf_3] add vjf_4
tag @s[tag=vjf_2] add vjf_3
tag @s[tag=vjf_1] add vjf_2
tag @s[tag=vjf_0] add vjf_1