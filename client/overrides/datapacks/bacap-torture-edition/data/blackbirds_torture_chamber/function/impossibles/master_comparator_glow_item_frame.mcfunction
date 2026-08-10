execute at @e[type=glow_item_frame,distance=..5,nbt={Facing:2b}] if block ~ ~ ~2 comparator[facing=north] run advancement grant @s only blackbirds_torture_chamber:stuff/master_comparator glow_item_frame
execute at @e[type=glow_item_frame,distance=..5,nbt={Facing:3b}] if block ~ ~ ~-2 comparator[facing=south] run advancement grant @s only blackbirds_torture_chamber:stuff/master_comparator glow_item_frame
execute at @e[type=glow_item_frame,distance=..5,nbt={Facing:4b}] if block ~2 ~ ~ comparator[facing=west] run advancement grant @s only blackbirds_torture_chamber:stuff/master_comparator glow_item_frame
execute at @e[type=glow_item_frame,distance=..5,nbt={Facing:5b}] if block ~-2 ~ ~ comparator[facing=east] run advancement grant @s only blackbirds_torture_chamber:stuff/master_comparator glow_item_frame

advancement revoke @s only blackbirds_torture_chamber:technical/master_comparator_glow_item_frame
