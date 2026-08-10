# Set Maximum Jump Count
execute store result score @s eplus.air_burst_jumps run data get entity @s equipment.feet.components."minecraft:enchantments"."enchantmentplus:air_burst"

# First Jump Delay
scoreboard players set @s eplus.air_burst_delay 5

# Tag
tag @s add eplus.air_burst_set_jumps
