advancement revoke @s only pk_resh:placed_shulkerbox
execute anchored eyes positioned ^ ^ ^ run function iris:get_target
execute at @e[type=marker,tag=iris.ray,distance=..16] if block ~ ~ ~ #minecraft:shulker_boxes run function pk_resh:main/marker_place
kill @e[type=marker,tag=iris.ray,distance=..16]