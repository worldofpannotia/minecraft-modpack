#Kill the nearest oak sapling item within a distance of 1 block#
kill @e[type=item,distance=..1,nbt={Item:{id:"minecraft:oak_sapling",Count:1b},Age:0s},sort=nearest]

#Kill self#
kill @s

#Summons the sapling item#
summon item ~ ~ ~ {Motion: [0.0d, 0.1d, 0.0d], Item: {id: "minecraft:item_frame", Count: 1b, tag: {EntityTag: {Invulnerable: 1b, Invisible: 1b, Tags: ["Apple_Seeds"], Fixed: 1b}, CustomModelData: 3088, display: {Name: '{"text":"Apple Sapling","italic":false}'}}}}