#> pk_be_it:settings/display_nameplates/true

# Cancel process if setting is already set on the attempted value
execute if score $pk.be_it.settings.visible_when_empty pk.value matches 1 run tellraw @s [{"text":"Setting \"","color":"red"},{"text":"Visible When Empty","color":"yellow"},{"text":"\" is already set to ","color":"red"},{"text":"true","color":"yellow"}]
execute unless score $pk.be_it.settings.visible_when_empty pk.value matches 1 run tellraw @s [{"text":"Setting \"","color":"gray"},{"text":"Visible When Empty","color":"yellow"},{"text":"\" has been set to ","color":"gray"},{"text":"true","color":"yellow"}]

# Update the setting's value
scoreboard players set $pk.be_it.settings.visible_when_empty pk.value 1

# Start process
function pk_be_it:core/item_frame/settings/visible_when_empty/tick