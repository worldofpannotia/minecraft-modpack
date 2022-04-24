# Summon
summon minecraft:drowned ~ ~ ~ {Health:200f,Attributes:[{Name:generic.max_health,Base:200}],Silent:1b,DeathLootTable:"empty",NoAI:1b,Tags:["statue"],PersistenceRequired:1b,CanPickUpLoot:0b,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b}],HandDropChances:[0f,0f],ArmorDropChances:[0f,0f,0f,0f]}

# Match Rotation
execute as @s store result entity @e[tag=statue,limit=1,sort=nearest] Rotation[0] float 1 run data get entity @s Rotation[0] 1

# Remove Armour Stand
kill @s