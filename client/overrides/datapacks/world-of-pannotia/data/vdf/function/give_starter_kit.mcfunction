# ==========================================
# FILE: give_starter_kit.mcfunction
# PURPOSE: Gives custom items to the player who executes this function (@s).
# MODERN SYNTAX: We use [] for Data Components instead of {} for NBT!
# ==========================================

# 1. GIVING A CUSTOM SWORD
# Notice how we use minecraft:item_name, minecraft:lore, and minecraft:enchantments inside the brackets [].
give @s minecraft:netherite_sword[minecraft:custom_model_data=7001,minecraft:item_name='"§bChrono Blade"',minecraft:lore=['"§7A perfect weapon for a beginner."','"§8ID: vdf_chrono_blade"'],minecraft:unbreakable={},minecraft:enchantments={levels:{"minecraft:sharpness":5}}] 1

# 2. GIVING A CUSTOM POTION
# In 1.21+, potion effects are handled by the 'minecraft:potion_contents' component.
give @s minecraft:potion[minecraft:potion_contents={custom_effects:[{id:"minecraft:haste",amplifier:2,duration:600}],potion:"minecraft:water"},minecraft:item_name='"§eElixir of Accelerated Labor"'] 1

# 3. CONFIRMATION
# Let the executing player (@s) know they received the items.
tellraw @s {"text":"[VDF] Starter kit delivered. Inspect the components!","color":"yellow"}