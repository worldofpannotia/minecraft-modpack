data modify entity @s Gossips append value {Target:[I;1,1,1,1],Type:"major_positive",Value:20}
data modify entity @s Gossips[{Target:[I;1,1,1,1]}].Value set from entity @s Gossips[{Type:"major_positive"}].Value
data modify entity @s Gossips[{Target:[I;1,1,1,1]}].Target set from entity @p UUID