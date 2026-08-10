# Set Base Max Stacks If Not Exists
execute unless score @s eplus.max_soul_stacks matches ..2147483647 run scoreboard players set @s eplus.max_soul_stacks 5

# Give Soul Stack
damage @s 1 enchantmentplus:life_drain
scoreboard players add @s eplus.soul_stacks 1

# Particles
particle minecraft:soul ~ ~1 ~ 0.35 0.35 0.35 0 5 normal

# Notification
title @s actionbar [{translate:"notification.enchantmentplus.souls_gathered",color:"dark_purple",fallback:"Souls Gathered: "},{score:{name:"@s",objective:"eplus.soul_stacks"},color:"gold"},{text:" | ",color:"gray"},{score:{name:"@s",objective:"eplus.max_soul_stacks"},color:"gray"}]
playsound minecraft:particle.soul_escape player @s ~ ~ ~ 0.5 1
