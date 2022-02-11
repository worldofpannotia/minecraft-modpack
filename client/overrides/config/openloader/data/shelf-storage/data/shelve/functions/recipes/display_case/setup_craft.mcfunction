#execute at @s as @e[type=item,distance=..1] run data modify entity @s PickupDelay set value 0
recipe take @s minecraft:display_case
advancement revoke @s only minecraft:recipes/decorations/display_case
tag @s add target
schedule function shelve:recipes/display_case/start_craft 1t replace
