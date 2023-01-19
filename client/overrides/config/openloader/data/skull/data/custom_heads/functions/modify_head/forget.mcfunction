data remove entity @e[type=villager,sort=nearest,limit=1,tag=skull] Offers.Recipes[-1]

tellraw @s {"text":"The last head was forgotten by the villager.","color":"#F9A602","italic":false}

advancement revoke @s only custom_heads:remove_skull
