data modify block 40004 280 39988 Items set value []
$$(as)loot insert 40004 280 39988 $(src)
$execute if items block 40004 280 39988 container.* $(pred) run scoreboard players add #hits autotest 1
$execute if items block 40004 280 39988 container.* $(any) run scoreboard players add #all autotest 1
$execute store result score #c autotest run data get block 40004 280 39988 Items[{id:"$(id)"}].count
scoreboard players operation #max autotest > #c autotest
scoreboard players operation #min autotest < #c autotest
scoreboard players remove #n autotest 1
execute if score #n autotest matches 1.. run function autotest:lib/roll with storage autotest:q roll
