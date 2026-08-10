# Requires Fully Charged Shots for Players
execute unless data entity @s {crit:1b} on origin if entity @s[type=minecraft:player] run return fail

# Prepare Raycast
execute on origin at @s run function enchantmentplus:enchantments/divine_hunter/prepare_raycast

# Kill Arrow
kill @s[type=minecraft:spectral_arrow]
