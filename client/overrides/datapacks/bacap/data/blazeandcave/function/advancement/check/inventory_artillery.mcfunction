scoreboard players set @s bac_inv_artillery 0

# Counts up how many items there are
execute store result score @s bac_inv_artillery if items entity @s hotbar.* minecraft:crossbow[!minecraft:charged_projectiles=[]]

# If there are 9 loaded crossbows, the player gets Artillery
execute if entity @s[scores={bac_inv_artillery=9..}] run advancement grant @s only blazeandcave:weaponry/artillery
