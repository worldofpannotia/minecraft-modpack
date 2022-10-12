######################### EXECUTING AS NEAREST VILLAGER #########################

################## DEBUG ##################
#say Villager - Data - Prepare
################## DEBUG ##################

# Freeze AI so Villager doesn't loses workstation that is too far (command below)
data modify entity @s {} merge value {NoAI:1}

# Set random position for workstation is case villager doesn't have a job
data modify entity @s Brain set value {memories: {"minecraft:job_site":{value:{pos: [I; 1, 1, 1], dimension: "minecraft:overworld"}}}}