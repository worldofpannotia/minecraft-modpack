# Get Current Damage
execute store result score @s eplus.swirling_damage run attribute @s minecraft:attack_damage get 10

# Calculate Blessing of Kings
execute if data entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:blessing_of_kings" run function enchantmentplus:enchantments/swirling/calculate/blessing_of_kings

# Calculate Diverse Slayer
execute if data entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:diverse_slayer" run function enchantmentplus:enchantments/swirling/calculate/diverse_slayer

# Calculate Sharpness
execute if data entity @s SelectedItem.components."minecraft:enchantments"."minecraft:sharpness" run function enchantmentplus:enchantments/swirling/calculate/sharpness
