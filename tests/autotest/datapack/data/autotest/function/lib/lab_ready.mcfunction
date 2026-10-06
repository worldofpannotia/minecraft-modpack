fill 39999 279 39986 40009 279 39990 minecraft:stone
fill 39999 280 39986 40009 282 39990 minecraft:air
setblock 40004 280 39988 minecraft:chest
tellraw @a {"text":"[autotest] lab ready, running tests...","color":"gray"}
schedule function autotest:lib/next 5t
