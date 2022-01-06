# Place both sphere's in reference to player's location

execute if score #ss_isRed ss_isRed matches ..0 store result score #ss_xRed ss_x run data get entity @s Pos[0]
execute if score #ss_isRed ss_isRed matches ..0 store result score #ss_yRed ss_y run data get entity @s Pos[1]
execute if score #ss_isRed ss_isRed matches ..0 store result score #ss_zRed ss_z run data get entity @s Pos[2]
execute if score #ss_isRed ss_isRed matches ..0 store result score #ss_dimRed ss_dim run data get entity @s Dimension

execute if score #ss_isRed ss_isRed matches ..0 align xyz positioned ~0.5 ~ ~0.5 run function spawning_spheres:spheres/red_sphere
execute if score #ss_isRed ss_isRed matches ..0 align xyz positioned ~0.5 ~ ~0.5 run function spawning_spheres:spheres/large_red_sphere
execute if score #ss_isRed ss_isRed matches ..0 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["ss_red"],Small:1b,CustomName:"[\"Center\"]",CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}

execute if score #ss_isRed ss_isRed matches ..0 align xyz positioned ~0.5 ~0.5 ~0.5 store result score #ss_xRed ss_x run data get entity @s Pos[0]
execute if score #ss_isRed ss_isRed matches ..0 align xyz positioned ~0.5 ~0.5 ~0.5 store result score #ss_yRed ss_y run data get entity @s Pos[1]
execute if score #ss_isRed ss_isRed matches ..0 align xyz positioned ~0.5 ~0.5 ~0.5 store result score #ss_zRed ss_z run data get entity @s Pos[2]

execute if score #ss_isRed ss_isRed matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run tellraw @s [{"text":"A red sphere already exists!","color":"red"},{"text":" Click here to remove it!","color":"yellow","clickEvent":{"action":"run_command","value":"/function spawning_spheres:remove/red_sphere"},"hoverEvent":{"action":"show_text","value":"Runs /function spawning_spheres:remove/red_sphere"}}]

# Make red sphere unavailable, until removed
scoreboard players set #ss_isRed ss_isRed 1