execute as @s[advancements={blackbirds_torture_chamber:riddle/9=true,blackbirds_torture_chamber:riddle/10=false}] at @s run scoreboard players add @s warped_button_2 1
execute as @s[advancements={blackbirds_torture_chamber:riddle/9=true,blackbirds_torture_chamber:riddle/10=false}] at @s if score @s warped_button_2 matches 1000000.. run advancement grant @s only blackbirds_torture_chamber:stuff/riddle_me_this_2 10
execute as @s[advancements={blackbirds_torture_chamber:riddle/9=true,blackbirds_torture_chamber:riddle/10=false}] at @s if score @s warped_button_2 matches 1000000.. run advancement grant @s only blackbirds_torture_chamber:riddle/10

execute as @s[advancements={blackbirds_torture_chamber:riddle/10=false}] run advancement revoke @s only blackbirds_torture_chamber:technical/make_riddle_10_work

execute as @s[advancements={blackbirds_torture_chamber:riddle/10=true}] run tellraw @s {"text":"Tenth line completed","color":"gray","italic":true}
