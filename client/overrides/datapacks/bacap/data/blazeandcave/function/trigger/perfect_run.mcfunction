tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=false,blazeandcave:technical/spawn_perfect_one=false}] run tellraw @s {"color":"red","translate":"You are currently not eligible to achieve The Perfect Run!"}

execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=false,blazeandcave:technical/spawn_perfect_one=true,blazeandcave:technical/spawn_perfect_all=false}] run tellraw @s {"translate":"You are in the process of starting The Perfect Run! You have %1$s seconds to finish starting it!","with":[{"color":"gold","score":{"name":"@s","objective":"bac_pr_tl"}}]}
execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=false,blazeandcave:technical/spawn_perfect_one=true,blazeandcave:technical/spawn_perfect_all={dragon=false}}] run tellraw @s {"color":"gray","italic":true,"translate":"The Ender Dragon has not yet been summoned. It is counted as summoned once the Ender Dragon bossbar has appeared."}
execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=false,blazeandcave:technical/spawn_perfect_one=true,blazeandcave:technical/spawn_perfect_all={wither=false}}] run tellraw @s {"color":"gray","italic":true,"translate":"The Wither has not yet been summoned. It is counted as summoned immediately after summoning it."}
execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=false,blazeandcave:technical/spawn_perfect_one=true,blazeandcave:technical/spawn_perfect_all={raid=false}}] run tellraw @s {"color":"gray","italic":true,"translate":"A raid has not yet been started. It is counted as started once the Raid bossbar has appeared."}

execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=false,blazeandcave:technical/spawn_perfect_all=true}] run tellraw @s {"color":"green","translate":"You are currently eligible to achieve The Perfect Run!"}
execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=false,blazeandcave:technical/spawn_perfect_all=true}] run tellraw @s {"translate":"You need to defeat the following without taking damage:"}
execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=false,blazeandcave:technical/spawn_perfect_all=true,blazeandcave:challenges/the_perfect_run={dragon=false}}] run tellraw @s {"text":" ","extra":[{"color":"gray","translate":"entity.minecraft.ender_dragon"}]}
execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=false,blazeandcave:technical/spawn_perfect_all=true,blazeandcave:challenges/the_perfect_run={wither=false}}] run tellraw @s {"text":" ","extra":[{"color":"gray","translate":"entity.minecraft.wither"}]}
execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=false,blazeandcave:technical/spawn_perfect_all=true,blazeandcave:challenges/the_perfect_run={raid=false}}] run tellraw @s {"text":" ","extra":[{"color":"gray","translate":"event.minecraft.raid"}]}

execute if entity @s[advancements={blazeandcave:challenges/the_perfect_run=true}] run tellraw @s {"color":"gold","translate":"You have completed The Perfect Run! Good on ya, mate!"}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

scoreboard players set @s bac_perfect_run 0
