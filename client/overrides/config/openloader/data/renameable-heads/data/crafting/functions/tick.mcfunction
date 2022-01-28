execute as @e[type=minecraft:item,tag=!checked2,nbt={Item:{id:"minecraft:player_head"}}] at @s if score REconfig RERenamePlayer matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked2"]
execute as @e[type=minecraft:item,tag=!checked2,nbt={Item:{id:"minecraft:player_head"}}] at @s if score REconfig RERenamePlayer matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run function crafting:check_player

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:skeleton_skull"}}] at @s if score REconfig RERenameSkeleton matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:skeleton_skull"}}] at @s if score REconfig RERenameSkeleton matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run function crafting:check_skeleton

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:zombie_head"}}] at @s if score REconfig RERenameZombie matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:zombie_head"}}] at @s if score REconfig RERenameZombie matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run function crafting:check_zombie

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] at @s if score REconfig RERenameWither matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] at @s if score REconfig RERenameWither matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run function crafting:check_wither

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:creeper_head"}}] at @s if score REconfig RERenameCreeper matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:creeper_head"}}] at @s if score REconfig RERenameCreeper matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run function crafting:check_creeper

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dragon_head"}}] at @s if score REconfig RERenameDragon matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dragon_head"}}] at @s if score REconfig RERenameDragon matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run function crafting:check_dragon


execute as @e[type=minecraft:item,tag=!checked2,nbt={Item:{id:"minecraft:player_head"}}] at @s if score REconfig RERenamePlayer matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked2"]
execute as @e[type=minecraft:item,tag=!checked2,nbt={Item:{id:"minecraft:player_head"}}] at @s if score REconfig RERenamePlayer matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run function crafting:check_player

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:skeleton_skull"}}] at @s if score REconfig RERenameSkeleton matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:skeleton_skull"}}] at @s if score REconfig RERenameSkeleton matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run function crafting:check_skeleton

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:zombie_head"}}] at @s if score REconfig RERenameZombie matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:zombie_head"}}] at @s if score REconfig RERenameZombie matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run function crafting:check_zombie

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] at @s if score REconfig RERenameWither matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] at @s if score REconfig RERenameWither matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run function crafting:check_wither

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:creeper_head"}}] at @s if score REconfig RERenameCreeper matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:creeper_head"}}] at @s if score REconfig RERenameCreeper matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run function crafting:check_creeper

execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dragon_head"}}] at @s if score REconfig RERenameDragon matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run data modify entity @s Tags set value ["unchecked"]
execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:dragon_head"}}] at @s if score REconfig RERenameDragon matches 1 if entity @e[type=minecraft:item,distance=..0.5,tag=!empty,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] run function crafting:check_dragon


execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:writable_book",Count:1b}}] at @s if block ~ ~ ~ minecraft:player_head run function crafting:check_type


execute as @e[type=minecraft:item,nbt={Item:{id:"minecraft:paper",Count:1b,tag:{display:{Name:'{"text":"New Page"}'}}}}] at @s if score REconfig REErasableBooks matches 1 if entity @e[type=minecraft:item,distance=..0.5,nbt={Item:{id:"minecraft:written_book",Count:1b}}] run function crafting:book_eraser