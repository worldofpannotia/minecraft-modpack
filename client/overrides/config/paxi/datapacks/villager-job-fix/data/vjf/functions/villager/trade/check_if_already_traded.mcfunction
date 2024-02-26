######################### EXECUTING AS VILLAGER, POSITIONED AT WORKSTATION #########################

################## DEBUG ##################
#say Villager - Trade - Check if already traded
################## DEBUG ##################

# Hasn't traded
execute as @s[nbt={Xp:0}] run function vjf:villager/trade/unlocked

# Been traded with
execute as @s[nbt=!{Xp:0}] run function vjf:villager/trade/locked