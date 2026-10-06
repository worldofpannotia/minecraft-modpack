schedule function autotest:lib/next 1t
kill @e[tag=autotest.victim]
setblock 40007 280 39988 minecraft:ancient_debris
data modify storage autotest:q roll set value {as:'',src:'mine 40007 280 39988 minecraft:diamond_pickaxe[enchantments={"minecraft:fortune":3}]',pred:'minecraft:netherite_scrap',any:'minecraft:netherite_scrap',id:'minecraft:netherite_scrap'}
scoreboard players set #n autotest 200
scoreboard players set #hits autotest 0
scoreboard players set #all autotest 0
scoreboard players set #max autotest 0
scoreboard players set #min autotest 999
function autotest:lib/roll with storage autotest:q roll
function autotest:lib/check_score {id:"LOOT-20 Fortune III: some break gives 2+ scrap",who:"#max",lo:2,hi:64}
