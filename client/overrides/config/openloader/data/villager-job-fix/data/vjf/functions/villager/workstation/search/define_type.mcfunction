execute positioned ~ ~ ~ if entity @e[type=minecraft:villager,tag=vjf_searching,distance=..0.49999] run tag @s add vjf_search_below
execute as @s[tag=!vjf_search_below] run tag @s add vjf_search_above

################## DEBUG ##################
#execute as @s[tag=vjf_search_above] run say SEARCH: ABOVE
#execute as @s[tag=vjf_search_below] run say SEARCH: BELOW
################## DEBUG ##################