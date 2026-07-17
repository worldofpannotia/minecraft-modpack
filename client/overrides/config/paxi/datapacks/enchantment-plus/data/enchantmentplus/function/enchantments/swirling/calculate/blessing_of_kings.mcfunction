# Get Level
execute store result score %EnchantmentLevel eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments".levels."enchantmentplus:blessing_of_kings" 50

# Add Damage
scoreboard players operation @s eplus.swirling_damage += %EnchantmentLevel eplus.temp