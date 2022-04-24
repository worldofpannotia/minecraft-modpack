# Gets coords and dimension of player

execute store result score @s ss_x run data get entity @s Pos[0]
execute store result score @s ss_y run data get entity @s Pos[1]
execute store result score @s ss_z run data get entity @s Pos[2]
execute store result score @s ss_dim run data get entity @s Dimension