# Place both sphere's in reference to player's location

execute if score #ss_isBlue ss_isBlue matches ..0 store result score #ss_xBlue ss_x run data get entity @s Pos[0]
execute if score #ss_isBlue ss_isBlue matches ..0 store result score #ss_yBlue ss_y run data get entity @s Pos[1]
execute if score #ss_isBlue ss_isBlue matches ..0 store result score #ss_zBlue ss_z run data get entity @s Pos[2]
execute if score #ss_isBlue ss_isBlue matches ..0 store result score #ss_dimBlue ss_dim run data get entity @s Dimension

execute if score #ss_isBlue ss_isBlue matches ..0 align xyz positioned ~0.5 ~ ~0.5 run function spawning_spheres:spheres/blue_sphere
execute if score #ss_isBlue ss_isBlue matches ..0 align xyz positioned ~0.5 ~ ~0.5 run function spawning_spheres:spheres/large_blue_sphere
execute if score #ss_isBlue ss_isBlue matches ..0 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["ss_cyan"],Small:1b,CustomName:"[\"Center\"]",CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_concrete",Count:1b}]}

execute if score #ss_isBlue ss_isBlue matches ..0 align xyz positioned ~0.5 ~0.5 ~0.5 store result score #ss_xBlue ss_x run data get entity @s Pos[0]
execute if score #ss_isBlue ss_isBlue matches ..0 align xyz positioned ~0.5 ~0.5 ~0.5 store result score #ss_yBlue ss_y run data get entity @s Pos[1]
execute if score #ss_isBlue ss_isBlue matches ..0 align xyz positioned ~0.5 ~0.5 ~0.5 store result score #ss_zBlue ss_z run data get entity @s Pos[2]

execute if score #ss_isBlue ss_isBlue matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run tellraw @s [{"text":"A blue sphere already exists!","color":"red"},{"text":" Click here to remove it!","color":"yellow","clickEvent":{"action":"run_command","value":"/function spawning_spheres:remove/blue_sphere"},"hoverEvent":{"action":"show_text","value":"Runs /function spawning_spheres:remove/blue_sphere"}}]

# Make blue sphere unavailable, until removed
scoreboard players set #ss_isBlue ss_isBlue 1