# Asks "Are you sure?"

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s [" ",{"color":"red","translate":"Are you sure?"}]
tellraw @s [" ",{"translate":"Team Cooperative Mode makes it so that whenever a player gets an advancement, that advancement will be shared across all players on a team."}]
tellraw @s [" ",{"color":"gold","translate":"Everyone's currently-obtained advancements will be shared between all players on their team immediately when turning this setting on."}]
tellraw @s [" ",{"color":"red","translate":"While the mode can be turned off, shared advancements cannot be easily revoked."}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

tellraw @s ["",{"translate":"[ Yes ]","color":"green","click_event":{"action":"run_command","command":"/function blazeandcave:config/coop_on_team"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to confirm","color":"gold"}]}}," ",{"translate":"[ No ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}]
