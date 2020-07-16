# Desc: All commands here run every tick
#
# Called by: main:tick

execute as @e[type=minecraft:wandering_trader,tag=!trade_items_spawned] at @s run function wt:setup_trade_index_items

# Amount of block trades
execute as @e[type=minecraft:wandering_trader,tag=!has_new_block_trades] at @s run scoreboard players set @s math_input1 5
execute as @e[type=minecraft:wandering_trader,tag=!has_new_block_trades] at @s run scoreboard players set @s math_input2 7
execute as @e[type=minecraft:wandering_trader,tag=!has_new_block_trades] at @s run function math:random
execute as @e[type=minecraft:wandering_trader,tag=!has_new_block_trades] at @s run function wt:provide_block_trades

# Amount of hermit trades
execute as @e[type=minecraft:wandering_trader,tag=!has_new_hermit_trades] at @s run scoreboard players set @s math_input1 1
execute as @e[type=minecraft:wandering_trader,tag=!has_new_hermit_trades] at @s run scoreboard players set @s math_input2 3
execute as @e[type=minecraft:wandering_trader,tag=!has_new_hermit_trades] at @s run function math:random
execute as @e[type=minecraft:wandering_trader,tag=!has_new_hermit_trades] at @s[tag=has_new_block_trades] run function wt:provide_hermit_trades

effect give @e[type=minecraft:wandering_trader,tag=!has_new_trades] minecraft:slowness 1 255 true

execute as @e[type=minecraft:wandering_trader,tag=has_new_trades] at @s run kill @e[type=minecraft:item,tag=trade_index_item,limit=2,sort=nearest,distance=..0.5]