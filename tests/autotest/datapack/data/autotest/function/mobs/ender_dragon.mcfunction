schedule function autotest:lib/next 1t
kill @e[tag=autotest.victim]
summon minecraft:ender_dragon 40001 280 39988 {NoAI:1b,Silent:1b,PersistenceRequired:1b,Tags:["autotest.victim"]}
data modify block 40004 280 39988 Items set value []
loot insert 40004 280 39988 kill @e[tag=autotest.victim,limit=1]
execute store success score #ok autotest if items block 40004 280 39988 container.* minecraft:elytra
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOOT-10 dragon drops an elytra",why:"no elytra"}
execute store success score #ok autotest if items block 40004 280 39988 container.* minecraft:dragon_egg
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOOT-10 dragon drops a dragon egg",why:"no dragon egg"}
execute store success score #ok autotest if items block 40004 280 39988 container.* minecraft:dragon_head
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOOT-10 dragon drops a dragon head",why:"no dragon head"}
data modify block 40004 280 39988 Items set value []
loot insert 40004 280 39988 kill @e[tag=autotest.victim,limit=1]
execute store success score #ok autotest if items block 40004 280 39988 container.* minecraft:elytra
execute if score #ok autotest matches 1 run scoreboard players add #pass autotest 1
execute if score #ok autotest matches 0 run function autotest:lib/fail {id:"LOOT-10 dragon drops repeat on a second kill",why:"no elytra on repeat"}
