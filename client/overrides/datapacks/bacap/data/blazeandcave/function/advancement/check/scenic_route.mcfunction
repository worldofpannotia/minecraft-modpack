# If the player uses an End Gateway, Elytra or a Happy Ghast, the Scenic Route advancement progress is revoked (handled by a technical advancement)
# It is also revoked if the player somehow ends up in the outer end without having reached the 700 zone (coughs in pearl stasis chambers)
execute if entity @s[advancements={blazeandcave:technical/scenic_route_fail=true}] run scoreboard players set @s bac_scenic_route 0
execute if entity @s[scores={bac_scenic_route=..6},predicate=blazeandcave:scenic_route/outer_end] run scoreboard players set @s bac_scenic_route 0
advancement revoke @s only blazeandcave:technical/scenic_route_fail

# As the player enters each zone covered by the scenic_route predicates their score goes up
execute if entity @s[scores={bac_scenic_route=7},predicate=blazeandcave:scenic_route/outer_end] run advancement grant @s only blazeandcave:end/taking_the_scenic_route
execute if entity @s[scores={bac_scenic_route=5},predicate=blazeandcave:scenic_route/700] run scoreboard players set @s bac_scenic_route 7
execute if entity @s[scores={bac_scenic_route=3},predicate=blazeandcave:scenic_route/500] run scoreboard players set @s bac_scenic_route 5
execute if entity @s[scores={bac_scenic_route=2},predicate=blazeandcave:scenic_route/300] run scoreboard players set @s bac_scenic_route 3
execute if entity @s[scores={bac_scenic_route=1},predicate=blazeandcave:scenic_route/200] run scoreboard players set @s bac_scenic_route 2

