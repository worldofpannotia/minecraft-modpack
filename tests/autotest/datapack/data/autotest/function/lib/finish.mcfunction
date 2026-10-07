kill @e[tag=autotest.victim]
execute in minecraft:overworld run forceload remove 39984 39952 40064 40102
execute if score #skip autotest matches 1.. run tellraw @a [{"text":"[autotest] ","color":"yellow"},{"score":{"name":"#skip","objective":"autotest"},"color":"yellow"},{"text":" check(s) skipped because no player started the run. Start it yourself with /function autotest:run","color":"yellow"}]
execute if score #fail autotest matches 0 run tellraw @a [{"text":"[autotest] DONE: ","color":"green"},{"score":{"name":"#pass","objective":"autotest"},"color":"green"},{"text":" passed, no failures","color":"green"}]
execute if score #fail autotest matches 1.. run tellraw @a [{"text":"[autotest] DONE: ","color":"red"},{"score":{"name":"#pass","objective":"autotest"},"color":"green"},{"text":" passed, ","color":"green"},{"score":{"name":"#fail","objective":"autotest"},"color":"red"},{"text":" FAILED. List them again with /function autotest:failures","color":"red"}]
scoreboard players set #done autotest 1
tag @a remove autotest.runner
