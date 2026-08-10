# Redundant Marker
execute if entity @e[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5] run kill @n[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5]

# Check Harvest Level
execute unless predicate enchantmentplus:check_tool run return fail

# Place Marker
summon minecraft:marker ~ ~ ~ {Tags:["eplus.block_marker","eplus.oe_marker"],data:{OreExcavationBlockId:"#minecraft:gold_ores"}}
data modify entity @n[type=minecraft:marker,tag=eplus.oe_marker] data.UserUUID set from entity @s UUID

# Schedule
function enchantmentplus:enchantments/ore_excavation/schedule
