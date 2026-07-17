scoreboard players set @s bac_inv_check 0
scoreboard players set @s bac_inv_chestful_of_cobblestone 0

# Counts up how many items there are
execute store result score @s bac_inv_check if items block ~ ~-0.5 ~ container.* minecraft:cobblestone
scoreboard players operation @s bac_inv_chestful_of_cobblestone += @s bac_inv_check

# If there are 27 stacks of cobblestone (1728 cobble), the player gets Chestful of Cobblestone
execute if entity @s[scores={bac_inv_chestful_of_cobblestone=1728..}] run advancement grant @s only blazeandcave:mining/chestful_of_cobblestone