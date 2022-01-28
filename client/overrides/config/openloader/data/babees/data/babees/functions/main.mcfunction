# --------------------------------------------------------------- #
#                        BABEES DATAPACK                          #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Player help and utility
execute as @a if score @s bab_help matches 1.. run function babees:utility/help

# Main loop
execute as @e[type=minecraft:bee,tag=!global.ignore,tag=!bab_baby] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:honeycomb",Count:1b}},tag=!global.ignore,distance=..0.5] run function babees:convert_bee