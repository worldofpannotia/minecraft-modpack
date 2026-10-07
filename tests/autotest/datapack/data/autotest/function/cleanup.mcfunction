execute in minecraft:overworld run forceload remove 39984 39952 40064 40102
tag @a remove autotest.runner
scoreboard objectives remove autotest
data remove storage autotest:out failures
data remove storage autotest:out skipped
data remove storage autotest:q stages
tellraw @a {"text":"[autotest] cleaned up (the lab blocks stay in the world at 40000 280 40000)","color":"gray"}
