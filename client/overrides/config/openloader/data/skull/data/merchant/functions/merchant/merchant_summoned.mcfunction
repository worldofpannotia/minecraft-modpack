execute as @e[tag=trading] run data merge entity @s {Invulnerable:1b,CustomName:'{"text":"Skull Merchant","color":"green","italic":false}',VillagerData:{level:5,profession:"minecraft:cleric"}}
execute as @e[tag=trading] run playsound block.respawn_anchor.charge master @p ~ ~ ~ 1.0 1.0 0.8
execute if entity @e[tag=trading] run tellraw @s {"text":"Skull Villager summoned successfully.","color":"green","italic":false}
