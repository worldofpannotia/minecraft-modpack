#> pk_be_it:packages/damage_item/store

data remove storage pk:common temp.item
$item replace entity @s container.0 from entity @a[tag=pk.packages.damage_item.current.entity,limit=1,dx=0] $(slot)
data modify storage pk:common temp.item set from entity @s item
kill @s