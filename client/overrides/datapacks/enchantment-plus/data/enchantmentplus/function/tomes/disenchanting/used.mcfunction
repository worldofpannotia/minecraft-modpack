# Revoke
advancement revoke @s only enchantmentplus:tomes/disenchanting

# Experience Requirement
execute store result score %Levels eplus.temp run xp query @s levels
execute store result score %Points eplus.temp run xp query @s points
scoreboard players set %Success eplus.temp 0
execute if score %Levels eplus.temp matches 13 if score %Points eplus.temp matches 2.. run scoreboard players add %Success eplus.temp 1
execute if score %Levels eplus.temp matches 14.. run scoreboard players add %Success eplus.temp 1
execute if entity @s[gamemode=creative] run scoreboard players add %Success eplus.temp 1
execute if score %Success eplus.temp matches 0 run return fail

# Copy Enchantments
data modify storage enchantmentplus:data Macros.TomeOfDisenchanting set from entity @s equipment.offhand.components."minecraft:enchantments"
function enchantmentplus:tomes/disenchanting/give_book with storage enchantmentplus:data Macros{}

# Destroy Item
item modify entity @s weapon.offhand {function:"minecraft:set_count",count:-1,add:true}

# Remove Experience
xp add @s[gamemode=!creative] -250 points

# Remove Tome
item modify entity @s weapon.mainhand {function:"minecraft:set_count",count:-1,add:true}

# Notification
tellraw @s {translate:"desc.enchantmentplus.tome_of_disenchanting.used",fallback:"Enchantments transferred successfully, but the item was destroyed.",color:"green"}
playsound enchantmentplus:tome.disenchanting.used player @a
playsound minecraft:entity.item.break player @a
