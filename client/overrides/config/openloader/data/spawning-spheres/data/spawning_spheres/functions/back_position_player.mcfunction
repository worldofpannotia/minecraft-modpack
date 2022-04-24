# Positions player at center of sphere for deletion

execute store result entity @s Pos[0] double 1 run scoreboard players get @p ss_x
execute store result entity @s Pos[1] double 1 run scoreboard players get @p ss_y
execute store result entity @s Pos[2] double 1 run scoreboard players get @p ss_z

tp @a[tag=ss_tpBack] @s
tag @a remove ss_tpBack

kill @s