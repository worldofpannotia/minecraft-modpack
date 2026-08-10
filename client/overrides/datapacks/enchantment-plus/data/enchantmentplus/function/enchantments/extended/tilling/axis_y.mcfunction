# Find Block
$execute positioned ~$(PosX) ~ ~$(PosZ) positioned ~-$(Level) ~ ~-$(Level) if block ~ ~ ~ #enchantmentplus:extended/is_tillable if predicate enchantmentplus:break_safety run function enchantmentplus:enchantments/extended/tilling/convert

# Axis X
execute if score %PosX eplus.temp matches 0.. run scoreboard players remove %PosX eplus.temp 1
execute unless score %PosX eplus.temp matches 0.. run scoreboard players remove %PosZ eplus.temp 1
execute unless score %PosX eplus.temp matches 0.. store result score %PosX eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:extended" 2
execute store result storage enchantmentplus:data Macros.Extended.PosX int 1 run scoreboard players get %PosX eplus.temp

# Axis Z
execute store result storage enchantmentplus:data Macros.Extended.PosZ int 1 run scoreboard players get %PosZ eplus.temp

# Continue
execute if score %PosX eplus.temp matches 0.. if score %PosZ eplus.temp matches 0.. if predicate enchantmentplus:break_safety run function enchantmentplus:enchantments/extended/tilling/axis_y with storage enchantmentplus:data Macros.Extended{}
