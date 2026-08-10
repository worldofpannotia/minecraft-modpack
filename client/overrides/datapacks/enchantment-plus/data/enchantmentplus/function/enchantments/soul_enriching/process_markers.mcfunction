# Markers Only Exist for 10 Seconds
scoreboard players add @s eplus.temp 1
execute if score @s eplus.temp matches 200.. run return run kill @s

# Block Broken
execute if block ~ ~ ~ #minecraft:air run function enchantmentplus:enchantments/soul_enriching/block_broken with entity @s data

# Block Moved
$execute unless block ~ ~ ~ $(SoulEnrichingBlockId) run return run kill @s

# Repeat If Any Markers Remaining
execute if entity @e[type=minecraft:marker,tag=eplus.se_marker] run schedule function enchantmentplus:enchantments/soul_enriching/schedule 1t
