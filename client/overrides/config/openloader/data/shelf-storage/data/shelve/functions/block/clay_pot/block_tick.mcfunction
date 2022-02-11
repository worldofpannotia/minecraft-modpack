#keep locked state
execute at @a positioned ^ ^ ^3 as @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3] at @s run data modify block ~ ~ ~ TransferCooldown set value 999999999 
execute at @a positioned ^ ^ ^3 if entity @e[type=minecraft:armor_stand,tag=clay_pot,distance=..3] run function shelve:block/clay_pot/update_image