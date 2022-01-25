clear @s knowledge_book 1
give @s silverfish_spawn_egg{CustomModelData:4765872,display:{Name:'[{"text":"Padlock","italic":false,"color":"gold"}]'},EntityTag:{id:"minecraft:armor_stand",Count:1,Marker:1,Invulnerable:1,Invisible:1,NoGravity:1,ShowArms:1,Silent:1,Small:1,Tags:["padlock","new","closed"],ArmorItems:[{},{},{},{id:"minecraft:silverfish_spawn_egg",Count:1b,tag:{Key:0,CustomModelData:4765872,display:{Name:'[{"text":"Padlock","italic":false,"color":"gold"}]'}}}]}}
advancement revoke @s only fn:craft_padlock
recipe take @s fn:padlock
