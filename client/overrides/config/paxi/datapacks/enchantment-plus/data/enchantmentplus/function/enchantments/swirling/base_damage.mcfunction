# Get Current Damage
execute store result score @s eplus.swirling_damage run attribute @s minecraft:generic.attack_damage get 10

# Calculate Sharpness
execute if data entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:sharpness" run function enchantmentplus:enchantments/swirling/calculate/sharpness

# Calculate Blessing of Kings
execute if data entity @s SelectedItem.components."minecraft:enchantments".levels."enchantmentplus:blessing_of_kings" run function enchantmentplus:enchantments/swirling/calculate/blessing_of_kings