######################### EXECUTING AS VILLAGER, POSITIONED AT HIS FEET ALIGNED XYZ #########################

################## DEBUG ##################
#say Villager - Workstation - Position - North East
################## DEBUG ##################

# NORTH EAST - Above (EXCEPTION)
execute as @s[tag=!vjf_linked,tag=vjf_search_above] positioned ~1 ~1 ~-1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# NORTH EAST - Feet
execute as @s[tag=!vjf_linked] positioned ~1 ~ ~-1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# NORTH EAST - Below
execute as @s[tag=!vjf_linked] positioned ~1 ~-1 ~-1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# NORTH EAST - Below (EXCEPTION)
execute as @s[tag=!vjf_linked,tag=vjf_search_below] positioned ~1 ~-2 ~-1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current