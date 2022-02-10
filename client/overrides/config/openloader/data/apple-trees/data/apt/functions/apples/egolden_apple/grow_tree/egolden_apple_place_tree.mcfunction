##2 Leaves##

execute as @s[scores={NUMEGATree=0}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/2leaves_egapple_tree-1"}

execute as @s[scores={NUMEGATree=1}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/2leaves_egapple_tree-2"}

##4 Leaves##
execute as @s[scores={NUMEGATree=2}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/4leaves_egapple_tree-1"}

execute as @s[scores={NUMEGATree=3}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/4leaves_egapple_tree-2"}

##6 Leaves##
execute as @s[scores={NUMEGATree=4}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/6leaves_egapple_tree-1"}

execute as @s[scores={NUMEGATree=5}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/6leaves_egapple_tree-2"}

##8 Leaves##
execute as @s[scores={NUMEGATree=6}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/8leaves_egapple_tree-1"}

execute as @s[scores={NUMEGATree=7}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/8leaves_egapple_tree-2"}

##10 Leaves##
execute as @s[scores={NUMEGATree=8}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/10leaves_egapple_tree-1"}

execute as @s[scores={NUMEGATree=9}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/10leaves_egapple_tree-2"}

##12 Leaves##
execute as @s[scores={NUMEGATree=10}] at @s run setblock ~ ~ ~ structure_block{rotation:"NONE",posX:-2,mode:"LOAD",posY:0,sizeX:5,posZ: -2,name:"minecraft:apple_tree/egapple_tree/all_leaves_egapple_tree"}

summon falling_block ~ ~0.85 ~ {BlockState:{Name:"minecraft:redstone_block"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["Redstone_kill_me"]}