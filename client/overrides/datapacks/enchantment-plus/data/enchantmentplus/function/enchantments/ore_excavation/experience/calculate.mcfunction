# Randomize Experience Value
execute if block ~ ~ ~ #minecraft:coal_ores store result score %Result eplus.temp run random value 0..2
execute if block ~ ~ ~ #minecraft:diamond_ores store result score %Result eplus.temp run random value 3..7
execute if block ~ ~ ~ #minecraft:emerald_ores store result score %Result eplus.temp run random value 3..7
execute if block ~ ~ ~ #minecraft:lapis_ores store result score %Result eplus.temp run random value 2..5
execute if block ~ ~ ~ #minecraft:redstone_ores store result score %Result eplus.temp run random value 1..5
execute if block ~ ~ ~ minecraft:nether_gold_ore store result score %Result eplus.temp run random value 0..1
execute if block ~ ~ ~ minecraft:nether_quartz_ore store result score %Result eplus.temp run random value 2..5

# Experience Boost Multiplier
execute if data entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:experience_boost" store result score %EnchantmentLevel eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:experience_boost"
execute if data entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:experience_boost" run scoreboard players add %EnchantmentLevel eplus.temp 1
execute if data entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:experience_boost" run scoreboard players operation %Result eplus.temp *= %EnchantmentLevel eplus.temp

# Add Value
scoreboard players operation @n[type=minecraft:marker,tag=eplus.oe_marker,tag=eplus.oe_break] eplus.temp2 += %Result eplus.temp
