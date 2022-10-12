tag @s remove vjf_source
tag @s remove vjf_range
tag @s remove vjf_range_0
tag @s remove vjf_range_1
tag @s remove vjf_range_2
tag @s remove vjf_range_3

scoreboard players set @s vjf_range_toggle 0

title @s times 20 60 20
title @s subtitle ["",{"text":"Range mode turned ","color":"yellow"},{"text":"off ","bold":true,"color":"red"},{"text":"- go ","color":"yellow"},{"text":"trade","color":"gold"},{"text":"!","color":"yellow"}]
title @s title {"text":"DEACTIVATED","bold":true,"color":"red"}

execute at @s run playsound minecraft:entity.villager.yes player @s ~ ~ ~