########### EXECUTING AS ALL ENTITYES WITH TAG vjf_source ###########

# Count second for player

tag @s[tag=vjf_range_3] add vjf_range_0
tag @s[tag=vjf_range_2] add vjf_range_3
tag @s[tag=vjf_range_1] add vjf_range_2
tag @s[tag=vjf_range_0,tag=!vjf_range_3] add vjf_range_1

tag @s[tag=vjf_range_3] remove vjf_range_2
tag @s[tag=vjf_range_2] remove vjf_range_1
tag @s[tag=vjf_range_1] remove vjf_range_0
tag @s[tag=vjf_range_0] remove vjf_range_3