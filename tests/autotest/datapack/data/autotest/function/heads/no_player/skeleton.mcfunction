schedule function autotest:lib/next 1t
kill @e[tag=autotest.victim]
summon minecraft:skeleton 40001 280 39988 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["autotest.victim"]}
data modify storage autotest:q roll set value {as:'',src:'kill @e[tag=autotest.victim,limit=1]',pred:'minecraft:player_head',any:'minecraft:player_head',id:'minecraft:player_head'}
scoreboard players set #n autotest 300
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-5 skeleton: no head without a player",who:"#all",lo:0,hi:0}
