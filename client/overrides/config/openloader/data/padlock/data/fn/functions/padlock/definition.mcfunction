execute store result entity @s ArmorItems[3].tag.Key int 1 run scoreboard players get %toAttach Key
execute store result entity @s HandItems[0].tag.Id int 1 run scoreboard players get %toAttach Key
summon item ^ ^1 ^0.35 {Item:{id:"minecraft:clock",Count:1b,tag:{CustomModelData:4765872,key:1,Id:0,Enchantments:[{}],display:{Lore:['{"text":"Related","italic":"false","color":"white"}'],Name:'{"text":"Key","italic":"false","color":"gold"}'}}},Motion:[0.0d,0.2d,0.0d]}
execute store result entity @e[type=item,sort= nearest,limit=1,nbt={Item:{tag:{key:1,Id:0}}}] Item.tag.Id int 1 run scoreboard players get %toAttach Key
data merge entity @s {HandItems:[{}]}

summon area_effect_cloud ^ ^0.7 ^0.15 {CustomName:'{"text":"Acces created!","color":"green"}',CustomNameVisible:1,Tags:["floating_message"],Radius:0f,Duration:30}
playsound minecraft:entity.player.levelup master @a ~ ~ ~ 10
particle minecraft:composter ~ ~1 ~ 0.4 0.4 0.4 0 50 force

scoreboard players add %toAttach Key 1
