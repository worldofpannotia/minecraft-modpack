# Find Block
$execute positioned ~$(PosX) ~$(PosY) ~ if predicate enchantmentplus:check_tool if predicate enchantmentplus:break_safety run function enchantmentplus:enchantments/extended/mining/break

# Axis X
execute if score %PosX eplus.temp matches 0.. run scoreboard players remove %PosX eplus.temp 1
execute unless score %PosX eplus.temp matches 0.. run scoreboard players remove %PosY eplus.temp 1
execute unless score %PosX eplus.temp matches 0.. store result score %PosX eplus.temp run data get entity @s SelectedItem.components."minecraft:enchantments"."enchantmentplus:extended" 2
execute store result storage enchantmentplus:data Macros.Extended.PosX int 1 run scoreboard players get %PosX eplus.temp

# Axis Y
execute store result storage enchantmentplus:data Macros.Extended.PosY int 1 run scoreboard players get %PosY eplus.temp

# Continue
execute if score %PosX eplus.temp matches 0.. if score %PosY eplus.temp matches 0.. if predicate enchantmentplus:break_safety run function enchantmentplus:enchantments/extended/mining/axis_z with storage enchantmentplus:data Macros.Extended{}
