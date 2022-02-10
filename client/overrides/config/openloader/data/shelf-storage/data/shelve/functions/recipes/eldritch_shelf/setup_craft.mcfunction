#execute at @s as @e[type=item,distance=..1] run data modify entity @s PickupDelay set value 0
recipe take @s minecraft:eldritch_shelf
advancement revoke @s only minecraft:recipes/decorations/eldritch_shelf
tag @s add target
schedule function shelve:recipes/eldritch_shelf/start_craft 1t replace
