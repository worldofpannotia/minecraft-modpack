# ==========================================
# FILE: load.mcfunction
# PURPOSE: Runs exactly once when the server starts or when someone types /reload.
# USE IT FOR: Setting up scoreboards, resetting variables, and printing welcome messages.
# ==========================================

# 1. WELCOME MESSAGE
# This sends a green message to all players (@a) to confirm the pack is working.
tellraw @a {"text":"[VDF] Framework 1.21.1+ loaded successfully! Welcome Developer!","color":"green"}

# 2. SCOREBOARDS (VARIABLES)
# Scoreboards are the easiest way to store numbers for players.
# 'minecraft.custom:minecraft.sneak_time' automatically counts up when a player crouches/sneaks.
scoreboard objectives add vdf_sneak_time minecraft.custom:minecraft.sneak_time "Sneak Tracker"

# A 'dummy' objective only changes when you specifically tell it to using commands.
scoreboard objectives add vdf_math dummy "Math and Logic"

# 3. DATA STORAGE (MODERN VARIABLES)
# Instead of summoning hidden Armor Stands to hold data, we use 'storage'.
# It's an invisible, lag-free database. Here we save our pack version and debug status.
data modify storage vdf:main core set value {version:1.0b, debug_mode:1b}