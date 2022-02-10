###Under###
	#Grass Block#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:grass_block run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Dirt#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:dirt run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Coarse Dirt#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:coarse_dirt run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Podzol#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:podzol run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Rooted Dirt#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:rooted_dirt run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Moss Block#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:moss_block run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds


###At###
	#Grass#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:grass positioned ~ ~-1 ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Fern#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:fern positioned ~ ~-1 ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Dead Bush#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:dead_bush positioned ~ ~-1 ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Crimson Roots#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:crimson_roots positioned ~ ~-1 ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Warped Roots#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:warped_roots positioned ~ ~-1 ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Nether Sprouts#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:nether_sprouts positioned ~ ~-1 ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Vine#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:vine positioned ~ ~-1 ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Glow Lichen#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:glow_lichen positioned ~ ~-1 ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Fire#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ air if block ~ ~-1 ~ minecraft:fire positioned ~ ~-1 ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Water#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ minecraft:water positioned ~ ~ ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds

	#Lava#
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s if block ~ ~ ~ minecraft:lava positioned ~ ~ ~ run function apt:apples/egolden_apple/seeds/place_egolden_apple_seeds



##If block is sapling, stripped log, or structure block; kill item frame and give seeds##
execute as @e[type=minecraft:armor_stand,tag=EGolden_Apple_Seeds_Stand] at @s unless block ~ ~ ~ minecraft:oak_sapling unless block ~ ~ ~ minecraft:stripped_oak_log unless block ~ ~ ~ minecraft:structure_block run function apt:apples/egolden_apple/seeds/break_egolden_apple_seeds

##If block is stripped log; kill item frame delete block items##
execute as @e[type=minecraft:armor_stand,tag=EGolden_Apple_Seeds_Stand] at @s if block ~ ~ ~ minecraft:stripped_oak_log run function apt:apples/break_delete_apple_seeds

##If test before didn't work; spawn seeds back##
execute as @e[type=minecraft:item_frame,tag=EGolden_Apple_Seeds] at @s run function apt:apples/egolden_apple/seeds/break_give_egolden_apple_seeds

##If block is grown sapling; pick tree size##
execute as @e[type=minecraft:armor_stand,tag=EGolden_Apple_Seeds_Stand] at @s if block ~ ~ ~ minecraft:oak_sapling[stage=1] run function apt:apples/egolden_apple/grow_tree/tree_size_rng

#If player eats apple; pick if player gets seeds#
execute as @a if predicate apt:eat_egapple at @s run function apt:apples/egolden_apple/seeds/get_seed_random

