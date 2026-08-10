# Spend Soul Stack
scoreboard players remove @s eplus.soul_stacks 5

# Sound
playsound enchantmentplus:enchant.souls.soul_rend_attack player @a

# Particles
execute anchored eyes run function enchantmentplus:enchantments/soul_rend/particles

# Notification
title @s actionbar [{translate:"notification.enchantmentplus.souls_gathered",color:"dark_purple",fallback:"Souls Gathered: "},{score:{name:"@s",objective:"eplus.soul_stacks"},color:"gold"},{text:" | ",color:"gray"},{score:{name:"@s",objective:"eplus.max_soul_stacks"},color:"gray"}]
