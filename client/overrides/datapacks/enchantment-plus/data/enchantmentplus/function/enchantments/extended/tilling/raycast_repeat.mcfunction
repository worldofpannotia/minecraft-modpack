# Find the Block
execute positioned ^ ^ ^0.25 if block ~ ~ ~ minecraft:farmland run return run function enchantmentplus:enchantments/extended/tilling/main

# Repeat
execute positioned ^ ^ ^0.25 run function enchantmentplus:enchantments/extended/tilling/raycast_repeat
