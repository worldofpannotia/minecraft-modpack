#> pk_be_it:core/item_frame/settings/visible_when_empty/on_load

schedule clear pk_be_it:core/item_frame/settings/visible_when_empty/tick
execute if score $pk.be_it.settings.visible_when_empty pk.value matches 1 run schedule function pk_be_it:core/item_frame/settings/visible_when_empty/tick 1t