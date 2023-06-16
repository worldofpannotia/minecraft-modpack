# --------------------------------------------------------------- #
#                       HIP HOPPERS DATAPACK                      #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Player help and utility
execute as @a if score @s hip_help matches 1.. run function hiphoppers:utility/help

# Main loop
execute as @e[type=minecraft:rabbit,tag=!global.ignore,tag=!hip_baby] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rabbit_foot",Count:1b}},tag=!global.ignore,distance=..0.5] run function hiphoppers:convert_rabbit