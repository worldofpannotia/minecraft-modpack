#execute at @s as @e[type=item,distance=..1] run data modify entity @s PickupDelay set value 0
recipe take @s minecraft:crate
advancement revoke @s only minecraft:recipes/decorations/crate
tag @s add target
schedule function shelve:recipes/crate/start_craft 1t replace
