#makes the announcement



#plays a sound effect for everyone within 256 blocks of the trader
playsound minecraft:entity.wandering_trader.yes ambient @a[distance=..256] ~ ~ ~ 9999


#gives the trader a glowing effect, so it is easier to locate the trader
effect give @e[type=minecraft:wandering_trader,tag=!announcement_send] minecraft:glowing 10 0 true


#shoots out a few fireworks to show the position of te trader
summon minecraft:firework_rocket ~ ~2 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3b,Explosions:[{Type:4b,Trail:1b,Colors:[I;6719955,14602026],Flicker:1b}]}}},LifeTime:20}
summon minecraft:firework_rocket ~ ~2 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3b,Explosions:[{Type:4b,Trail:1b,Colors:[I;6719955,14602026],Flicker:1b}]}}},LifeTime:30}
summon minecraft:firework_rocket ~ ~2 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3b,Explosions:[{Type:4b,Trail:1b,Colors:[I;6719955,14602026],Flicker:1b}]}}},LifeTime:40}
summon minecraft:firework_rocket ~ ~2 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3b,Explosions:[{Type:4b,Trail:1b,Colors:[I;6719955,14602026],Flicker:1b}]}}},LifeTime:50}
summon minecraft:firework_rocket ~ ~2 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Flight:3b,Explosions:[{Type:4b,Trail:1b,Colors:[I;6719955,14602026],Flicker:1b}]}}},LifeTime:60}


#decides which anouncement to play
execute at @p run loot spawn ~ ~-30 ~ loot ercerus:trader_announcements/random/announcements
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:1,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" Anyone want to trade?","color":"white"}]
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:2,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" Best items for the lowest prices!","color":"white"}]
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:3,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" Cheap Goods! Best Prices!","color":"white"}]
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:4,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" Items from all around the world!","color":"white"}]
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:5,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" Special offers!","color":"white"}]
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:6,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" My prices are the best prices!","color":"white"}]
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:7,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" Got emeralds? Because I have a way to spend them!","color":"white"}]
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:8,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" The best goods from here until the far lands!","color":"white"}]
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:9,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" Small, green and sparkly. That\'s the emeralds I seek!","color":"white"}]
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:10,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" Come and meet me, I\'ve got things to sell!","color":"white"}]
execute as @e[type=item,limit=1,sort=random,nbt={Item:{tag:{rnd:11,datapack:trader_announcements}}}] run execute at @e[type=minecraft:wandering_trader,tag=!announcement_send] run tellraw @a[distance=..256] [{"text":"<Wandering Trader>","color":"gold"},{"text":" You want it? It\'s yours my friend, as long as you have enough emeralds!","color":"white"}]
kill @e[type=item,limit=1,nbt={Item:{tag:{datapack:trader_announcements}}}]