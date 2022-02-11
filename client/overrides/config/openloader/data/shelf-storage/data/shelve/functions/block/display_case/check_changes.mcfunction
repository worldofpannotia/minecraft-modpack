scoreboard players set #checking block_status 1
data remove storage minecraft:display_case Items
data remove storage minecraft:display_frame Items
data modify storage display_case Items set from block ~ ~ ~ Items[0]
data remove storage minecraft:display_case Items.Slot
data remove storage minecraft:display_case Items.Count
execute as @s at @s positioned ~ ~1 ~ run data modify storage minecraft:display_frame Items set from entity @e[type=minecraft:item_frame,tag=display_case,limit=1,sort=nearest,distance=..2] Item
data remove storage minecraft:display_frame Items.Count
execute store success score #InventoryChanged block_status run data modify storage minecraft:display_case Items set from storage minecraft:display_frame Items
execute if score #InventoryChanged block_status matches 1 run execute at @a as @e[type=minecraft:armor_stand,tag=display_case,distance=..6] at @s positioned ~ ~1 ~ as @e[type=minecraft:item_frame,tag=display_case,limit=1,sort=nearest,distance=..1] run data modify entity @s Item set from block ~ ~-1 ~ Items[0]
execute if score #InventoryChanged block_status matches 1 run execute at @a as @e[type=minecraft:armor_stand,tag=display_case,distance=..6,nbt={Pose: {Head: [0.0f, 0.0f, 0.0f]}}] at @s positioned ~ ~1 ~ as @e[type=minecraft:item_frame,tag=display_case,limit=1,sort=nearest,distance=..1] run data modify entity @s ItemRotation set value 0
execute if score #InventoryChanged block_status matches 1 run execute at @a as @e[type=minecraft:armor_stand,tag=display_case,distance=..6,nbt={Pose: {Head: [0.0f, 90.0f, 0.0f]}}] at @s positioned ~ ~1 ~ as @e[type=minecraft:item_frame,tag=display_case,limit=1,sort=nearest,distance=..1] run data modify entity @s ItemRotation set value 2
execute if score #InventoryChanged block_status matches 1 run execute at @a as @e[type=minecraft:armor_stand,tag=display_case,distance=..6,nbt={Pose: {Head: [0.0f, 180.0f, 0.0f]}}] at @s positioned ~ ~1 ~ as @e[type=minecraft:item_frame,tag=display_case,limit=1,sort=nearest,distance=..1] run data modify entity @s ItemRotation set value 4
execute if score #InventoryChanged block_status matches 1 run execute at @a as @e[type=minecraft:armor_stand,tag=display_case,distance=..6,nbt={Pose: {Head: [0.0f, 270.0f, 0.0f]}}] at @s positioned ~ ~1 ~ as @e[type=minecraft:item_frame,tag=display_case,limit=1,sort=nearest,distance=..1] run data modify entity @s ItemRotation set value 6
scoreboard players set #InventoryChanged block_status 0
scoreboard players set #checking block_status 0