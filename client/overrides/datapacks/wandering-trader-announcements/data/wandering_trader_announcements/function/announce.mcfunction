tag @s add wandering_trader_announcements.announced
execute as @a if predicate wandering_trader_announcements:is_nearby run tellraw @s {"color":"gold","text":"A wandering trader has arrived nearby!"}
