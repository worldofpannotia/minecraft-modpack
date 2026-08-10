# Process All Markers
execute as @e[type=minecraft:marker,tag=eplus.eg_marker] at @s run function enchantmentplus:enchantments/earthly_gatherer/process_markers with entity @s data
