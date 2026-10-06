schedule function autotest:lib/next 1t
kill @e[tag=autotest.victim]
setblock 40007 280 39988 minecraft:ancient_debris
data modify storage autotest:q roll set value {as:'',src:'mine 40007 280 39988 minecraft:diamond_pickaxe[enchantments={"minecraft:silk_touch":1}]',pred:'minecraft:ancient_debris',any:'minecraft:ancient_debris',id:'minecraft:ancient_debris'}
scoreboard players set #n autotest 20
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-20 Silk Touch: debris block drops",who:"#hits",lo:20,hi:20}
