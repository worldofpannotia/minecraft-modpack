scoreboard players set @s block_status 1
execute as @s at @s if entity @p[y_rotation=45..134.999999] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,90f,0f]}}
#west
execute as @s at @s if entity @p[y_rotation=135..224.999999] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f]}}
#north
execute as @s at @s if entity @p[y_rotation=-135..-44.999999] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,90f,0f]}}
#east
execute as @s at @s if entity @p[y_rotation=-45..44.999999] run data merge entity @s {Rotation:[0f],Pose:{Head:[0f,0f,0f]}}
#south
execute as @s at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 0 0

execute as @s at @s unless block ~ ~ ~ minecraft:air run tp @s ~ ~1 ~
execute as @s at @s if entity @e[distance=..0.5,type=!#shelve:entity_mask,tag=!eldritch_shelf] run function shelve:block/eldritch_shelf/abort_summon
execute as @s at @s unless block ~ ~ ~ minecraft:air run function shelve:block/eldritch_shelf/abort_summon
execute as @s at @s if block ~ ~ ~ minecraft:air unless entity @e[distance=..0.5,type=!#shelve:entity_mask,tag=!eldritch_shelf] run function shelve:block/eldritch_shelf/complete
