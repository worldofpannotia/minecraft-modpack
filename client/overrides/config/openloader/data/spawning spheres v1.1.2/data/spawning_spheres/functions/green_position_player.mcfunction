# Positions player at center of sphere for deletion

execute store result entity @s Pos[0] double 1 run scoreboard players get #ss_xGreen ss_x
execute store result entity @s Pos[1] double 1 run scoreboard players get #ss_yGreen ss_y
execute store result entity @s Pos[2] double 1 run scoreboard players get #ss_zGreen ss_z

tp @a[tag=ss_tpSphere] @s
tag @a remove ss_tpSphere

kill @s