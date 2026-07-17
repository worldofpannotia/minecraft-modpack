# Prevent Multiple Runs in a Single Tick
#execute store result score %Gametime1 eplus.temp run time query gametime
#execute if score %Gametime1 eplus.temp = %Gametime2 eplus.temp run return fail
#scoreboard players operation %Gametime2 eplus.temp = %Gametime1 eplus.temp

# Decrease Timer
scoreboard players remove @s eplus.deflect_cooldown 1