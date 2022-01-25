# Teleports the player to the sphere

execute if score #ss_dimGreen ss_dim matches -1 in minecraft:the_nether run tp @s ~ ~ ~
execute if score #ss_dimGreen ss_dim matches 0 in minecraft:overworld run tp @s ~ ~ ~
execute if score #ss_dimGreen ss_dim matches 1 in minecraft:the_end run tp @s ~ ~ ~

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["ss_sphere"],NoGravity:1b,Invisible:1b,Marker:1b}

tag @s add ss_tpSphere
execute as @e[tag=ss_sphere,sort=nearest,limit=1] at @s run function spawning_spheres:green_position_player