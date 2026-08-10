tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"yellow","bold":false,"translate":"How would you like this scoreboard to be displayed?"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Scoreboards
tellraw @s ["",{"text":"[ »» ]","color":"green","click_event":{"action":"run_command","command":"/scoreboard objectives setdisplay list bac_advfirst"}}," ",{"translate":"On tab list"}]
tellraw @s ["",{"text":"[ »» ]","color":"green","click_event":{"action":"run_command","command":"/scoreboard objectives setdisplay sidebar bac_advfirst"}}," ",{"translate":"On sidebar"}]
tellraw @s ["",{"text":"[ »» ]","color":"green","click_event":{"action":"run_command","command":"/scoreboard objectives setdisplay below_name bac_advfirst"}}," ",{"translate":"Below each player's name"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/scoreboard_settings"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back to main config menu"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
