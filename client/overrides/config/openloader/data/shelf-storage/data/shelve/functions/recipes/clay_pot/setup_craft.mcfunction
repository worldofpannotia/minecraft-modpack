#execute at @s as @e[type=item,distance=..1] run data modify entity @s PickupDelay set value 0
recipe take @s minecraft:clay_pot
advancement revoke @s only minecraft:recipes/decorations/clay_pot
tag @s add target
schedule function shelve:recipes/clay_pot/start_craft 1t replace
