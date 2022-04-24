# Removes the red sphere, to allow placement of a new one


scoreboard players add @s ss_removeRed 1

execute if score #ss_isRed ss_isRed matches ..0 run tellraw @s[scores={ss_removeRed=1}] [{"text":"There are no red spheres in the world to remove!","color":"red"}]

execute if score #ss_isRed ss_isRed matches 1.. as @s[scores={ss_removeRed=1}] at @s run function spawning_spheres:get_player_info
execute if score #ss_isRed ss_isRed matches 1.. as @s[scores={ss_removeRed=1}] at @s run function spawning_spheres:tp/red_sphere

execute if score #ss_isRed ss_isRed matches 1.. run effect give @s[scores={ss_removeRed=2}] blindness 2 99 true
execute if score #ss_isRed ss_isRed matches 1.. run tellraw @s[scores={ss_removeRed=2}] [{"text":"Processing...","color":"yellow"}]

execute if score #ss_isRed ss_isRed matches 1.. run tellraw @s[scores={ss_removeRed=10}] [{"text":"Deleting entities...","color":"yellow"}]

execute if score #ss_isRed ss_isRed matches 1.. as @s[scores={ss_removeRed=20}] at @s run kill @e[tag=ss_red]
execute if score #ss_isRed ss_isRed matches 1.. run tellraw @s[scores={ss_removeRed=20}] [{"text":"Completed","color":"green"}]

execute if score #ss_isRed ss_isRed matches 1.. as @s[scores={ss_removeRed=21}] at @s run function spawning_spheres:tp/back

execute if score #ss_isRed ss_isRed matches 1.. as @s[scores={ss_removeRed=22..}] at @s run scoreboard players set #ss_isRed ss_isRed 0
scoreboard players set @s[scores={ss_removeRed=22..}] ss_removeRed 0
