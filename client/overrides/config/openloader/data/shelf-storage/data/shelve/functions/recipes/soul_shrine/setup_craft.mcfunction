#execute at @s as @e[type=item,distance=..1] run data modify entity @s PickupDelay set value 0
recipe take @s minecraft:soul_shrine
advancement revoke @s only minecraft:recipes/decorations/soul_shrine
tag @s add target
schedule function shelve:recipes/soul_shrine/start_craft 1t replace
