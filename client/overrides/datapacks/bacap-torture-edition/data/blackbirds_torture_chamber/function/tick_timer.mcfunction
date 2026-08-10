# Hardcore Hell check for health / armor / effects
execute as @a unless score @s bac_health matches 1 run scoreboard players set @s hardcore_hell 0
execute as @a unless score @s bac_health matches 1 run scoreboard players set @s hardcore_hell2 0
execute as @a if score @s hardcore_armor matches 1.. run scoreboard players set @s hardcore_hell 0
execute as @a if score @s hardcore_armor matches 1.. run scoreboard players set @s hardcore_hell2 0
execute as @a if data entity @s active_effects run scoreboard players set @s hardcore_hell2 0

# Must Find Land check if not in water
execute as @a unless predicate {condition:"entity_properties",entity:"this",predicate:{vehicle:{entity_type:"#blazeandcave:all_boats"}}} run scoreboard players set @s must_find_land 0
execute as @a at @s unless block ~ ~ ~ water unless block ~ ~ ~ kelp unless block ~ ~ ~ seagrass unless block ~ ~ ~ tall_seagrass run scoreboard players set @s must_find_land 0

# Interactable trophies
execute as @a if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/youngling_slayer
execute as @a if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/candle_of_darkness
execute as @a if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/actual_lucky_charm
execute as @a if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/batbow
execute as @a if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/villager_nose
execute as @a if score interactable_trophies bac_settings matches 1 run function blackbirds_torture_chamber:interactable_trophies/ya_like_jazz
execute as @a if predicate blackbirds_torture_chamber:heavenly_bell run playsound minecraft:block.bell.use block @s ~ ~ ~ 100 1
execute as @a if predicate blackbirds_torture_chamber:heavenly_bell_offhand run playsound minecraft:block.bell.use block @s ~ ~ ~ 100 1

# Friends?
execute as @a store result score @s friends run execute if entity @e

# Suspicious Milk
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt={stew_effects:[{id:"minecraft:fire_resistance"}]}] run tag @s add fire_res_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt=!{stew_effects:[{id:"minecraft:fire_resistance"}]}] run tag @s remove fire_res_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt={stew_effects:[{id:"minecraft:blindness"}]}] run tag @s add blindness_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt=!{stew_effects:[{id:"minecraft:blindness"}]}] run tag @s remove blindness_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt={stew_effects:[{id:"minecraft:saturation"}]}] run tag @s add saturation_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt=!{stew_effects:[{id:"minecraft:saturation"}]}] run tag @s remove saturation_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt={stew_effects:[{id:"minecraft:nausea"}]}] run tag @s add nausea_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt=!{stew_effects:[{id:"minecraft:nausea"}]}] run tag @s remove nausea_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt={stew_effects:[{id:"minecraft:jump_boost"}]}] run tag @s add jump_boost_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt=!{stew_effects:[{id:"minecraft:jump_boost"}]}] run tag @s remove jump_boost_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt={stew_effects:[{id:"minecraft:poison"}]}] run tag @s add poison_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt=!{stew_effects:[{id:"minecraft:poison"}]}] run tag @s remove poison_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt={stew_effects:[{id:"minecraft:regeneration"}]}] run tag @s add regen_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt=!{stew_effects:[{id:"minecraft:regeneration"}]}] run tag @s remove regen_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt={stew_effects:[{id:"minecraft:night_vision"}]}] run tag @s add night_vision_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt=!{stew_effects:[{id:"minecraft:night_vision"}]}] run tag @s remove night_vision_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt={stew_effects:[{id:"minecraft:weakness"}]}] run tag @s add weakness_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt=!{stew_effects:[{id:"minecraft:weakness"}]}] run tag @s remove weakness_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt={stew_effects:[{id:"minecraft:wither"}]}] run tag @s add wither_cow
execute as @a[advancements={blackbirds_torture_chamber:stuff/suspicious_milk=false}] as @e[type=mooshroom,nbt={Type:brown}] if entity @s[nbt=!{stew_effects:[{id:"minecraft:wither"}]}] run tag @s remove wither_cow
