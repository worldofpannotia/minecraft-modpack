scoreboard objectives add mpSleep.config dummy "Multiplayer Sleep Config"
scoreboard objectives add mpSleep.dummy dummy
scoreboard objectives add mpSleep trigger "Multiplayer Sleep"
scoreboard objectives add mpSleep.sleep dummy
scoreboard players set #negative1 mpSleep.config -1
scoreboard players set #negative100 mpSleep.config -100
execute unless score #percent mpSleep.config matches 0..100 run gamerule playersSleepingPercentage 0
execute store result score #percent mpSleep.config run gamerule playersSleepingPercentage
execute unless score #display mpSleep.config matches 0..3 run scoreboard players set #display mpSleep.config 3
execute unless score #immediateChat mpSleep.config matches 0..1 run scoreboard players set #immediateChat mpSleep.config 0
execute unless score #alwaysClear mpSleep.config matches 0..1 run scoreboard players set #alwaysClear mpSleep.config 0
bossbar add multiplayer_sleep:progress "Multiplayer Sleep Progress"
bossbar add multiplayer_sleep:preview "Multiplayer Sleep Progress"
bossbar set multiplayer_sleep:preview name "1 of 2 player(s) asleep"
bossbar set multiplayer_sleep:preview visible true
bossbar set multiplayer_sleep:preview value 1
bossbar set multiplayer_sleep:preview max 2
bossbar set multiplayer_sleep:preview players
advancement revoke @a only multiplayer_sleep:slept_in_bed