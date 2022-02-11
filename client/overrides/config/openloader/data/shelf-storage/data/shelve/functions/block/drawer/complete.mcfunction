execute as @s at @s run setblock ~ ~ ~ minecraft:hopper
execute as @s at @s run data merge block ~ ~ ~ {CustomName:'{"text":"Drawer"}',TransferCooldown:999999999,Unique:1}
