execute as @a[predicate=blackbirds_torture_chamber:darkness_check] run tag @s add darkness_check
execute as @a[predicate=blackbirds_torture_chamber:darkness_check_offhand] run tag @s add darkness_check
execute as @a[tag=darkness_check] at @s run effect give @e[distance=..64] blindness 3 0
execute as @a[tag=darkness_check] at @s run title @s actionbar [{"text":"You are currently blinding: ","color":"red"},{"selector":"@a[distance=..64]","bold":true}]
execute as @a[tag=darkness_check] at @s run title @a[distance=..64,tag=!darkness_check] actionbar [{"selector":"@s","color":"red","bold":true},{"text":" is using the Candle of Darkness to blind you","color":"red","bold":false}]
execute as @a[predicate=!blackbirds_torture_chamber:darkness_check,predicate=!blackbirds_torture_chamber:darkness_check_offhand] run tag @s remove darkness_check