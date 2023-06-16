######################### EXECUTING AS VILLAGER, POSITIONED AT WORKSTATION #########################

################## DEBUG ##################
#say Villager - Linked - Set
#effect give @s minecraft:glowing 5 1 true
################## DEBUG ##################

tag @s add vjf_linked
tag @s add vjf_0
tag @s remove vjf_searching
tag @s add vjf_done

data remove entity @s NoAI