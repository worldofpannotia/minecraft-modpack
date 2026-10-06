schedule function autotest:lib/next 1t
execute unless entity @e[tag=autotest.runner,limit=1] run return run function autotest:lib/skip {id:"LOOT-2 tropical fish: Anemone"}
kill @e[tag=autotest.victim]
summon minecraft:tropical_fish 40001 280 39988 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["autotest.victim"],Variant:117506305}
data modify storage autotest:q roll set value {as:'execute as @e[tag=autotest.runner,limit=1] run ',src:'kill @e[tag=autotest.victim,limit=1]',pred:'minecraft:player_head[minecraft:item_name="Anemone"]',any:'minecraft:player_head',id:'minecraft:player_head'}
scoreboard players set #n autotest 132
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-2 tropical fish: Anemone (rate 10.0%)",who:"#hits",lo:1,hi:36}
function autotest:lib/check_same {id:"LOOT-2 tropical fish: Anemone (no other head)"}
