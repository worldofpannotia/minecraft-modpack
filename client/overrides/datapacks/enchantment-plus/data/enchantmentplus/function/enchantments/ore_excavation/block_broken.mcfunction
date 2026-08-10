# Define Center Point
tag @s add eplus.oe_break

# Set the Target Block
data modify storage enchantmentplus:data Macros.OreExcavationBlockId set from entity @s data.OreExcavationBlockId

# Start Breaking
$execute as @p[nbt={UUID:$(UserUUID)}] run function enchantmentplus:enchantments/ore_excavation/check_adjacent with storage enchantmentplus:data Macros

# Summon Experience Orb
execute if score @s eplus.temp2 matches 1.. run function enchantmentplus:enchantments/ore_excavation/experience/summon_orb

# Kill
kill @s
