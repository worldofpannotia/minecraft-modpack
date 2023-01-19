schedule function lore_geek:schedule 4t
execute as @a[scores={AddLore=1..}] run function lore_geek:trigger
execute as @a[scores={AddLore=..-1}] run function lore_geek:info
scoreboard players enable @a AddLore
