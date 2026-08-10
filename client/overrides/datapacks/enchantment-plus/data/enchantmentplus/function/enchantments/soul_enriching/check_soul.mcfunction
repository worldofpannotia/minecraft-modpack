# Give Soul Stack
execute unless score @s eplus.soul_stacks matches 5.. run return run function enchantmentplus:enchantments/soul_enriching/give_soul

# Spend Soul Stack
execute if score @s eplus.soul_stacks matches 5.. run return run function enchantmentplus:enchantments/soul_enriching/spend_soul
