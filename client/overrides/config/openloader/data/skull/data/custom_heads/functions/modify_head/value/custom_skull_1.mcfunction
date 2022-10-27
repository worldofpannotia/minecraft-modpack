data modify entity @e[type=villager,sort=nearest,limit=1,tag=skull] Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,xp:0,buy:{id:"minecraft:player_head",Count:1b},buyB:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:player_head",Count:1b}}

function custom_heads:modify_head/value/custom_skull_2

advancement revoke @s only custom_heads:add_skull
