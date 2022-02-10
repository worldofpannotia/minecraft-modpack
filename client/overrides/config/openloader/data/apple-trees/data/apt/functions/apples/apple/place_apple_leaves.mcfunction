#Kill nearest Armor-Stand tagged APT within a distance of 2 blocks#
kill @e[tag=APT,distance=..0.25,sort=nearest]

#Summon Apple Leaf Armor-Stand#
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Glowing:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["apple_leaves","APT","AppleLeaf"]}

#Set block flowering azalea leaves#
setblock ~ ~ ~ minecraft:flowering_azalea_leaves