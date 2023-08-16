execute as @a[nbt={Inventory:[{tag:{DarknessCandle:1}}]}] run tag @s add darkness_check

execute as @a[tag=darkness_check] at @s run effect give @e[distance=..64,tag=!youngling_slayer] blindness 3 0
execute unless entity @e[type=player,tag=!youngling_slayer] as @a[tag=darkness_check] at @s run title @s actionbar [{"text":"You are currently blinding ","color":"red"},{"text":"nobody","bold":false}]
execute if entity @e[type=player,tag=!youngling_slayer] as @a[tag=darkness_check] at @s run title @s actionbar [{"text":"You are currently blinding: ","color":"red"},{"selector":"@a[distance=..64,tag=!youngling_slayer]","bold":true}]
execute as @a[tag=darkness_check] at @s run title @a[distance=..64,tag=!darkness_check,tag=!youngling_slayer] actionbar [{"selector":"@s","color":"red","bold":true},{"text":" is using the Candle of Darkness to blind you","color":"red","bold":false}]

execute as @a[nbt=!{Inventory:[{DarknessCandle:1}]}] run tag @s remove darkness_check