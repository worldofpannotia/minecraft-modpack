execute as @e[type=minecraft:wandering_trader,tag=!entrimmed,sort=nearest,limit=1] run function vb:trimtrader/entrim
schedule function vb:trimtrader/trim_trader 120s