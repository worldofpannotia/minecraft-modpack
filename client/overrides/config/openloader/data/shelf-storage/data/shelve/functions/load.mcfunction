say reloaded shelf storage datapack!
scoreboard objectives add block_status dummy
scoreboard objectives add count dummy
scoreboard objectives add rand dummy
execute unless score #checking block_status matches 0..1 run scoreboard players set #checking block_status 0
#remove recipes
recipe take @a minecraft:shelf
advancement revoke @a only minecraft:recipes/decorations/shelf
recipe take @a minecraft:drawer
advancement revoke @a only minecraft:recipes/decorations/drawer
recipe take @a minecraft:display_case
advancement revoke @a only minecraft:recipes/decorations/display_case
recipe take @a minecraft:clay_pot
advancement revoke @a only minecraft:recipes/decorations/clay_pot