# Get Level
execute store result score %EnchantmentLevel eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:sharpness" 5

# First Level Difference
scoreboard players add %EnchantmentLevel eplus.temp 5

# Add Damage
scoreboard players operation @s eplus.swirling_damage += %EnchantmentLevel eplus.temp
