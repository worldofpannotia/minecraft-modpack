execute in minecraft:overworld run forceload add 39984 39952 40064 40102
execute in minecraft:overworld run tp @s 40000 283 40000
tellraw @s {"text":"[autotest] teleported to the lab. The area stays loaded until /function autotest:cleanup","color":"gray"}
