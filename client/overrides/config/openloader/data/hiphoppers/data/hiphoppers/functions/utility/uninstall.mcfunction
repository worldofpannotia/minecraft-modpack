# --------------------------------------------------------------- #
#                       HIP HOPPERS DATAPACK                      #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Removes all scoreboard objectives and disables the datapack
scoreboard objectives remove hip_help

tellraw @p [{"text":"[Datapack] ","color":"gold"},{"text":"Hip Hoppers has been uninstalled!","color":"red"}]

datapack disable "file/hiphoppers.zip"