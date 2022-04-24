function multiplayer_sleep:reset_progress
scoreboard players set #sleeping mpSleep.dummy 0
execute if score #alwaysClear mpSleep.config matches 1 run schedule function multiplayer_sleep:clear_weather 1t