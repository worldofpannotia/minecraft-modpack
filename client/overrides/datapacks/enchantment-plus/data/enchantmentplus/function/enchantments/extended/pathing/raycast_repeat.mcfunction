# Find the Block
execute positioned ^ ^ ^0.25 if block ~ ~ ~ minecraft:dirt_path run return run function enchantmentplus:enchantments/extended/pathing/main

# Repeat
execute positioned ^ ^ ^0.25 run function enchantmentplus:enchantments/extended/pathing/raycast_repeat
