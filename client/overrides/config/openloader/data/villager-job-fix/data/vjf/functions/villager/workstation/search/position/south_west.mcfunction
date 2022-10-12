######################### EXECUTING AS VILLAGER, POSITIONED AT HIS FEET ALIGNED XYZ #########################

################## DEBUG ##################
#say Villager - Workstation - Position - South West
################## DEBUG ##################

# SOUTH WEST - Above (EXCEPTION)
execute as @s[tag=!vjf_linked,tag=vjf_search_above] positioned ~-1 ~1 ~1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# SOUTH WEST - Feet
execute as @s[tag=!vjf_linked] positioned ~-1 ~ ~1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# SOUTH WEST - Below
execute as @s[tag=!vjf_linked] positioned ~-1 ~-1 ~1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current

# SOUTH WEST - Below (EXCEPTION)
execute as @s[tag=!vjf_linked,tag=vjf_search_below] positioned ~-1 ~-2 ~1 unless entity @e[tag=vjf_workstation,distance=0] run function vjf:villager/workstation/search/position/block/current