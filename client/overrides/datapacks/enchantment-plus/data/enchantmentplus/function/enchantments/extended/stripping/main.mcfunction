# Store Enchantment Data
execute store result storage enchantmentplus:data Macros.Extended.Level int 1 run data get entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:extended"
execute store result storage enchantmentplus:data Macros.Extended.PosX int 2 run data get storage enchantmentplus:data Macros.Extended.Level
execute store result storage enchantmentplus:data Macros.Extended.PosY int 2 run data get storage enchantmentplus:data Macros.Extended.Level
execute store result storage enchantmentplus:data Macros.Extended.PosZ int 2 run data get storage enchantmentplus:data Macros.Extended.Level
execute store result score %PosX eplus.temp run data get storage enchantmentplus:data Macros.Extended.Level 2
execute store result score %PosY eplus.temp run data get storage enchantmentplus:data Macros.Extended.Level 2
execute store result score %PosZ eplus.temp run data get storage enchantmentplus:data Macros.Extended.Level 2

# Center Offset
execute store result score %ExtendedOffset eplus.temp run data get storage enchantmentplus:data Macros.Extended.Level
scoreboard players remove %ExtendedOffset eplus.temp 1
execute store result storage enchantmentplus:data Macros.Extended.Offset int 1 run scoreboard players get %ExtendedOffset eplus.temp

# Check Rotation
execute anchored eyes run function enchantmentplus:enchantments/extended/stripping/check_rotation with storage enchantmentplus:data Macros.Extended{}
