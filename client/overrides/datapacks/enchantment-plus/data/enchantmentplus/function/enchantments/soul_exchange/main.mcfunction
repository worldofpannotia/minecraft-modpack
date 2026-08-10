# Set Base Max Stacks If Not Exists
execute unless score @s eplus.max_soul_stacks matches ..2147483647 run scoreboard players set @s eplus.max_soul_stacks 5

# Give Soul Stack
execute store result score %EnchantmentLevel eplus.temp run data get entity @s equipment.legs.components."minecraft:enchantments"."enchantmentplus:soul_exchange" 2
scoreboard players remove %EnchantmentLevel eplus.temp 1
scoreboard players operation %Expected eplus.temp = @s eplus.max_soul_stacks
scoreboard players operation %Expected eplus.temp -= @s eplus.soul_stacks
execute if score %EnchantmentLevel eplus.temp > %Expected eplus.temp run scoreboard players operation %EnchantmentLevel eplus.temp = %Expected eplus.temp
execute store result storage enchantmentplus:data Macros.SoulExchangeAmount int 1 run scoreboard players get %EnchantmentLevel eplus.temp
function enchantmentplus:enchantments/soul_exchange/give_soul with storage enchantmentplus:data Macros

# Particles
particle minecraft:soul ~ ~1 ~ 0.35 0.35 0.35 0 5 normal

# Notification
title @s actionbar [{translate:"notification.enchantmentplus.souls_gathered",color:"dark_purple",fallback:"Souls Gathered: "},{score:{name:"@s",objective:"eplus.soul_stacks"},color:"gold"},{text:" | ",color:"gray"},{score:{name:"@s",objective:"eplus.max_soul_stacks"},color:"gray"}]
playsound minecraft:particle.soul_escape player @s ~ ~ ~ 0.5 1
