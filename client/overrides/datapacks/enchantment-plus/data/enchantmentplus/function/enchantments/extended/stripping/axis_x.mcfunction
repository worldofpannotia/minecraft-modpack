# Find Block
$execute positioned ~ ~$(PosY) ~$(PosZ) if block ~ ~ ~ #enchantmentplus:extended/is_strippable if predicate enchantmentplus:break_safety run function enchantmentplus:enchantments/extended/stripping/convert

# Axis Z
execute if score %PosZ eplus.temp matches 0.. run scoreboard players remove %PosZ eplus.temp 1
execute unless score %PosZ eplus.temp matches 0.. run scoreboard players remove %PosY eplus.temp 1
execute unless score %PosZ eplus.temp matches 0.. store result score %PosZ eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:extended" 2
execute store result storage enchantmentplus:data Macros.Extended.PosZ int 1 run scoreboard players get %PosZ eplus.temp

# Axis Y
execute store result storage enchantmentplus:data Macros.Extended.PosY int 1 run scoreboard players get %PosY eplus.temp

# Continue
execute if score %PosZ eplus.temp matches 0.. if score %PosY eplus.temp matches 0.. if predicate enchantmentplus:break_safety run function enchantmentplus:enchantments/extended/stripping/axis_x with storage enchantmentplus:data Macros.Extended{}
