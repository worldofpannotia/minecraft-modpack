# Enrich
function enchantmentplus:enchantments/soul_enriching/enrich with storage enchantmentplus:data Macros

# Spend Soul Stack
scoreboard players remove @s eplus.soul_stacks 5

# Sound
playsound minecraft:block.sculk.spread player @a

# Particles
particle minecraft:soul ~ ~ ~ 0.5 0.5 0.5 0 20 normal

# Notification
title @s actionbar [{translate:"notification.enchantmentplus.souls_gathered",color:"dark_purple",fallback:"Souls Gathered: "},{score:{name:"@s",objective:"eplus.soul_stacks"},color:"gold"},{text:" | ",color:"gray"},{score:{name:"@s",objective:"eplus.max_soul_stacks"},color:"gray"}]
