schedule function autotest:lib/next 1t
kill @e[tag=autotest.victim]
summon minecraft:zombie 40001 280 39988 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["autotest.victim"]}
data modify storage autotest:q roll set value {as:'',src:'kill @e[tag=autotest.victim,limit=1]',pred:'minecraft:zombie_head',any:'minecraft:zombie_head',id:'minecraft:zombie_head'}
scoreboard players set #n autotest 1500
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-1 zombie: no zombie head without a player",who:"#hits",lo:0,hi:0}
