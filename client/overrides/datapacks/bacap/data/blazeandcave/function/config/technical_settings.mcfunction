tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
tellraw @s {"color":"gray","bold":false,"text":" ","extra":[{"color":"gray","bold":false,"translate":"Technical Settings"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Warning
tellraw @s {"bold":false,"text":" ","extra":[{"color":"red","bold":false,"translate":"Warning: Some of these settings may cause adverse effects on your progress, and will cause a lag-spike upon being used. Only use if you absolutely know what they do! Use with caution!"}]}

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Global Install
tellraw @s ["",{"text":"[ »» ]","color":"light_purple","click_event":{"action":"run_command","command":"/function blazeandcave:global_install"},"hover_event":{"action":"show_text","value":["",{"translate":"Properly installs Hardcore, Terralith and other add-on versions of BlazeandCave's Advancements Pack that have been placed in your world's datapacks folder by reordering datapack priorities","color":"white"},{"text":"\n"},{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Global install"}]
# Update Scoreboard
tellraw @s ["",{"text":"[ »» ]","color":"green","click_event":{"action":"run_command","command":"/function bacap_rewards:update_score"},"hover_event":{"action":"show_text","value":["",{"translate":"Goes through every advancement for every player online, and recounts how many advancements they have","color":"white"},{"text":"\n"},{"translate":"Should be used if:","color":"white"},{"text":"\n"},{"translate":"- You have recently updated to a new datapack version, especially across a new Minecraft update","color":"white"},{"text":"\n"},{"translate":"- You have been using commands to manually revoke the advancements of player(s)","color":"white"},{"text":"\n"},{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Update scoreboard"}]
# Update Team Scoreboard
tellraw @s ["",{"text":"[ »» ]","color":"aqua","click_event":{"action":"run_command","command":"/function bacap_rewards:team_score"},"hover_event":{"action":"show_text","value":["",{"translate":"Re-calculates the value of team scoreboards that draw from players' advancement and first advancement scores","color":"white"},{"text":"\n"},{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Update team scoreboards"}]
# Resets Obtained Advancements
tellraw @s ["",{"text":"[ »» ]","color":"red","click_event":{"action":"run_command","command":"/execute as @a run function blazeandcave:config/reset_bac_obtained_ru_sure"},"hover_event":{"action":"show_text","value":["",{"translate":"Resets the 'bac_obtained' scoreboard. This will make it so that Cooperative Mode will no longer see any advancements as complete and hence not share any, and also set every advancement back up for grabs for the First Advancement scoreboard","color":"white"},{"text":"\n"},{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Reset obtained advancements"}]
# Refresh Cooperative Mode sharing (only shows up if Cooperative Mode is currently on)
execute if score coop bac_settings matches 1 run tellraw @s ["",{"text":"[ »» ]","color":"yellow","click_event":{"action":"run_command","command":"/function blazeandcave:config/coop_update"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Refresh Cooperative Mode advancement sharing"}]
execute if score coop bac_settings matches 2 run tellraw @s ["",{"text":"[ »» ]","color":"yellow","click_event":{"action":"run_command","command":"/execute as @a run function blazeandcave:config/coop_update_team"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Refresh Cooperative Mode advancement sharing"}]
# Trophy granting
tellraw @s ["",{"text":"[ »» ]","color":"gold","click_event":{"action":"run_command","command":"/function blazeandcave:config/trophies_ru_sure"},"hover_event":{"action":"show_text","value":["",{"translate":"Gives every online player every trophy from advancements they have obtained so far","color":"white"},{"text":"\n"},{"translate":"This function should only be used on worlds created before the Trophy Update (BACAP 1.11) or if you really want an easy way of getting them back","color":"white"},{"text":"\n"},{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Grant missing trophies"}]
# Revoke Death Advancements
tellraw @s ["",{"text":"[ »» ]","color":"#FF2A2A","click_event":{"action":"run_command","command":"/function blazeandcave:config/hardcore_to_survival"},"hover_event":{"action":"show_text","value":["",{"translate":"Revokes all death-related advancements. This function should only be used if you die while playing in Hardcore Mode and using the Hardcore version of this datapack, but want to continue playing anyway as though it is ordinary survival.","color":"white"},{"text":"\n"},{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Revoke death advancements (Hardcore to survival)"}]
# Revoke all advancements
tellraw @s ["",{"text":"[ »» ]","color":"dark_red","click_event":{"action":"run_command","command":"/function blazeandcave:config/revoke_ru_sure"},"hover_event":{"action":"show_text","value":["",{"translate":"Revokes every advancement, including resetting scoreboards","color":"white"},{"text":"\n"},{"translate":"You may choose to revoke from either yourself, the closest player to you, or from everyone currently online","color":"white"},{"text":"\n"},{"translate":"Click to run","color":"gold"}]}}," ",{"translate":"Revoke all advancements"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}

# Go back
tellraw @s ["",{"text":"[ «« ]","color":"red","click_event":{"action":"run_command","command":"/function blazeandcave:config"},"hover_event":{"action":"show_text","value":["",{"translate":"Click to go back","color":"gold"}]}}," ",{"translate":"Go back to main config menu"}]

tellraw @s {"text":"                                             ","color":"dark_gray","strikethrough":true}
