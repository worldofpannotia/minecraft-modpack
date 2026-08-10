# North
$execute if entity @s[x_rotation=-45..45,y_rotation=135..225] positioned ~-$(Level) ~-$(Level) ~ positioned ~ ~$(Offset) ~ run return run function enchantmentplus:enchantments/extended/stripping/axis_z with storage enchantmentplus:data Macros.Extended{}

# East
$execute if entity @s[x_rotation=-45..45,y_rotation=225..315] positioned ~ ~-$(Level) ~-$(Level) positioned ~ ~$(Offset) ~ run return run function enchantmentplus:enchantments/extended/stripping/axis_x with storage enchantmentplus:data Macros.Extended{}

# South
$execute if entity @s[x_rotation=-45..45,y_rotation=315..45] positioned ~-$(Level) ~-$(Level) ~ positioned ~ ~$(Offset) ~ run return run function enchantmentplus:enchantments/extended/stripping/axis_z with storage enchantmentplus:data Macros.Extended{}

# West
$execute if entity @s[x_rotation=-45..45,y_rotation=45..135] positioned ~ ~-$(Level) ~-$(Level) positioned ~ ~$(Offset) ~ run return run function enchantmentplus:enchantments/extended/stripping/axis_x with storage enchantmentplus:data Macros.Extended{}

# Up
$execute if entity @s[x_rotation=-90..-45] positioned ~-$(Level) ~ ~-$(Level) run return run function enchantmentplus:enchantments/extended/stripping/axis_y with storage enchantmentplus:data Macros.Extended{}

# Down
$execute if entity @s[x_rotation=45..90] positioned ~-$(Level) ~ ~-$(Level) run return run function enchantmentplus:enchantments/extended/stripping/axis_y with storage enchantmentplus:data Macros.Extended{}
