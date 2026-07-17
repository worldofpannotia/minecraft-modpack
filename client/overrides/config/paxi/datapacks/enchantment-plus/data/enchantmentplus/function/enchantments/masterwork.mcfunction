# Revoke
advancement revoke @s only enchantmentplus:enchantments/masterwork

# Notification
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0
tellraw @s {"translate":"desc.enchantmentplus.masterwork_notification","color":"green"}

# Roll
execute store result score %Chance eplus.temp run random value 1..75

# Blessing of Kings
execute if score %Chance eplus.temp matches 1..8 run loot give @s loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:enchanted_book","functions":[{"function":"minecraft:set_enchantments","enchantments":{"enchantmentplus:blessing_of_kings":1}}]}]}]}
execute if score %Chance eplus.temp matches 9..14 run loot give @s loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:enchanted_book","functions":[{"function":"minecraft:set_enchantments","enchantments":{"enchantmentplus:blessing_of_kings":2}}]}]}]}
execute if score %Chance eplus.temp matches 15 run loot give @s loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:enchanted_book","functions":[{"function":"minecraft:set_enchantments","enchantments":{"enchantmentplus:blessing_of_kings":3}}]}]}]}

# Eternity
execute if score %Chance eplus.temp matches 16..30 run loot give @s loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:enchanted_book","functions":[{"function":"minecraft:set_enchantments","enchantments":{"enchantmentplus:eternity":1}}]}]}]}

# Hero's Landing
execute if score %Chance eplus.temp matches 31..45 run loot give @s loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:enchanted_book","functions":[{"function":"minecraft:set_enchantments","enchantments":{"enchantmentplus:heros_landing":1}}]}]}]}

# Indestructable
execute if score %Chance eplus.temp matches 46..60 run loot give @s loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:enchanted_book","functions":[{"function":"minecraft:set_enchantments","enchantments":{"enchantmentplus:indestructible":1}}]}]}]}

# Shock Dampener
execute if score %Chance eplus.temp matches 61..75 run loot give @s loot {"type":"minecraft:command","pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"minecraft:enchanted_book","functions":[{"function":"minecraft:set_enchantments","enchantments":{"enchantmentplus:shock_dampener":1}}]}]}]}