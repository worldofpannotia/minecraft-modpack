# --------------------------------------------------------------- #
#                   MINIBLOCK TRADERS DATAPACK                    #
# --------------------------------------------------------------- #
#                                                                 #
#              Author: https://github.com/maxheyn                 #
#                                                                 #
# --------------------------------------------------------------- #

# Removes all scoreboard objectives and disables the datapack
scoreboard objectives remove bab_help

tellraw @p [{"text":"[Datapack] ","color":"gold"},{"text":"Babees has been uninstalled!","color":"red"}]

datapack disable "file/babees.zip"