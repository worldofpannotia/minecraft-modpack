#Kill the nearest item frame item within a distance of 1 block#
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:item_frame",Count:1b},Age:0s}]

#Kill self#
kill @s

#Summons the seeds item#
function apt:apples/egolden_apple/seeds/universal_give_seeds