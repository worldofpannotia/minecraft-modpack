#> pk_be_it:packages/damage_item/break

$item replace entity @s $(slot) with air
execute at @s run playsound entity.item.break player @a[distance=..30] ~ ~ ~ 1 1