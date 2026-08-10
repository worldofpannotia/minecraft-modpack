# Set Range
execute if data entity @s[type=minecraft:player] Inventory[{Slot:-106b}].components."minecraft:enchantments"."enchantmentplus:divine_hunter" store result score @s eplus.temp run data get entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments"."enchantmentplus:divine_hunter" 80
execute if data entity @s[type=minecraft:player] SelectedItem.components."minecraft:enchantments"."enchantmentplus:divine_hunter" store result score @s eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:divine_hunter" 80
execute if data entity @s[type=!minecraft:player] equipment.mainhand.components."minecraft:enchantments"."enchantmentplus:divine_hunter" store result score @s eplus.temp run data get entity @s equipment.mainhand.components."minecraft:enchantments"."enchantmentplus:divine_hunter" 80

# Run Raycast
tag @s add eplus.divine_hunter_user
tag @s add eplus.divine_hunter_exclude
execute anchored eyes positioned ^ ^ ^ run function enchantmentplus:enchantments/divine_hunter/run_raycast
tag @s remove eplus.divine_hunter_user
tag @e remove eplus.divine_hunter_exclude
