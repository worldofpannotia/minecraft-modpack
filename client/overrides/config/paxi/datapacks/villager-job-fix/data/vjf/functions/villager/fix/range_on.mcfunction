scoreboard players set @s vjf_range_toggle 0

tag @s add vjf_source
tag @s add vjf_range
tag @s add vjf_range_0

title @s times 5 10 5
title @s subtitle ["",{"text":"Range mode is ","color":"yellow"},{"text":"ON","bold":true,"color":"green"},{"text":" \u2013 t","bold":true,"color":"yellow"},{"text":"urn it ","color":"yellow"},{"text":"off","bold":true,"color":"red"},{"text":" later.","color":"yellow"}]
title @s title {"text":"ACTIVACTED","bold":true,"color":"green"}

tellraw @s ["",{"text":"======= Villager Job Fix - Range Mode =======","bold":true,"color":"yellow"},{"text":"\n"},{"text":"Range mode was activated which means that ","color":"gold"},{"text":"all villagers inside a 20 block radius are being fixed","bold":true,"color":"green"},{"text":" - you can move around while this mode is active!\n\nTo deactivate it run again \"","color":"gold"},{"text":"/trigger vjf_range_toggle","bold":true,"italic":true,"color":"red"},{"text":"\".","color":"gold"},{"text":"\n"},{"text":"=========================================","bold":true,"color":"yellow"}]

execute at @s run playsound minecraft:block.anvil.use player @s ~ ~ ~