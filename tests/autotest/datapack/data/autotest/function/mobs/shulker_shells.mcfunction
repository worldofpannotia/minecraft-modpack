schedule function autotest:lib/next 1t
kill @e[tag=autotest.victim]
summon minecraft:shulker 40001 280 39988 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["autotest.victim"]}
data modify storage autotest:q roll set value {as:'',src:'kill @e[tag=autotest.victim,limit=1]',pred:'minecraft:shulker_shell',any:'minecraft:shulker_shell',id:'minecraft:shulker_shell'}
scoreboard players set #n autotest 300
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-12 shulker: always at least 2 shells",who:"#min",lo:2,hi:64}
function autotest:lib/check_score {id:"LOOT-12 shulker: shell count stays small without looting",who:"#max",lo:2,hi:4}
