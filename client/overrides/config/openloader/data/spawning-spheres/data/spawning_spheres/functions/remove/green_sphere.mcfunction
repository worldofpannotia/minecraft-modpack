# Removes the green sphere, to allow placement of a new one


scoreboard players add @s ss_removeGreen 1

execute if score #ss_isGreen ss_isGreen matches ..0 run tellraw @s[scores={ss_removeGreen=1}] [{"text":"There are no green spheres in the world to remove!","color":"red"}]

execute if score #ss_isGreen ss_isGreen matches 1.. as @s[scores={ss_removeGreen=1}] at @s run function spawning_spheres:get_player_info
execute if score #ss_isGreen ss_isGreen matches 1.. as @s[scores={ss_removeGreen=1}] at @s run function spawning_spheres:tp/green_sphere

execute if score #ss_isGreen ss_isGreen matches 1.. run effect give @s[scores={ss_removeGreen=2}] blindness 2 99 true
execute if score #ss_isGreen ss_isGreen matches 1.. run tellraw @s[scores={ss_removeGreen=2}] [{"text":"Processing...","color":"yellow"}]

execute if score #ss_isGreen ss_isGreen matches 1.. run tellraw @s[scores={ss_removeGreen=10}] [{"text":"Deleting entities...","color":"yellow"}]

execute if score #ss_isGreen ss_isGreen matches 1.. as @s[scores={ss_removeGreen=20}] at @s run kill @e[tag=ss_green]
execute if score #ss_isGreen ss_isGreen matches 1.. run tellraw @s[scores={ss_removeGreen=20}] [{"text":"Completed","color":"green"}]

execute if score #ss_isGreen ss_isGreen matches 1.. as @s[scores={ss_removeGreen=21}] at @s run function spawning_spheres:tp/back

execute if score #ss_isGreen ss_isGreen matches 1.. as @s[scores={ss_removeGreen=22..}] at @s run scoreboard players set #ss_isGreen ss_isGreen 0
scoreboard players set @s[scores={ss_removeGreen=22..}] ss_removeGreen 0
