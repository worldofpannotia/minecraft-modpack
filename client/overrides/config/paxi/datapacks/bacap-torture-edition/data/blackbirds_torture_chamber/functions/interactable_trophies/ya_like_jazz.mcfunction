execute as @a[predicate=blackbirds_torture_chamber:ya_like_jazz_check] run tag @s add ya_like_jazz
execute as @a[predicate=blackbirds_torture_chamber:ya_like_jazz_check_offhand] run tag @s add ya_like_jazz

scoreboard objectives add barry dummy
team add barry
team modify barry color yellow
team modify barry collisionRule never

scoreboard objectives add barry_sound dummy
scoreboard players add @a[tag=ya_like_jazz] barry_sound 1

execute as @a[tag=ya_like_jazz,scores={barry_sound=1}] run playsound music_disc.stal record @s ~ ~ ~ 10000 1

execute as @a[tag=ya_like_jazz] store result score @s barry run execute if entity @e[type=bee,tag=barry]
execute as @a[tag=ya_like_jazz,scores={barry=..100}] at @s run summon bee ~ ~ ~ {Tags:["barry"],CustomName:'{"text":"Barry B Benson"}',Team:"barry"}
execute as @e[type=bee,tag=barry] at @s unless entity @a[tag=ya_like_jazz,distance=..10] run kill @s

execute as @a[predicate=!blackbirds_torture_chamber:ya_like_jazz_check,predicate=!blackbirds_torture_chamber:ya_like_jazz_check_offhand] run tag @s remove ya_like_jazz
execute as @a[tag=!ya_like_jazz] run scoreboard players reset @s barry_sound
execute as @a[tag=!ya_like_jazz] run stopsound @s record