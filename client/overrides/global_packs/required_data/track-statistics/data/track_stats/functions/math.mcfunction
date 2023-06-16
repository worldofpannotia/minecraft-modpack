# Play Time
scoreboard players operation @s hc_playTime = @s hc_playTick
scoreboard players operation @s hc_playTime /= 1200 hc_constant
scoreboard players operation @s hc_playTimeShow = @s hc_playTime

# Elytra Distance
scoreboard players operation @s hc_elytraKm = @s hc_elytraCm
scoreboard players operation @s hc_elytraKm /= 100000 hc_constant
scoreboard players operation @s hc_elytraKmShow = @s hc_elytraKm

# Swim Distance
scoreboard players operation @s hc_swimKm = @s hc_swimCm
scoreboard players operation @s hc_swimKm /= 100 hc_constant
scoreboard players operation @s hc_swimKmShow = @s hc_swimKm

# Ore Combined
scoreboard players operation @s hc_MineCoal = @s hc_MineSCoal
scoreboard players operation @s hc_MineDiamond = @s hc_MineSDiamond
scoreboard players operation @s hc_MineEmerald = @s hc_MineSEmerald
scoreboard players operation @s hc_MineRedstone = @s hc_MineSRedstone
scoreboard players operation @s hc_MineLapis = @s hc_MineSLapis
scoreboard players operation @s hc_MineIron = @s hc_MineSIron
scoreboard players operation @s hc_MineGold = @s hc_MineSGold
scoreboard players operation @s hc_MineCopper = @s hc_MineSCopper

scoreboard players operation @s hc_MineCoal += @s hc_MineDCoal
scoreboard players operation @s hc_MineDiamond += @s hc_MineDDiamond
scoreboard players operation @s hc_MineEmerald += @s hc_MineDEmerald
scoreboard players operation @s hc_MineRedstone += @s hc_MineDRedstone
scoreboard players operation @s hc_MineLapis += @s hc_MineDLapis
scoreboard players operation @s hc_MineIron += @s hc_MineDIron
scoreboard players operation @s hc_MineGold += @s hc_MineDGold
scoreboard players operation @s hc_MineCopper += @s hc_MineDCopper

scoreboard players operation @s hc_MineOre = @s hc_MineCoal
scoreboard players operation @s hc_MineOre += @s hc_MineDiamond
scoreboard players operation @s hc_MineOre += @s hc_MineEmerald
scoreboard players operation @s hc_MineOre += @s hc_MineRedstone
scoreboard players operation @s hc_MineOre += @s hc_MineLapis
scoreboard players operation @s hc_MineOre += @s hc_MineIron
scoreboard players operation @s hc_MineOre += @s hc_MineGold
scoreboard players operation @s hc_MineOre += @s hc_MineCopper
scoreboard players operation @s hc_MineOre += @s hc_MineQuartz
scoreboard players operation @s hc_MineOre += @s hc_MineNetherite

scoreboard players operation @s hc_MineCoalShow += @s hc_MineCoal
scoreboard players operation @s hc_MineDiamondShow += @s hc_MineDiamond
scoreboard players operation @s hc_MineEmeraldShow += @s hc_MineEmerald
scoreboard players operation @s hc_MineRedstoneShow += @s hc_MineRedstone
scoreboard players operation @s hc_MineLapisShow += @s hc_MineLapis
scoreboard players operation @s hc_MineIronShow += @s hc_MineIron
scoreboard players operation @s hc_MineGoldShow += @s hc_MineGold
scoreboard players operation @s hc_MineCopperShow += @s hc_MineCopper

scoreboard players operation @s hc_MineOreShow = @s hc_MineCoal
