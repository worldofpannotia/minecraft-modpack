schedule function autotest:lib/next 1t
kill @e[tag=autotest.victim]
setblock 40007 280 39988 minecraft:jungle_leaves
data modify storage autotest:q roll set value {as:'',src:'mine 40007 280 39988 minecraft:iron_sword',pred:'minecraft:jungle_sapling',any:'minecraft:jungle_sapling',id:'minecraft:jungle_sapling'}
scoreboard players set #n autotest 3000
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-22 jungle leaves: ~5% saplings",who:"#hits",lo:90,hi:224}
