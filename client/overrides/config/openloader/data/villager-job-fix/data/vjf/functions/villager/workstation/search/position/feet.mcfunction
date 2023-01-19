######################### EXECUTING AS VILLAGER, POSITIONED AT HIS FEET ALIGNED XYZ #########################

################## DEBUG ##################
#say Villager - Workstation - Position - Feet
#function vjf:entity/magma_cube/summon
#effect give @e[type=magma_cube] minecraft:glowing 5 1
################## DEBUG ##################

tag @s add vjf_entity
tag @s add vjf_searching
tag @s add vjf_0

# Checks villager height and defines search type
function vjf:villager/workstation/search/define_type

# Feet
execute positioned ~ ~ ~ unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# BELOW
execute as @s[tag=!vjf_linked] positioned ~ ~-1 ~ unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# BELOW - Below (EXCEPTION)
execute as @s[tag=!vjf_linked,tag=vjf_search_below] positioned ~ ~-2 ~ unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current