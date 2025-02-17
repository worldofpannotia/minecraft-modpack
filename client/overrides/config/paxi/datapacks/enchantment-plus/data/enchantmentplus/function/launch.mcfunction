execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^3
data modify storage test Motion set from entity @s Pos
tp @s ~ ~ ~
data modify entity @s Motion set from storage test Motion