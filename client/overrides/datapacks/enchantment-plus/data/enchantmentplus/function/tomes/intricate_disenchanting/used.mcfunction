# Revoke
advancement revoke @s only enchantmentplus:tomes/intricate_disenchanting

# Experience Requirement
execute store result score %Levels eplus.temp run xp query @s levels
execute store result score %Points eplus.temp run xp query @s points
scoreboard players set %Success eplus.temp 0
execute if score %Levels eplus.temp matches 22 if score %Points eplus.temp matches 71.. run scoreboard players add %Success eplus.temp 1
execute if score %Levels eplus.temp matches 23.. run scoreboard players add %Success eplus.temp 1
execute if entity @s[gamemode=creative] run scoreboard players add %Success eplus.temp 1
execute if score %Success eplus.temp matches 0 run return fail

# Copy Enchantments
data modify storage enchantmentplus:data Macros.TomeOfIntricateDisenchanting set from entity @s equipment.offhand.components."minecraft:enchantments"
function enchantmentplus:tomes/intricate_disenchanting/give_book with storage enchantmentplus:data Macros{}

# Remove Enchantments and Repair Cost
item modify entity @s weapon.offhand {function:"minecraft:set_components",components:{"minecraft:enchantments":{},"minecraft:repair_cost":0}}

# Remove Experience
xp add @s[gamemode=!creative] -750 points

# Remove Tome
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}

# Notification
tellraw @s {translate:"desc.enchantmentplus.tome_of_intricate_disenchanting.used",fallback:"Enchantments transferred successfully without destroying the item.",color:"green"}
playsound enchantmentplus:tome.intricate_disenchanting.used player @a
