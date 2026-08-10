# Redundant Marker
execute if entity @e[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5] run kill @n[type=minecraft:marker,tag=eplus.block_marker,distance=..0.5]

# Place Marker
summon minecraft:marker ~ ~ ~ {Tags:["eplus.block_marker","eplus.lj_marker"],data:{LumberjackBlockId:"#enchantmentplus:lumberjack/mushroom_tree"}}
data modify entity @n[type=minecraft:marker,tag=eplus.lj_marker] data.UserUUID set from entity @s UUID

# Schedule
function enchantmentplus:enchantments/lumberjack/schedule
