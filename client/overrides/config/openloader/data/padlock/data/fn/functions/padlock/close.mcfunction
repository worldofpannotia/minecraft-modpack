particle crit ^ ^1 ^0.35 0.1 0.2 0.1 0 8 force
playsound minecraft:block.lantern.break master @a ~ ~ ~ 10
kill @e[tag=floating_message,sort=nearest,limit=1,distance=..1]
summon area_effect_cloud ^ ^0.7 ^0.15 {CustomName:'{"text":"Closed","color":"white"}',CustomNameVisible:1,Tags:["floating_message"],Radius:0f,Duration:30}

execute unless entity @s[nbt={HandItems:[{tag:{Id:0}}]}] run summon item ^ ^1 ^0.35 {Item:{id:"minecraft:clock",Count:1b,tag:{CustomModelData:4765872,key:1,Id:0,Enchantments:[{}],display:{Lore:['{"text":"Related","italic":"false","color":"white"}'],Name:'{"text":"Key","italic":"false","color":"gold"}'}}},Motion:[0.0d,0.2d,0.0d],Tags:["old"]}
execute unless entity @s[nbt={HandItems:[{tag:{Id:0}}]}] store result entity @e[type=item,sort=nearest,limit=1,tag=old] Item.tag.Id int 1 run data get entity @s HandItems[0].tag.Id
tag @e[type=item] remove old
data merge entity @s {HandItems:[{}]}
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get %closed Key

tag @s add closed
tag @s remove opened
