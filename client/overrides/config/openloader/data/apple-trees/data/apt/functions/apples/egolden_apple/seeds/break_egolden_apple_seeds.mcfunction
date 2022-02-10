#Kill the nearest oak sapling item within a distance of 1 block#
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:oak_sapling",Count:1b},Age:0s}]

#Kill self#
kill @s

#Summons the seeds item#
summon item ~ ~ ~ {Motion: [0.0d, 0.1d, 0.0d], Item: {id: "minecraft:item_frame", Count: 1b, tag: {EntityTag: {Invulnerable: 1b, Invisible: 1b, Tags: ["EGolden_Apple_Seeds"], Fixed: 1b}, CustomModelData: 3089, display: {Name: '{"text":"Enchanted Golden Apple Sapling","color":"light_purple","italic":false}'}, Enchantments: [{}]}}}