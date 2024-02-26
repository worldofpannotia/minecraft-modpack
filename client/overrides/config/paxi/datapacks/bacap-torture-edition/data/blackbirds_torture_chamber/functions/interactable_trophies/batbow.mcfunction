scoreboard objectives add batbow dummy
team add batman
team modify batman color black

execute as @a[predicate=blackbirds_torture_chamber:batbow_check] run tag @s add batbowed
execute as @a[predicate=blackbirds_torture_chamber:batbow_check_offhand] run tag @s add batbowed

execute as @a[tag=batbowed] store result score @s batbow run execute if entity @e[type=bat,tag=batman]
execute as @a[tag=batbowed,scores={batbow=..25}] at @s run summon bat ~ ~ ~ {Tags:["batman"],CustomName:'{"text":"Batman\'s Bat"}',Team:"batman"}
execute as @e[type=bat,tag=batman] at @s unless entity @a[tag=batbowed,distance=..10] run kill @s

execute as @a[predicate=!blackbirds_torture_chamber:batbow_check,predicate=!blackbirds_torture_chamber:batbow_check_offhand] run tag @s remove batbowed