# Decrease Delay
execute if score @s eplus.air_burst_delay matches 1.. run scoreboard players remove @s eplus.air_burst_delay 1

# Repeat
execute if score @s eplus.air_burst_delay matches 1.. run advancement revoke @s only enchantmentplus:enchantments/air_burst_delay
