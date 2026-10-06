schedule function autotest:lib/next 1t
kill @e[tag=autotest.victim]
setblock 40007 280 39988 minecraft:brown_mushroom_block
data modify storage autotest:q roll set value {as:'',src:'mine 40007 280 39988 minecraft:iron_axe[enchantments={"minecraft:silk_touch":1}]',pred:'minecraft:brown_mushroom_block',any:'minecraft:brown_mushroom_block',id:'minecraft:brown_mushroom_block'}
scoreboard players set #n autotest 20
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-21 brown mushroom block: Silk Touch drops the block",who:"#hits",lo:20,hi:20}
