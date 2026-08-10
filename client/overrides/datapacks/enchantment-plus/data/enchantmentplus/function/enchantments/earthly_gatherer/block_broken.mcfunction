# Define Center Point
tag @s add eplus.eg_break

# Set the Target Block
data modify storage enchantmentplus:data Macros.EarthlyGathererBlockId set from entity @s data.EarthlyGathererBlockId

# Start Breaking
$execute as @p[nbt={UUID:$(UserUUID)}] run function enchantmentplus:enchantments/earthly_gatherer/check_adjacent with storage enchantmentplus:data Macros

# Kill
kill @s
