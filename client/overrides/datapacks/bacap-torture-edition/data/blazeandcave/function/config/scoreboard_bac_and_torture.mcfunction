tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"yellow","bold":false,"translate":"How would you like this scoreboard to be displayed?"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Scoreboards
tellraw @s ["",{"click_event":{"action":"run_command","command":"/scoreboard objectives setdisplay list bac_and_torture_advancements"},"color":"green","text":"[ »» ]"}," ",{"translate":"On tab list"}]
tellraw @s ["",{"click_event":{"action":"run_command","command":"/scoreboard objectives setdisplay sidebar bac_and_torture_advancements"},"color":"green","text":"[ »» ]"}," ",{"translate":"On sidebar"}]
tellraw @s ["",{"click_event":{"action":"run_command","command":"/scoreboard objectives setdisplay below_name bac_and_torture_advancements"},"color":"green","text":"[ »» ]"}," ",{"translate":"Below each player's name"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/scoreboard_settings"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
