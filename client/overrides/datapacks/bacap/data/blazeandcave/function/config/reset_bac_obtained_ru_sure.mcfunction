# Asks "Are you sure?"

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s [" ",{"color":"yellow","translate":"Are you sure?"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s [" ",{"color":"red","translate":"This function will stop sharing of advancements in Cooperative Mode until they are obtained again, and also reopen every advancement for the First Advancements scoreboard"}]
tellraw @s [" ",{"translate":"This function should only be used if you intend to turn off Cooperative Mode"}]
tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

tellraw @s ["",{"translate":"[ Yes ]","color":"green","click_event":{"action":"run_command","command":"/function blazeandcave:config/reset_bac_obtained"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to confirm","color":"gold"}]}}," ",{"translate":"[ No ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config/technical_settings"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}]
