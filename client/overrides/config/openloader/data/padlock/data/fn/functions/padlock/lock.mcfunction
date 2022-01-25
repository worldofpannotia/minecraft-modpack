kill @e[tag=floating_message,sort=nearest,limit=1,distance=..1]
summon area_effect_cloud ^ ^0.7 ^0.15 {CustomName:'{"text":"Locked","color":"red"}',CustomNameVisible:1,Tags:["floating_message"],Radius:0f,Duration:30}
execute if entity @s[nbt={HandItems:[{tag:{Id:0}}]}] run summon item ^ ^1 ^0.35 {Item:{id:"minecraft:clock",Count:1b,tag:{CustomModelData:4765872,key:1,Id:0,display:{Lore:['{"text":"Not related","italic":"false","color":"dark_gray"}'],Name:'{"text":"Key","italic":"false","color":"gray"}'}}},Motion:[0.0d,0.2d,0.0d]}
execute unless entity @s[nbt={HandItems:[{tag:{Id:0}}]}] run summon item ^ ^1 ^0.35 {Item:{id:"minecraft:clock",Count:1b,tag:{CustomModelData:4765872,key:1,Id:0,Enchantments:[{}],display:{Lore:['{"text":"Related","italic":"false","color":"white"}'],Name:'{"text":"Key","italic":"false","color":"gold"}'}}},Motion:[0.0d,0.2d,0.0d],Tags:["old"]}
execute unless entity @s[nbt={HandItems:[{tag:{Id:0}}]}] store result entity @e[tag=old,type=item,sort=nearest,limit=1] Item.tag.Id int 1 run data get entity @s HandItems[0].tag.Id
tag @e[type=item] remove old
particle smoke ^ ^1 ^0.35 0 0 0 0 10 force
playsound minecraft:block.anvil.place master @a ~ ~1 ~ 2
