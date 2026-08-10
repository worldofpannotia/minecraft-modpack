# Particles
particle minecraft:cloud ~ ~ ~ 0.4 0 0.4 0 8

# Sound
playsound enchantmentplus:enchant.air_burst.jump

# Decrease Jump Count
scoreboard players remove @s eplus.air_burst_jumps 1

# Set Delay
scoreboard players set @s eplus.air_burst_delay 8

# Start Delay Timer
advancement revoke @s only enchantmentplus:enchantments/air_burst_delay
