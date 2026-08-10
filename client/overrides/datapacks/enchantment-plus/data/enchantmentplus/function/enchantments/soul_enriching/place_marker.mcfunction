# Redundant Marker
execute if entity @e[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5] run kill @n[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5]

# Check Harvest Level
execute unless predicate enchantmentplus:check_tool run return fail

# Place Marker
summon minecraft:marker ~ ~ ~ {Tags:["eplus.block_marker","eplus.se_marker"]}
data modify entity @n[type=minecraft:marker,tag=eplus.se_marker] data.UserUUID set from entity @s UUID

# Set Block Id
summon minecraft:item_display ~ ~ ~ {Tags:[eplus.id_marker],view_range:0f}
loot replace entity @n[type=minecraft:item_display,tag=eplus.id_marker] contents mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]
data modify entity @n[type=minecraft:marker,tag=eplus.se_marker] data.SoulEnrichingBlockId set from entity @n[type=minecraft:item_display,tag=eplus.id_marker] item.id
kill @n[type=minecraft:item_display,tag=eplus.id_marker]

# Schedule
function enchantmentplus:enchantments/soul_enriching/schedule
