# Controls everything to do with vs

schedule function custom_villager_shops:tick 1t

execute as @a[gamemode=creative,scores={vs_sneak=1..}] at @s run function custom_villager_shops:get_coords
execute as @a[gamemode=creative,scores={vs_sneak=1..}] at @s run execute as @e[type=villager,nbt={VillagerData:{profession:"minecraft:none"}},distance=..3,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chest run function custom_villager_shops:create_shop
execute as @a[gamemode=creative,scores={vs_sneak=1..}] at @s run execute as @e[type=villager,tag=vs_villager,distance=..3,sort=nearest,limit=1] at @s if block ~ ~ ~ minecraft:chest run function custom_villager_shops:create_shop
scoreboard players set @a[scores={vs_sneak=1..}] vs_sneak 0