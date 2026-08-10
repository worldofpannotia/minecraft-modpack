# Process All Markers
execute as @e[type=minecraft:marker,tag=eplus.oe_marker] at @s run function enchantmentplus:enchantments/ore_excavation/process_markers with entity @s data
