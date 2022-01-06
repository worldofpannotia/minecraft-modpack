# Place both sphere's in reference to player's location

execute if score #ss_isGreen ss_isGreen matches ..0 store result score #ss_xGreen ss_x run data get entity @s Pos[0]
execute if score #ss_isGreen ss_isGreen matches ..0 store result score #ss_yGreen ss_y run data get entity @s Pos[1]
execute if score #ss_isGreen ss_isGreen matches ..0 store result score #ss_zGreen ss_z run data get entity @s Pos[2]
execute if score #ss_isGreen ss_isGreen matches ..0 store result score #ss_dimGreen ss_dim run data get entity @s Dimension

execute if score #ss_isGreen ss_isGreen matches ..0 align xyz positioned ~0.5 ~ ~0.5 run function spawning_spheres:spheres/green_sphere
execute if score #ss_isGreen ss_isGreen matches ..0 align xyz positioned ~0.5 ~ ~0.5 run function spawning_spheres:spheres/large_green_sphere
execute if score #ss_isGreen ss_isGreen matches ..0 align xyz positioned ~0.5 ~ ~0.5 run summon minecraft:armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:["ss_green"],Small:1b,CustomName:"[\"Center\"]",CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:green_concrete",Count:1b}]}

execute if score #ss_isGreen ss_isGreen matches ..0 align xyz positioned ~0.5 ~0.5 ~0.5 store result score #ss_xGreen ss_x run data get entity @s Pos[0]
execute if score #ss_isGreen ss_isGreen matches ..0 align xyz positioned ~0.5 ~0.5 ~0.5 store result score #ss_yGreen ss_y run data get entity @s Pos[1]
execute if score #ss_isGreen ss_isGreen matches ..0 align xyz positioned ~0.5 ~0.5 ~0.5 store result score #ss_zGreen ss_z run data get entity @s Pos[2]

execute if score #ss_isGreen ss_isGreen matches 1.. align xyz positioned ~0.5 ~0.5 ~0.5 run tellraw @s [{"text":"A green sphere already exists!","color":"red"},{"text":" Click here to remove it!","color":"yellow","clickEvent":{"action":"run_command","value":"/function spawning_spheres:remove/green_sphere"},"hoverEvent":{"action":"show_text","value":"Runs /function spawning_spheres:remove/green_sphere"}}]

# Make green sphere unavailable, until removed
scoreboard players set #ss_isGreen ss_isGreen 1