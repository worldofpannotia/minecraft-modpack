# Decrease Range
scoreboard players remove @s eplus.temp 1

# Particle
particle minecraft:end_rod ~ ~ ~ 0.0 0.0 0.0 0 1 force

# Sound
playsound enchantmentplus:enchant.divine_hunter.shoot player @a

# Found Target
execute as @e[type=#enchantmentplus:is_mob_or_player,tag=!eplus.divine_hunter_user,tag=!eplus.divine_hunter_exclude,dx=0] positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] run function enchantmentplus:enchantments/divine_hunter/hit_target

# Repeat
execute positioned ^ ^ ^0.125 if score @s eplus.temp matches 1.. run function enchantmentplus:enchantments/divine_hunter/run_raycast
