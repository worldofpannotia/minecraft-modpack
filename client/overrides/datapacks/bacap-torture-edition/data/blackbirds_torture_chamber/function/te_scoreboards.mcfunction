tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","translate":"Torture Scoreboards"}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute if score @s killed_aaaaaaa matches 0.. run tellraw @s {"color":"white","translate":"Screaming goats killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"killed_aaaaaaa"}}]}

execute if score @s consistency matches 0.. run tellraw @s {"color":"white","translate":"Witches killed with splash potions:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"consistency"}}]}

execute if score @s halloween_count matches 0.. run tellraw @s {"color":"white","translate":"Jack o'Lantern mobs killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"halloween_count"}}]}

execute if score @s jockey_exterminator matches 0.. run tellraw @s {"color":"white","translate":"Jockeys killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"jockey_exterminator"}}]}

execute if score @s taiga_nitwit matches 0.. run tellraw @s {"color":"white","translate":"Taiga nitwits killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"taiga_nitwit"}}]}
execute if score @s swamp_nitwit matches 0.. run tellraw @s {"color":"white","translate":"Swamp nitwits killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"swamp_nitwit"}}]}
execute if score @s plains_nitwit matches 0.. run tellraw @s {"color":"white","translate":"Plains nitwits killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"plains_nitwit"}}]}
execute if score @s desert_nitwit matches 0.. run tellraw @s {"color":"white","translate":"Desert nitwits killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"desert_nitwit"}}]}
execute if score @s savanna_nitwit matches 0.. run tellraw @s {"color":"white","translate":"Savanna nitwits killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"savanna_nitwit"}}]}
execute if score @s snow_nitwit matches 0.. run tellraw @s {"color":"white","translate":"Snow nitwits killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"snow_nitwit"}}]}
execute if score @s jungle_nitwit matches 0.. run tellraw @s {"color":"white","translate":"Jungle nitwits killed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"jungle_nitwit"}}]}

execute if score @s cure_zillagers matches 0.. run tellraw @s {"color":"white","translate":"Total zombie villagers cured:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"cure_zillagers"}}]}

execute if score @s washing_total matches 1.. run tellraw @s {"color":"white","translate":"Total things washed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"washing_total"}}]}

execute if score @s totem_used_stats matches 0.. run tellraw @s {"color":"white","translate":"Totem of Undying used:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"totem_used_stats"}}]}

execute if score @s fish_count matches 0.. run tellraw @s {"color":"white","translate":"Times fished:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"fish_count"}}]}

execute if score @s aviateed_10k_km matches 1.. run scoreboard players set @s total_distance_elytra 0
execute if score @s aviateed_10k_km matches 1.. run scoreboard players operation @s total_distance_elytra += @s aviateed_10k_km
execute if score @s aviateed_10k_km matches 1.. run scoreboard players set @s multiplier_elytra 10000
execute if score @s aviateed_10k_km matches 1.. run scoreboard players operation @s total_distance_elytra *= @s multiplier_elytra
execute if score @s aviateed_10k_km matches 1.. run scoreboard players set @s decimals_elytra 0
execute if score @s aviateed_10k_km matches 1.. run scoreboard players operation @s decimals_elytra += @s aviateing
execute if score @s aviateed_10k_km matches 1.. run scoreboard players set @s multiplier_elytra 100000
execute if score @s aviateed_10k_km matches 1.. run scoreboard players operation @s decimals_elytra /= @s multiplier_elytra
execute if score @s aviateed_10k_km matches 1.. run scoreboard players operation @s total_distance_elytra += @s decimals_elytra
execute if score @s aviateed_10k_km matches 1.. run tellraw @s {"color":"white","translate":"Total distance flown by Elytra (km):","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"total_distance_elytra"}}]}

execute if score @s startrekkin matches 0.. run tellraw @s {"color":"white","translate":"Enderpearls used:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"startrekkin"}}]}

execute if score @s breed_brown_panda matches 0.. run tellraw @s {"color":"white","translate":"Brown pandas bred:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"breed_brown_panda"}}]}

execute if score @s suffer matches 0.. run tellraw @s {"color":"white","translate":"Large ferns composted:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"suffer"}}]}
execute if score @s suffer2 matches 0.. run tellraw @s {"color":"white","translate":"Tall grass composted:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"suffer2"}}]}

execute if score @s[advancements={blackbirds_torture_chamber:riddle/9=true}] warped_button_2 matches 0.. run tellraw @s {"color":"white","translate":"Warped buttons placed:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"warped_button_2"}}]}

execute if score @s bac_warden_count matches 0.. run tellraw @s {"color":"white","translate":"Wardens within 16 blocks:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"bac_warden_count"}}]}
execute if score @s bac_ten_withers matches 0.. run tellraw @s {"color":"white","translate":"Withers within 128 blocks:","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"bac_ten_withers"}}]}


tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s te_scoreboards 0
scoreboard players enable @a te_scoreboards
