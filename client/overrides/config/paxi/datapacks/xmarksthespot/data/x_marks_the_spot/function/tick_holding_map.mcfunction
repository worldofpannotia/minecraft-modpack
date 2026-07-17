execute store result storage x_marks_the_spot:curr HasInMainHand byte 1 if items entity @s weapon.mainhand minecraft:filled_map
execute store result storage x_marks_the_spot:curr HasInOffHand byte 1 if items entity @s weapon.offhand minecraft:filled_map

summon minecraft:item ~ -999999 ~ {Item:{id:"minecraft:stone"},Tags:["x_marks_the_spot_temp_item"],PickupDelay:32767s,Age:5999s}
tag @s add x_marks_the_spot_curr_player
execute as @e[y=-999999,distance=0,type=minecraft:item,tag=x_marks_the_spot_temp_item,limit=1] run function x_marks_the_spot:tick_item_entity
tag @s remove x_marks_the_spot_curr_player
