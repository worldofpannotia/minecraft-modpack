scoreboard players add Tick vjf_clocks 1

# Increment seconds if needed
execute if score Tick vjf_clocks matches 20 run scoreboard players add Seconds vjf_clocks 1

# Reset ticks if needed
execute if score Tick vjf_clocks matches 20 run scoreboard players set Tick vjf_clocks 0

# Reset seconds if needed
execute if score Seconds vjf_clocks matches 6 run scoreboard players set Seconds vjf_clocks 1