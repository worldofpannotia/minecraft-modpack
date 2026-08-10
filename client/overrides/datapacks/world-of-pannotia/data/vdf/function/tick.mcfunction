# ==========================================
# FILE: tick.mcfunction
# PURPOSE: Runs 20 times every second.
# WARNING: Putting too many complex commands here will lag the server! Always optimize.
# ==========================================

# 1. OPTIMIZED EXECUTION USING PREDICATES
# Bad example (Causes lag): execute as @a[nbt={SelectedItem:{...}}] run ... (Never do this!)
# Good example: We use a 'predicate' (a separate JSON file) to check conditions efficiently.
# If the predicate 'is_sneaking_and_holding_item' returns true, the player gets a Speed effect.
execute as @a[predicate=vdf:is_sneaking_and_holding_item] run effect give @s minecraft:speed 1 1 true

# 2. SCOREBOARD CLEANUP
# Since 'vdf_sneak_time' increases every tick a player crouches, it will grow forever.
# We reset it to 0 so we can accurately detect the EXACT moment they sneak next time.
# We only target players who have a score of 1 or more (1..) to save performance.
execute as @a[scores={vdf_sneak_time=1..}] run scoreboard players set @s vdf_sneak_time 0