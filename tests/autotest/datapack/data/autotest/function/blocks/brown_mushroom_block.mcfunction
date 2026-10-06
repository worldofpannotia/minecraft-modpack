schedule function autotest:lib/next 1t
kill @e[tag=autotest.victim]
setblock 40007 280 39988 minecraft:brown_mushroom_block
data modify storage autotest:q roll set value {as:'',src:'mine 40007 280 39988 minecraft:iron_axe',pred:'minecraft:brown_mushroom',any:'minecraft:brown_mushroom',id:'minecraft:brown_mushroom'}
scoreboard players set #n autotest 600
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-21 brown mushroom block: ~40% (vanilla ~22%)",who:"#hits",lo:180,hi:314}
