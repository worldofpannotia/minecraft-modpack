# Function runs for striders that have not been checked for zombified piglin riders

execute if entity @s[predicate=blazeandcave:jockeys/strider] on passengers run tag @s add strider_jockey
execute if entity @s[predicate=blazeandcave:jockeys/strider] run tag @s add zp_ridden

execute unless entity @s[predicate=blazeandcave:jockeys/strider] run tag @s add not_zp_ridden
