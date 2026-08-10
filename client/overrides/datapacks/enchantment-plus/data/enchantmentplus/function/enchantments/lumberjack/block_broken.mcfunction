# Define Center Point
tag @s add eplus.lj_break

# Set the Target Block
data modify storage enchantmentplus:data Macros.LumberjackBlockId set from entity @s data.LumberjackBlockId

# Start Breaking
$execute as @p[nbt={UUID:$(UserUUID)}] run function enchantmentplus:enchantments/lumberjack/check_adjacent with storage enchantmentplus:data Macros

# Kill
kill @s
