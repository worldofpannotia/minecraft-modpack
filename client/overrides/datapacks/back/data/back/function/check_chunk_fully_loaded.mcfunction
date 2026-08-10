summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["back.checkChunkFullyLoaded"],Duration:0,Radius:0.0f,WaitTime:0}
execute if entity @e[type=minecraft:area_effect_cloud,tag=back.checkChunkFullyLoaded,limit=1,distance=..0.01] run function back:start_to_mark_dimension
