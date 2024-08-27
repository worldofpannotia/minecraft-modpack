#> pk_be_it:settings/display_nameplates/false

# Cancel process if setting is already set on the attempted value
execute unless score $pk.be_it.settings.visible_when_empty pk.value matches 1 run tellraw @s [{"text":"Setting \"","color":"red"},{"text":"Visible When Empty","color":"yellow"},{"text":"\" is already set to ","color":"red"},{"text":"false","color":"yellow"}]
execute if score $pk.be_it.settings.visible_when_empty pk.value matches 1 run tellraw @s [{"text":"Setting \"","color":"gray"},{"text":"Visible When Empty","color":"yellow"},{"text":"\" has been set to ","color":"gray"},{"text":"false","color":"yellow"}]

# Update the setting's value
scoreboard players set $pk.be_it.settings.visible_when_empty pk.value 0

# Stop process
schedule clear pk_be_it:core/item_frame/settings/visible_when_empty/tick