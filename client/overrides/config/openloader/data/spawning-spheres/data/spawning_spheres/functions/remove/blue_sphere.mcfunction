# Removes the blue sphere, to allow placement of a new one


scoreboard players add @s ss_removeBlue 1

execute if score #ss_isBlue ss_isBlue matches ..0 run tellraw @s[scores={ss_removeBlue=1}] [{"text":"There are no blue spheres in the world to remove!","color":"red"}]

execute if score #ss_isBlue ss_isBlue matches 1.. as @s[scores={ss_removeBlue=1}] at @s run function spawning_spheres:get_player_info
execute if score #ss_isBlue ss_isBlue matches 1.. as @s[scores={ss_removeBlue=1}] at @s run function spawning_spheres:tp/blue_sphere

execute if score #ss_isBlue ss_isBlue matches 1.. run effect give @s[scores={ss_removeBlue=2}] blindness 2 99 true
execute if score #ss_isBlue ss_isBlue matches 1.. run tellraw @s[scores={ss_removeBlue=2}] [{"text":"Processing...","color":"yellow"}]

execute if score #ss_isBlue ss_isBlue matches 1.. run tellraw @s[scores={ss_removeBlue=10}] [{"text":"Deleting entities...","color":"yellow"}]

execute if score #ss_isBlue ss_isBlue matches 1.. as @s[scores={ss_removeBlue=20}] at @s run kill @e[tag=ss_cyan]
execute if score #ss_isBlue ss_isBlue matches 1.. run tellraw @s[scores={ss_removeBlue=20}] [{"text":"Completed","color":"green"}]

execute if score #ss_isBlue ss_isBlue matches 1.. as @s[scores={ss_removeBlue=21}] at @s run function spawning_spheres:tp/back

execute if score #ss_isBlue ss_isBlue matches 1.. as @s[scores={ss_removeBlue=22..}] at @s run scoreboard players set #ss_isBlue ss_isBlue 0
scoreboard players set @s[scores={ss_removeBlue=22..}] ss_removeBlue 0
