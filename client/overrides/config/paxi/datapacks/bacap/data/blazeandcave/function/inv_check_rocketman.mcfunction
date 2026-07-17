scoreboard players set @s bac_inv_check 0
scoreboard players set @s bac_inv_rocketman 0

# Counts up how many items there are
execute store result score @s bac_inv_check if items entity @s inventory.* minecraft:firework_rocket
scoreboard players operation @s bac_inv_rocketman += @s bac_inv_check
execute store result score @s bac_inv_check if items entity @s hotbar.* minecraft:firework_rocket
scoreboard players operation @s bac_inv_rocketman += @s bac_inv_check
execute store result score @s bac_inv_check if items entity @s weapon.offhand minecraft:firework_rocket
scoreboard players operation @s bac_inv_rocketman += @s bac_inv_check

# If there are 37 stacks of rockets (2368 rockets), the player gets Rocketman
execute if entity @s[scores={bac_inv_rocketman=2368..}] run advancement grant @s only blazeandcave:end/rocketman