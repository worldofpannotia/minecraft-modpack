# Advancement
advancement revoke @s only enchantmentplus:enchantments/soul_reserve

# Base Capacity
scoreboard players set @s eplus.max_soul_stacks 5

# Get Level
execute store result score %EnchantmentLevel eplus.temp run data get entity @s equipment.chest.components."minecraft:enchantments"."enchantmentplus:soul_reserve" 5

# Add Level
scoreboard players operation @s eplus.max_soul_stacks += %EnchantmentLevel eplus.temp

# Update Current Value
execute if score @s eplus.soul_stacks > @s eplus.max_soul_stacks run scoreboard players operation @s eplus.soul_stacks = @s eplus.max_soul_stacks
