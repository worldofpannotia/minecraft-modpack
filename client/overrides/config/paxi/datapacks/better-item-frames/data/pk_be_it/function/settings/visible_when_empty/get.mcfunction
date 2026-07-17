#> pk_be_it:settings/display_nameplates/get

# If false
execute unless score $pk.be_it.settings.visible_when_empty pk.value matches 1 run tellraw @s [{"text":"Setting \"","color":"gray"},{"text":"Visible When Empty","color":"yellow"},{"text":"\" is currently set to ","color":"gray"},{"text":"false","color":"yellow"}]
# If true
execute if score $pk.be_it.settings.visible_when_empty pk.value matches 1 run tellraw @s [{"text":"Setting \"","color":"gray"},{"text":"Visible When Empty","color":"yellow"},{"text":"\" is currently set to ","color":"gray"},{"text":"true","color":"yellow"}]