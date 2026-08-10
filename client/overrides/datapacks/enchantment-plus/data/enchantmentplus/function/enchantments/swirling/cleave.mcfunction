# Get Damage
scoreboard players operation @s eplus.swirling_damage = @p[tag=eplus.swirling_user] eplus.swirling_damage

# Apply Bane of Arthropods
execute if entity @s[type=#minecraft:sensitive_to_bane_of_arthropods] if data entity @p[tag=eplus.swirling_user] SelectedItem.components."minecraft:enchantments"."minecraft:bane_of_arthropods" run function enchantmentplus:enchantments/swirling/calculate/bane_of_arthropods
execute if entity @s[type=#minecraft:sensitive_to_bane_of_arthropods] if data entity @p[tag=eplus.swirling_user] SelectedItem.components."minecraft:enchantments"."minecraft:bane_of_arthropods" run effect give @s minecraft:slowness 2 3 false

# Apply Combustion
execute if predicate {condition:"entity_properties",entity:"this",predicate:{flags:{is_on_fire:true}}} if data entity @p[tag=eplus.swirling_user] SelectedItem.components."minecraft:enchantments"."enchantmentplus:combustion" run function enchantmentplus:enchantments/swirling/calculate/combustion

# Apply Retribution
execute if entity @s[type=#enchantmentplus:sensitive_to_retribution] if data entity @p[tag=eplus.swirling_user] SelectedItem.components."minecraft:enchantments"."enchantmentplus:retribution" run function enchantmentplus:enchantments/swirling/calculate/retribution

# Apply Smite
execute if entity @s[type=#minecraft:sensitive_to_smite] if data entity @p[tag=eplus.swirling_user] SelectedItem.components."minecraft:enchantments"."minecraft:smite" run function enchantmentplus:enchantments/swirling/calculate/smite

# Apply Torment
execute if entity @s[type=#enchantmentplus:sensitive_to_torment] if data entity @p[tag=eplus.swirling_user] SelectedItem.components."minecraft:enchantments"."enchantmentplus:torment" run function enchantmentplus:enchantments/swirling/calculate/torment

# Apply Voidfused
execute if entity @s[type=#enchantmentplus:sensitive_to_voidfused] if data entity @p[tag=eplus.swirling_user] SelectedItem.components."minecraft:enchantments"."enchantmentplus:voidfused" run function enchantmentplus:enchantments/swirling/calculate/voidfused

# Deal Damage
execute store result storage enchantmentplus:data Macros.SwirlingDamage double 0.1 run scoreboard players get @s eplus.swirling_damage
function enchantmentplus:enchantments/swirling/deal_damage with storage enchantmentplus:data Macros{}
