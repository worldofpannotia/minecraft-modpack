schedule function autotest:lib/next 1t
execute unless entity @e[tag=autotest.runner,limit=1] run return run function autotest:lib/skip {id:"LOOT-1 creeper: creeper_head"}
kill @e[tag=autotest.victim]
summon minecraft:creeper 40001 280 39988 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["autotest.victim"]}
data modify storage autotest:q roll set value {as:'execute as @e[tag=autotest.runner,limit=1] run ',src:'kill @e[tag=autotest.victim,limit=1]',pred:'minecraft:creeper_head',any:'minecraft:creeper_head',id:'minecraft:creeper_head'}
scoreboard players set #n autotest 546
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-1 creeper: creeper_head (rate 2.50%)",who:"#hits",lo:1,hi:38}
