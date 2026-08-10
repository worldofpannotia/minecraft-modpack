schedule function wandering_trader_announcements:schedule_1s 1s
execute as @e[type=minecraft:wandering_trader,tag=!wandering_trader_announcements.announced] at @s run function wandering_trader_announcements:announce
