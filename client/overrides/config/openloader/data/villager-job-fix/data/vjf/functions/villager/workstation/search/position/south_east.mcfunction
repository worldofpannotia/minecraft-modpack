######################### EXECUTING AS VILLAGER, POSITIONED AT HIS FEET ALIGNED XYZ #########################

################## DEBUG ##################
#say Villager - Workstation - Position - South East
################## DEBUG ##################

# SOUTH EAST - Above (EXCEPTION)
execute as @s[tag=!vjf_linked,tag=vjf_search_above] positioned ~1 ~1 ~1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# SOUTH EAST - Feet
execute as @s[tag=!vjf_linked] positioned ~1 ~ ~1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# SOUTH EAST - Below
execute as @s[tag=!vjf_linked] positioned ~1 ~-1 ~1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# SOUTH EAST - Below (EXCEPTION)
execute as @s[tag=!vjf_linked,tag=vjf_search_below] positioned ~1 ~-2 ~1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current