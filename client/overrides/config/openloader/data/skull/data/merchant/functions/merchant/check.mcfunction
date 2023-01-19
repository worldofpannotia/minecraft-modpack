execute as @p at @s anchored eyes positioned ^ ^ ^ anchored feet run function merchant:raycast/start_ray

execute as @p at @s run function merchant:merchant/merchant_summoned
execute unless entity @e[tag=trading] run function merchant:merchant/error

tag @e[tag=trading] add skull
tag @e[tag=trading] remove trading
scoreboard players set @s skull 0
