function blazeandcave:advancement/count/copper_golem
function blazeandcave:advancement/count/sheep
function blazeandcave:advancement/count/creaking
function blazeandcave:advancement/count/wardens

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","translate":"Advancement Progress"}
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute if score @s[advancements={blazeandcave:mining/copper_golem_overlord=false},predicate=blazeandcave:equipment/full_copper_armor] bac_copper_golem_count matches 1.. run tellraw @s {"color":"white","translate":"Copper Golem Overlord","extra":[{"text":": "},{"color":"yellow","score":{"name":"@s","objective":"bac_copper_golem_count"}},{"color":"gold","text":"/10"}]}
execute if score @s[advancements={blazeandcave:animal/counting_sheep=false}] bac_sheep_count matches 1.. run tellraw @s {"color":"white","translate":"Counting Sheep","extra":[{"text":": "},{"color":"yellow","score":{"name":"@s","objective":"bac_sheep_count"}},{"color":"gold","text":"/100"}]}
execute if score @s[advancements={blazeandcave:biomes/le_creak_cest_chic=false}] bac_creaking_count matches 1.. run tellraw @s {"color":"white","translate":"Le creak, c'est chic","extra":[{"text":": "},{"color":"yellow","score":{"name":"@s","objective":"bac_creaking_count"}},{"color":"gold","text":"/50"}]}
execute if score @s[advancements={blazeandcave:challenges/overwarden=false}] bac_overwarden_count matches 1.. run tellraw @s {"color":"white","translate":"Overwarden","extra":[{"text":": "},{"color":"yellow","score":{"name":"@s","objective":"bac_overwarden_count"}},{"color":"gold","text":"/50"}]}

execute if score @s[advancements={blazeandcave:animal/wheres_the_honey_lebowski=false}] bac_consume_honey_bottle matches 0.. run tellraw @s {"color":"white","translate":"WHERE'S THE HONEY LEBOWSKI","extra":[{"text":": "},{"color":"yellow","score":{"name":"@s","objective":"bac_consume_honey_bottle"}},{"color":"gold","text":"/100"}]}
execute if score @s[advancements={blazeandcave:farming/certified_spud_chomper=false}] bac_consume_poisonous_potato matches 0.. run tellraw @s {"color":"white","translate":"Certified Spud Chomper","extra":[{"text":": "},{"color":"yellow","score":{"name":"@s","objective":"bac_consume_poisonous_potato"}},{"color":"gold","text":"/100"}]}
execute if score @s[advancements={blazeandcave:monsters/pupil_poppers=false}] bac_consume_spider_eye matches 0.. run tellraw @s {"color":"white","translate":"Pupil Poppers","extra":[{"text":": "},{"color":"yellow","score":{"name":"@s","objective":"bac_consume_spider_eye"}},{"color":"gold","text":"/1000"}]}
execute if score @s[advancements={blazeandcave:adventure/vault_hunter=false}] bac_vault_hunter_count matches 0.. run tellraw @s {"color":"white","translate":"Vault Hunter","extra":[{"text":": "},{"color":"yellow","score":{"name":"@s","objective":"bac_vault_hunter_count"}},{"color":"gold","text":"/25"}]}
execute if score @s[advancements={blazeandcave:nether/a_piglins_best_friend=false}] bac_pigling matches 0.. run tellraw @s {"color":"white","translate":"A Piglin's Best Friend","extra":[{"text":": "},{"color":"yellow","score":{"name":"@s","objective":"bac_pigling"}},{"color":"gold","text":"/500"}]}
execute if score @s[advancements={blazeandcave:challenges/riddle_me_this=false}] bac_1000th_item_dummy matches 0.. run tellraw @s {"color":"white","translate":"Riddle Me This","extra":[{"text":": "},{"color":"yellow","score":{"name":"@s","objective":"bac_1000th_item_dummy"}},{"color":"gold","text":"/1000"}]}

function #bacap_fanpacks:progress_trigger

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s bac_progress 0
