#gets executed every game tick



execute if entity @e[type=minecraft:wandering_trader,tag=!announcement_send] at @e[type=minecraft:wandering_trader,tag=!announcement_send] run function ercerus:trader_announcements/announcements
tag @e[type=minecraft:wandering_trader] add announcement_send