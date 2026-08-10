# Store Enchantment Data
execute store result storage enchantmentplus:data Macros.Extended.Level int 1 run data get entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:extended"
execute store result storage enchantmentplus:data Macros.Extended.PosX int 2 run data get storage enchantmentplus:data Macros.Extended.Level
execute store result storage enchantmentplus:data Macros.Extended.PosZ int 2 run data get storage enchantmentplus:data Macros.Extended.Level
execute store result score %PosX eplus.temp run data get storage enchantmentplus:data Macros.Extended.Level 2
execute store result score %PosZ eplus.temp run data get storage enchantmentplus:data Macros.Extended.Level 2

# Convert
function enchantmentplus:enchantments/extended/pathing/axis_y with storage enchantmentplus:data Macros.Extended{}
