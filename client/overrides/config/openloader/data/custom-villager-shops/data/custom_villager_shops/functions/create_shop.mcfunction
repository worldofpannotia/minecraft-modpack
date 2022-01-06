# Creates the shop from the chest under the villager

particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 1
function custom_villager_shops:get_coords

scoreboard players operation @s vs_x -= @p vs_x
scoreboard players operation @s vs_z -= @p vs_z

function custom_villager_shops:position_villager

execute if entity @s[tag=!vs_villager] run tellraw @p[scores={vs_sneak=1..}] {"text":"Villager trades initialized!","color":"yellow"}
tag @s add vs_villager
data merge entity @s {VillagerData:{profession:"minecraft:nitwit",level:5,biome:"minecraft:plains"},Offers:{Recipes:[{maxUses:2147483647,xp:0,rewardExp:0b,buy:{id:"minecraft:stick",Count:1b,tag:{unoccupied:1b}},buyB:{},sell:{id:"minecraft:oak_planks",Count:1b,tag:{unoccupied:1b}}},{maxUses:2147483647,xp:0,rewardExp:0b,buy:{id:"minecraft:stick",Count:1b,tag:{unoccupied:1b}},buyB:{},sell:{id:"minecraft:oak_planks",Count:1b,tag:{unoccupied:1b}}},{maxUses:2147483647,xp:0,rewardExp:0b,buy:{id:"minecraft:stick",Count:1b,tag:{unoccupied:1b}},buyB:{},sell:{id:"minecraft:oak_planks",Count:1b,tag:{unoccupied:1b}}},{maxUses:2147483647,xp:0,rewardExp:0b,buy:{id:"minecraft:stick",Count:1b,tag:{unoccupied:1b}},buyB:{},sell:{id:"minecraft:oak_planks",Count:1b,tag:{unoccupied:1b}}},{maxUses:2147483647,xp:0,rewardExp:0b,buy:{id:"minecraft:stick",Count:1b,tag:{unoccupied:1b}},buyB:{},sell:{id:"minecraft:oak_planks",Count:1b,tag:{unoccupied:1b}}},{maxUses:2147483647,xp:0,rewardExp:0b,buy:{id:"minecraft:stick",Count:1b,tag:{unoccupied:1b}},buyB:{},sell:{id:"minecraft:oak_planks",Count:1b,tag:{unoccupied:1b}}},{maxUses:2147483647,xp:0,rewardExp:0b,buy:{id:"minecraft:stick",Count:1b,tag:{unoccupied:1b}},buyB:{},sell:{id:"minecraft:oak_planks",Count:1b,tag:{unoccupied:1b}}},{maxUses:2147483647,xp:0,rewardExp:0b,buy:{id:"minecraft:stick",Count:1b,tag:{unoccupied:1b}},buyB:{},sell:{id:"minecraft:oak_planks",Count:1b,tag:{unoccupied:1b}}},{maxUses:2147483647,xp:0,rewardExp:0b,buy:{id:"minecraft:stick",Count:1b,tag:{unoccupied:1b}},buyB:{},sell:{id:"minecraft:oak_planks",Count:1b,tag:{unoccupied:1b}}}]}}

execute if data block ~ ~ ~ Items[{Slot:0b}] run data modify entity @s Offers.Recipes[0].buy set from block ~ ~ ~ Items[{Slot:0b}]
execute if data block ~ ~ ~ Items[{Slot:9b}] run data modify entity @s Offers.Recipes[0].buyB set from block ~ ~ ~ Items[{Slot:9b}]
execute if data block ~ ~ ~ Items[{Slot:18b}] run data modify entity @s Offers.Recipes[0].sell set from block ~ ~ ~ Items[{Slot:18b}]

execute if data block ~ ~ ~ Items[{Slot:1b}] run data modify entity @s Offers.Recipes[1].buy set from block ~ ~ ~ Items[{Slot:1b}]
execute if data block ~ ~ ~ Items[{Slot:10b}] run data modify entity @s Offers.Recipes[1].buyB set from block ~ ~ ~ Items[{Slot:10b}]
execute if data block ~ ~ ~ Items[{Slot:19b}] run data modify entity @s Offers.Recipes[1].sell set from block ~ ~ ~ Items[{Slot:19b}]

execute if data block ~ ~ ~ Items[{Slot:2b}] run data modify entity @s Offers.Recipes[2].buy set from block ~ ~ ~ Items[{Slot:2b}]
execute if data block ~ ~ ~ Items[{Slot:11b}] run data modify entity @s Offers.Recipes[2].buyB set from block ~ ~ ~ Items[{Slot:11b}]
execute if data block ~ ~ ~ Items[{Slot:20b}] run data modify entity @s Offers.Recipes[2].sell set from block ~ ~ ~ Items[{Slot:20b}]

execute if data block ~ ~ ~ Items[{Slot:3b}] run data modify entity @s Offers.Recipes[3].buy set from block ~ ~ ~ Items[{Slot:3b}]
execute if data block ~ ~ ~ Items[{Slot:12b}] run data modify entity @s Offers.Recipes[3].buyB set from block ~ ~ ~ Items[{Slot:12b}]
execute if data block ~ ~ ~ Items[{Slot:21b}] run data modify entity @s Offers.Recipes[3].sell set from block ~ ~ ~ Items[{Slot:21b}]

execute if data block ~ ~ ~ Items[{Slot:4b}] run data modify entity @s Offers.Recipes[4].buy set from block ~ ~ ~ Items[{Slot:4b}]
execute if data block ~ ~ ~ Items[{Slot:13b}] run data modify entity @s Offers.Recipes[4].buyB set from block ~ ~ ~ Items[{Slot:13b}]
execute if data block ~ ~ ~ Items[{Slot:22b}] run data modify entity @s Offers.Recipes[4].sell set from block ~ ~ ~ Items[{Slot:22b}]

execute if data block ~ ~ ~ Items[{Slot:5b}] run data modify entity @s Offers.Recipes[5].buy set from block ~ ~ ~ Items[{Slot:5b}]
execute if data block ~ ~ ~ Items[{Slot:14b}] run data modify entity @s Offers.Recipes[5].buyB set from block ~ ~ ~ Items[{Slot:14b}]
execute if data block ~ ~ ~ Items[{Slot:23b}] run data modify entity @s Offers.Recipes[5].sell set from block ~ ~ ~ Items[{Slot:23b}]

execute if data block ~ ~ ~ Items[{Slot:6b}] run data modify entity @s Offers.Recipes[6].buy set from block ~ ~ ~ Items[{Slot:6b}]
execute if data block ~ ~ ~ Items[{Slot:15b}] run data modify entity @s Offers.Recipes[6].buyB set from block ~ ~ ~ Items[{Slot:15b}]
execute if data block ~ ~ ~ Items[{Slot:24b}] run data modify entity @s Offers.Recipes[6].sell set from block ~ ~ ~ Items[{Slot:24b}]

execute if data block ~ ~ ~ Items[{Slot:7b}] run data modify entity @s Offers.Recipes[7].buy set from block ~ ~ ~ Items[{Slot:7b}]
execute if data block ~ ~ ~ Items[{Slot:16b}] run data modify entity @s Offers.Recipes[7].buyB set from block ~ ~ ~ Items[{Slot:16b}]
execute if data block ~ ~ ~ Items[{Slot:25b}] run data modify entity @s Offers.Recipes[7].sell set from block ~ ~ ~ Items[{Slot:25b}]

execute if data block ~ ~ ~ Items[{Slot:8b}] run data modify entity @s Offers.Recipes[8].buy set from block ~ ~ ~ Items[{Slot:8b}]
execute if data block ~ ~ ~ Items[{Slot:17b}] run data modify entity @s Offers.Recipes[8].buyB set from block ~ ~ ~ Items[{Slot:17b}]
execute if data block ~ ~ ~ Items[{Slot:26b}] run data modify entity @s Offers.Recipes[8].sell set from block ~ ~ ~ Items[{Slot:26b}]

data remove entity @s Offers.Recipes[{buy:{tag:{unoccupied:1b}}}]
data remove entity @s Offers.Recipes[{sell:{tag:{unoccupied:1b}}}]

tag @s remove vs_createShop