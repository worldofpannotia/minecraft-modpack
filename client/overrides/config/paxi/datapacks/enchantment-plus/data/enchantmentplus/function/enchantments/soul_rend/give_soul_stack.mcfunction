# Give Soul Stack
damage @s 1 enchantmentplus:life_drain
scoreboard players add @s eplus.soul_stacks 1

# Set Base Max Stacks If Not Exists
execute unless score @s eplus.max_soul_stacks matches ..2147483647 run scoreboard players set @s eplus.max_soul_stacks 5

# Sound
execute if score @s eplus.soul_stacks matches 1 run return run playsound minecraft:block.note_block.flute player @s ~ ~ ~ 0.6 0.5
execute if score @s eplus.soul_stacks matches 2 run return run playsound minecraft:block.note_block.flute player @s ~ ~ ~ 0.6 0.7
execute if score @s eplus.soul_stacks matches 3 run return run playsound minecraft:block.note_block.flute player @s ~ ~ ~ 0.6 0.9
execute if score @s eplus.soul_stacks matches 4 run return run playsound minecraft:block.note_block.flute player @s ~ ~ ~ 0.6 1.1
execute if score @s eplus.soul_stacks matches 5.. run return run playsound minecraft:block.note_block.flute player @s ~ ~ ~ 0.6 1.3