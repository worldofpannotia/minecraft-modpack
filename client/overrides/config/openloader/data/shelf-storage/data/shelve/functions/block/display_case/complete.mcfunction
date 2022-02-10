execute as @s at @s run setblock ~ ~ ~ minecraft:hopper
execute as @s at @s run data merge block ~ ~ ~ {CustomName:'{"text":"Display Case"}',TransferCooldown:999999999,Unique:1}
summon minecraft:item_frame ~ ~1 ~ {Invisible:0b,Invulnerable:1b,Facing:1b,Fixed:1b,Tags:["display_case"]}