#Summons Grown Apple Armor-Stand#
summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:0b,Fire:100,HasVisualFire:0b,Small:1b,Marker:0b,Invisible:0b,Health:1f,Tags:["grown_apple"],ArmorItems:[{},{},{},{id:"minecraft:apple",Count:1b}]}

#Play sounds for popping apple#
playsound item.crop.plant block @a[distance=..16] ~ ~ ~ 1 0.8
playsound entity.item.pickup block @a[distance=..16] ~ ~ ~ 1 1
playsound block.azalea.break block @a[distance=..16] ~ ~ ~ 1.5 1

#Kill the nearest Armor-Stand with the tag AppleState within a distance of 2 blocks#
kill @e[tag=AppleState,distance=..2,sort=nearest]

#Kills self#
kill @s

#Set azalea leaves positioned 2 blocks above#
setblock ~ ~2 ~ azalea_leaves