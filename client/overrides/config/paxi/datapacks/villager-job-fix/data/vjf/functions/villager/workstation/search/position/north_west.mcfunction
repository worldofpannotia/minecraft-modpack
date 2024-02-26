######################### EXECUTING AS VILLAGER, POSITIONED AT HIS FEET ALIGNED XYZ #########################

################## DEBUG ##################
#say Villager - Workstation - Position - North West
################## DEBUG ##################

# NORTH WEST - Above (EXCEPTION)
execute as @s[tag=!vjf_linked,tag=vjf_search_above] positioned ~-1 ~1 ~-1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# NORTH WEST - Feet
execute as @s[tag=!vjf_linked] positioned ~-1 ~ ~-1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# NORTH WEST - Below
execute as @s[tag=!vjf_linked] positioned ~-1 ~-1 ~-1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# NORTH WEST - Below (EXCEPTION)
execute as @s[tag=!vjf_linked,tag=vjf_search_below] positioned ~-1 ~-2 ~-1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

tag @s remove vjf_searching
tag @s add vjf_done