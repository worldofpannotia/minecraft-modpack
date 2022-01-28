# Track Statue Health
execute as @e[tag=statue,limit=1,sort=random] store result score @s statue.health run data get entity @s Health

# Skeletons
# ----------
# Stray
execute as @e[name=!gravestones.grave,type=minecraft:armor_stand,limit=1,sort=nearest,nbt={ArmorItems: [{}, {}, {}, {id: "minecraft:skeleton_skull", Count: 1b}]}] at @s if block ~ ~-1 ~ #minecraft:ice run function vb:mob_statues/summon_stray
execute as @e[type=minecraft:stray,scores={statue.health=..199},limit=1,sort=random,tag=statue] at @s run function vb:mob_statues/kill_skeleton
# Skeleton
execute as @e[name=!gravestones.grave,type=minecraft:armor_stand,limit=1,sort=nearest,nbt={ArmorItems: [{}, {}, {}, {id: "minecraft:skeleton_skull", Count: 1b}]}] at @s run function vb:mob_statues/summon_skeleton
execute as @e[type=minecraft:skeleton,scores={statue.health=..199},limit=1,sort=random,tag=statue] at @s run function vb:mob_statues/kill_skeleton
# Wither Skeleton
execute as @e[name=!gravestones.grave,type=minecraft:armor_stand,limit=1,sort=nearest,nbt={ArmorItems: [{}, {}, {}, {id: "minecraft:wither_skeleton_skull", Count: 1b}]}] at @s run function vb:mob_statues/summon_wither_skeleton
execute as @e[type=minecraft:wither_skeleton,scores={statue.health=..199},limit=1,sort=random,tag=statue] at @s run function vb:mob_statues/kill_wither_skeleton

# Zombies
# ----------
# Husk
execute as @e[name=!gravestones.grave,type=minecraft:armor_stand,limit=1,sort=nearest,nbt={ArmorItems: [{}, {}, {}, {id: "minecraft:zombie_head", Count: 1b}]}] at @s if block ~ ~-1 ~ #minecraft:sand run function vb:mob_statues/summon_husk
execute as @e[type=minecraft:husk,scores={statue.health=..199},limit=1,sort=random,tag=statue] at @s run function vb:mob_statues/kill_zombie
# Drowned
execute as @e[name=!gravestones.grave,type=minecraft:armor_stand,limit=1,sort=nearest,nbt={ArmorItems: [{}, {}, {}, {id: "minecraft:zombie_head", Count: 1b}]}] at @s if block ~ ~ ~ minecraft:water run function vb:mob_statues/summon_drowned
execute as @e[type=minecraft:drowned,scores={statue.health=..199},limit=1,sort=random,tag=statue] at @s run function vb:mob_statues/kill_zombie
# Zombie
execute as @e[name=!gravestones.grave,type=minecraft:armor_stand,limit=1,sort=nearest,nbt={ArmorItems: [{}, {}, {}, {id: "minecraft:zombie_head", Count: 1b}]}] at @s run function vb:mob_statues/summon_zombie
execute as @e[type=minecraft:zombie,scores={statue.health=..199},limit=1,sort=random,tag=statue] at @s run function vb:mob_statues/kill_zombie

# Creeper
execute as @e[name=!gravestones.grave,type=minecraft:armor_stand,limit=1,sort=nearest,nbt={ArmorItems: [{}, {}, {}, {id: "minecraft:creeper_head", Count: 1b}]}] at @s run function vb:mob_statues/summon_creeper
execute as @e[type=minecraft:creeper,scores={statue.health=..199},limit=1,sort=random,tag=statue] at @s run function vb:mob_statues/kill_creeper

# Loop
schedule function vb:mob_statues/mob_statues 1s