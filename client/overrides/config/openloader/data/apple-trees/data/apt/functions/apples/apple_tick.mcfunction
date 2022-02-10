#If block at position is air; kill Armor-Stand with tag APT#
execute as @e[tag=APT] at @s if block ~ ~ ~ air run kill @s

#If two blocks above Armor-Stand with tag APT isn't Flowering Azalea Leaves; kill self#
execute as @e[tag=APT] at @s unless block ~ ~ ~ minecraft:flowering_azalea_leaves run kill @s

#If two blocks above Armor-Stand with tag APT is Azalea Leaves; kill self#
execute as @e[tag=APT] at @s if block ~ ~ ~ minecraft:azalea_leaves run kill @s

#Tick Apple Seeds#
function apt:apples/apple/apple_seeds_tick
function apt:apples/golden_apple/golden_apple_seeds_tick
function apt:apples/egolden_apple/egolden_apple_seeds_tick