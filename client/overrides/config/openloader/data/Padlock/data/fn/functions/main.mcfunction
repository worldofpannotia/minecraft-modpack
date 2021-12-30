#Scoreboards
scoreboard players add %randomKey GetKey 1
execute if score %randomKey Key matches 200.. run scoreboard players set %randomKey GetKey 1

#Padlock Mechanics
execute as @e[tag=padlock,type=armor_stand,nbt={HandItems:[{tag:{skeleton:1}}]}] at @s run function fn:padlock/remove
execute as @e[tag=padlock,type=armor_stand] run function fn:padlock/main

#rotation
execute as @e[tag=padlock,tag=new] at @s run function fn:padlock/rotate
scoreboard players reset @a Spawns
