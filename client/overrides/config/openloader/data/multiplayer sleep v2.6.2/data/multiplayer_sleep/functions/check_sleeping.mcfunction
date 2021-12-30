tag @a[predicate=multiplayer_sleep:overworld] add mpSleep.canSleep
execute store result score #required mpSleep.dummy if entity @a[tag=mpSleep.canSleep,gamemode=!spectator]
execute as @a[tag=mpSleep.canSleep,gamemode=!spectator] if data entity @s SleepingX run tag @s add mpSleep.sleeping
execute store result score #sleeping mpSleep.dummy if entity @a[tag=mpSleep.sleeping]
execute if score #sleeping mpSleep.dummy matches 0 run function multiplayer_sleep:reset_progress
execute unless score #sleeping mpSleep.dummy matches 0 run function multiplayer_sleep:sleeping
tag @a remove mpSleep.canSleep