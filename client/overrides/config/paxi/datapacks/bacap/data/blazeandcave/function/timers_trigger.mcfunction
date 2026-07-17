tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","translate":"Timer Progress"}
tellraw @s {"color":"gray","italic":true,"translate":"Numbers are in seconds"}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute if score @s bac_let_me_out matches 1.. run tellraw @s {"color":"white","translate":"Let Me Out","extra":[{"text":": "},{"color":"gold","score":{"name":"@s","objective":"bac_let_me_out"}}]}
execute if score @s bac_castaway matches 1.. run tellraw @s {"color":"white","translate":"Castaway","extra":[{"text":": "},{"color":"gold","score":{"name":"@s","objective":"bac_castaway"}}]}
execute if score @s bac_just_keep matches 1.. run tellraw @s {"color":"white","translate":"Just Keeps Going","extra":[{"text":": "},{"color":"gold","score":{"name":"@s","objective":"bac_just_keep"}}]}
execute if score @s bac_underwater matches 1.. run tellraw @s {"color":"white","translate":"Sleep with the Fishes","extra":[{"text":": "},{"color":"gold","score":{"name":"@s","objective":"bac_underwater"}}]}
execute if score @s bac_captain_america matches 1.. run tellraw @s {"color":"white","translate":"Captain America","extra":[{"text":": "},{"color":"gold","score":{"name":"@s","objective":"bac_captain_america"}}]}
execute if score @s bac_hh_life matches 1.. run tellraw @s {"color":"white","translate":"Half Heart Life","extra":[{"text":": "},{"color":"gold","score":{"name":"@s","objective":"bac_hh_life"}}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s bac_timers 0