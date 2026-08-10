# Keep Motion
data modify entity @s data.Motion set from entity @s Motion

# Gather Drops
tp @s @n[type=minecraft:marker,tag=eplus.eg_marker,tag=eplus.eg_break]

# Apply Original Motion
data modify entity @s Motion set from entity @s data.Motion
