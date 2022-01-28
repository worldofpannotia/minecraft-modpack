# --------------------------------------------------------------- #
#                       HIP HOPPERS DATAPACK                      #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Help text, shown when player runs /trigger bab_help
tellraw @s ["",{"text":"Hip Hoppers Help:","color":"yellow","bold":true}]
tellraw @s ["",{"text":"1. ","color":"green"},{"text":"Toss a rabbit's foot at a rabbit.","color":"yellow"}]
tellraw @s ["",{"text":"2. ","color":"green"},{"text":"The rabbit will permanently become a baby.","color":"yellow"}]
tellraw @s ["",{"text":"3. ","color":"green"},{"text":"Enjoy the cuteness!","color":"yellow"}]

# Disable help after running once so it doesn't run every tick
scoreboard players set @s hip_help 0
scoreboard players enable @s hip_help
