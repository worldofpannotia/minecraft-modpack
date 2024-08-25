# Give Soul Stack
execute unless score @s eplus.soul_stacks matches 5.. run return run function enchantmentplus:enchantments/soul_rend/give_soul_stack

# Spend Soul Stack
execute if score @s eplus.soul_stacks matches 5.. run return run function enchantmentplus:enchantments/soul_rend/spend_soul_stack