# If the player is riding a Camel Husk that also has a Parched as a passenger, the score increases
execute if entity @s[predicate=blazeandcave:vehicle/camel_husk] on vehicle if entity @s[predicate=blazeandcave:parched_passenger] on passengers run scoreboard players add @s[type=player] bac_unwanted_passenger 1

# If the player is no longer riding a Camel Husk, the score resets
execute unless entity @s[predicate=blazeandcave:vehicle/camel_husk] run function blazeandcave:advancement/unwanted_passenger_fail

# The score also resets if the player changes to riding a different Camel Husk (handled with the unwanted_passenger_fail technical advancement)


# Once the ride has been done for 30 seconds, the player gets the advancement
execute if score @s bac_unwanted_passenger matches 30.. run advancement grant @s only blazeandcave:monsters/unwanted_passenger
