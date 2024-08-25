# Get Level
execute store result score %EnchantmentLevel eplus.temp run data get entity @p[tag=eplus.swirling_user] SelectedItem.components."minecraft:enchantments".levels."enchantmentplus:combustion" 15

# Add Damage
scoreboard players operation @s eplus.swirling_damage += %EnchantmentLevel eplus.temp