tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute if score @s bac_apple_days matches 0.. run tellraw @s {"translate":"You have eaten an apple every day for","extra":[{"text":" "},{"color":"gold","score":{"name":"@s","objective":"bac_apple_days"}},{"text":" "},{"translate":"days."}]}

execute if entity @s[advancements={blazeandcave:technical/consume_apple=true}] run tellraw @s {"color":"green","translate":"You have eaten an apple today."}
execute if entity @s[advancements={blazeandcave:technical/consume_apple=false}] run tellraw @s {"color":"red","translate":"You have not eaten an apple today."}
tellraw @s {"color":"gray","italic":true,"text":""}
tellraw @s {"color":"gray","italic":true,"translate":"If you have just slept, and it says you have eaten an apple when you actually haven't yet, try running this trigger again in 10 seconds."}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s bac_apple_a_day 0
