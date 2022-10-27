execute if score #hit vdvcasttemp matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[predicate=merchant:no_profession,tag=!vdvray,dx=0,sort=nearest] run function merchant:raycast/check_hit_entity
execute unless block ~ ~ ~ #merchant:blocks run function merchant:raycast/hit_block
scoreboard players add #distance vdvcasttemp 1
execute if score #hit vdvcasttemp matches 0 if score #distance vdvcasttemp matches ..50 positioned ^ ^ ^0.1 run function merchant:raycast/ray
