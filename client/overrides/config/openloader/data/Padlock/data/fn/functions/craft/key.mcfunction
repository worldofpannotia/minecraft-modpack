clear @s knowledge_book 1
give @s clock{CustomModelData:4765872,key:1,Id:0,display:{Lore:['{"text":"Not related","italic":"false","color":"dark_gray"}'],Name:'{"text":"Key","italic":"false","color":"gray"}'}}
advancement revoke @s only fn:craft_key
recipe take @s fn:key
