# Sound
playsound enchantmentplus:enchant.dashing.dash player @a

# Set Delay
scoreboard players set @s eplus.dashing_delay 300
execute store result score %EnchantmentLevel eplus.temp run data get entity @s equipment.legs.components."minecraft:enchantments"."enchantmentplus:dashing" 40
scoreboard players operation @s eplus.dashing_delay -= %EnchantmentLevel eplus.temp
execute if score @s eplus.dashing_delay matches ..4 run scoreboard players set @s eplus.dashing_delay 5
advancement revoke @s only enchantmentplus:enchantments/dashing_delay
