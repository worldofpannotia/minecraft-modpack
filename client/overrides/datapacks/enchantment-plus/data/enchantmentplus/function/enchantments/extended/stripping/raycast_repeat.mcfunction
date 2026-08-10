# Find the Block
execute positioned ^ ^ ^0.25 if block ~ ~ ~ #enchantmentplus:extended/is_stripped run return run function enchantmentplus:enchantments/extended/stripping/main

# Repeat
execute positioned ^ ^ ^0.25 run function enchantmentplus:enchantments/extended/stripping/raycast_repeat
