scoreboard players operation #canSleep mpSleep.dummy = #required mpSleep.dummy
execute store result score #percent mpSleep.config run gamerule playersSleepingPercentage
scoreboard players operation #required mpSleep.dummy *= #percent mpSleep.config
# Ceiling-divide by 100.
scoreboard players operation #required mpSleep.dummy /= #negative100 mpSleep.config
scoreboard players operation #required mpSleep.dummy *= #negative1 mpSleep.config
execute if score #required mpSleep.dummy matches 0 run scoreboard players set #required mpSleep.dummy 1
scoreboard players reset @a[tag=!mpSleep.sleeping] mpSleep.sleep
scoreboard players add @a[tag=mpSleep.sleeping] mpSleep.sleep 1
execute if score #display mpSleep.config matches 1 as @a[tag=mpSleep.canSleep] unless score @s mpSleep.config matches 1.. run tag @s add mpSleep.display1
execute if score #display mpSleep.config matches 2 as @a[tag=mpSleep.canSleep] unless score @s mpSleep.config matches 1.. run tag @s add mpSleep.display2
execute if score #display mpSleep.config matches 3 as @a[tag=mpSleep.canSleep] unless score @s mpSleep.config matches 1.. run tag @s add mpSleep.display3
tag @a[scores={mpSleep.config=1}] add mpSleep.display1
tag @a[scores={mpSleep.config=2}] add mpSleep.display2
tag @a[scores={mpSleep.config=3}] add mpSleep.display3
execute store result bossbar multiplayer_sleep:progress max run scoreboard players get #required mpSleep.dummy
execute store result bossbar multiplayer_sleep:progress value run scoreboard players get #sleeping mpSleep.dummy
bossbar set multiplayer_sleep:progress name [{"score":{"name":"#sleeping","objective":"mpSleep.dummy"}}," of ",{"score":{"name":"#required","objective":"mpSleep.dummy"}}," player(s) asleep"]
bossbar set multiplayer_sleep:progress players @a[tag=mpSleep.display1]
bossbar set multiplayer_sleep:progress visible true
title @a[tag=mpSleep.display2] actionbar [{"score":{"name":"#sleeping","objective":"mpSleep.dummy"},"color":"yellow"},{"text":" of ","color":"yellow"},{"score":{"name":"#required","objective":"mpSleep.dummy"},"color":"yellow"},{"text":" player(s) asleep","color":"yellow"}]
execute if score #immediateChat mpSleep.config matches 1 run function multiplayer_sleep:try_to_announce_asleep_immediately
execute unless score #immediateChat mpSleep.config matches 1 run function multiplayer_sleep:try_to_announce_asleep
execute unless score #asleep mpSleep.dummy < #required mpSleep.dummy run function multiplayer_sleep:sufficient_sleeping
tag @a remove mpSleep.display1
tag @a remove mpSleep.display2
tag @a remove mpSleep.display3
tag @a remove mpSleep.sleeping