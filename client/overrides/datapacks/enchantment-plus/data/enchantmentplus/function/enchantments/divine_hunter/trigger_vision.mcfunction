# Get Range
execute if data entity @s[type=minecraft:player] Inventory[{Slot:-106b}].components."minecraft:enchantments"."enchantmentplus:divine_hunter" store result score @s eplus.temp run data get entity @s Inventory[{Slot:-106b}].components."minecraft:enchantments"."enchantmentplus:divine_hunter" 10
execute if data entity @s[type=minecraft:player] SelectedItem.components."minecraft:enchantments"."enchantmentplus:divine_hunter" store result score @s eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:divine_hunter" 10
execute if data entity @s[type=!minecraft:player] equipment.mainhand.components."minecraft:enchantments"."enchantmentplus:divine_hunter" store result score @s eplus.temp run data get entity @s equipment.mainhand.components."minecraft:enchantments"."enchantmentplus:divine_hunter" 10

# Sound
playsound enchantmentplus:enchant.divine_hunter.trigger_vision player @s

# Give Effect
function enchantmentplus:enchantments/divine_hunter/macro with storage enchantmentplus:data Macros
