# --------------------------------------------------------------- #
#                       HIP HOPPERS DATAPACK                      #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

kill @e[type=item,nbt={Item:{id:"minecraft:rabbit_foot",Count:1b}},tag=!global.ignore,distance=..0.5,limit=1]
tag @s add hip_baby
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.3 0.3 0.3 100 20
playsound minecraft:entity.experience_orb.pickup ambient @a[distance=..8] ~ ~ ~ 30
data merge entity @s {Age: -999999999}