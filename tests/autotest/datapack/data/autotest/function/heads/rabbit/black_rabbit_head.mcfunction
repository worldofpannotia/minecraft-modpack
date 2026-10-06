schedule function autotest:lib/next 1t
execute unless entity @e[tag=autotest.runner,limit=1] run return run function autotest:lib/skip {id:"LOOT-4 rabbit: Black Rabbit Head"}
kill @e[tag=autotest.victim]
summon minecraft:rabbit 40001 280 39988 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["autotest.victim"],RabbitType:2}
data modify storage autotest:q roll set value {as:'execute as @e[tag=autotest.runner,limit=1] run ',src:'kill @e[tag=autotest.victim,limit=1]',pred:'minecraft:player_head[minecraft:item_name="Black Rabbit Head"]',any:'minecraft:player_head',id:'minecraft:player_head'}
scoreboard players set #n autotest 46
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-4 rabbit: Black Rabbit Head (rate 26.00%)",who:"#hits",lo:1,hi:32}
function autotest:lib/check_same {id:"LOOT-4 rabbit: Black Rabbit Head (no other head)"}
