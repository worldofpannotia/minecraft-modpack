# Desc: Sets up scores for hermitcraft to track hermit stats
#
# Called by: #minecraft:load

scoreboard objectives add hc_elytraKmShow dummy "Elytra km Show"
scoreboard objectives add hc_elytraKm dummy "Elytra km"
scoreboard objectives add hc_elytraCm minecraft.custom:minecraft.aviate_one_cm "Elytra cm"

scoreboard objectives add hc_playTimeShow dummy "Play Minutes Show"
scoreboard objectives add hc_playTime dummy "Play Minutes"
scoreboard objectives add hc_playTick minecraft.custom:minecraft.play_time "Play Ticks"

scoreboard objectives add hc_swimKmShow dummy "Swim km Show"
scoreboard objectives add hc_swimKm dummy "Swim km"
scoreboard objectives add hc_swimCm minecraft.custom:minecraft.swim_one_cm "Swim"

# Ores
scoreboard objectives add hc_MineOreShow dummy "Show Mined Ores"
scoreboard objectives add hc_MineOre dummy "Mine Ores"

scoreboard objectives add hc_MineCoalShow dummy "Show Mined Coal Ore"
scoreboard objectives add hc_MineDiamondShow dummy "Show Mined Diamond Ore"
scoreboard objectives add hc_MineEmeraldShow dummy "Show Mined Emerald Ore"
scoreboard objectives add hc_MineRedstoneShow dummy "Show Mined Redstone Ore"
scoreboard objectives add hc_MineLapisShow dummy "Show Mined Lapis Ore"
scoreboard objectives add hc_MineIronShow dummy "Show Mined Iron Ore"
scoreboard objectives add hc_MineGoldShow dummy "Show Mined Gold Ore"
scoreboard objectives add hc_MineCopperShow dummy "Show Mined Copper Ore"

scoreboard objectives add hc_MineCoal dummy "Mine All Coal"
scoreboard objectives add hc_MineDiamond dummy "Mine All Diamond"
scoreboard objectives add hc_MineEmerald dummy "Mine All Emerald"
scoreboard objectives add hc_MineRedstone dummy "Mine All Redstone"
scoreboard objectives add hc_MineLapis dummy "Mine All Lapis"
scoreboard objectives add hc_MineIron dummy "Mine All Iron"
scoreboard objectives add hc_MineGold dummy "Mine All Gold"
scoreboard objectives add hc_MineCopper dummy "Mine All Copper"

scoreboard objectives add hc_MineSCoal minecraft.mined:minecraft.coal_ore "Mine Stone Coal"
scoreboard objectives add hc_MineSDiamond minecraft.mined:minecraft.diamond_ore "Mine Stone Diamond"
scoreboard objectives add hc_MineSEmerald minecraft.mined:minecraft.emerald_ore "Mine Stone Emerald"
scoreboard objectives add hc_MineQuartz minecraft.mined:minecraft.nether_quartz_ore "Mine Quartz"
scoreboard objectives add hc_MineSRedstone minecraft.mined:minecraft.redstone_ore "Mine Stone Redstone"
scoreboard objectives add hc_MineSLapis minecraft.mined:minecraft.lapis_ore "Mine Stone Lapis"
scoreboard objectives add hc_MineSIron minecraft.mined:minecraft.iron_ore "Mine Stone Iron"
scoreboard objectives add hc_MineSGold minecraft.mined:minecraft.gold_ore "Mine Stone Gold"
scoreboard objectives add hc_MineSCopper minecraft.mined:minecraft.copper_ore "Mine Stone Copper"
scoreboard objectives add hc_MineNetherite minecraft.mined:minecraft.ancient_debris "Mine Ancient Debris"

scoreboard objectives add hc_MineDCoal minecraft.mined:minecraft.deepslate_coal_ore "Mine Deepslate Coal"
scoreboard objectives add hc_MineDDiamond minecraft.mined:minecraft.deepslate_diamond_ore "Mine Deepslate Diamond"
scoreboard objectives add hc_MineDEmerald minecraft.mined:minecraft.deepslate_emerald_ore "Mine Deepslate Emerald"
scoreboard objectives add hc_MineDRedstone minecraft.mined:minecraft.deepslate_redstone_ore "Mine Deepslate Redstone"
scoreboard objectives add hc_MineDLapis minecraft.mined:minecraft.deepslate_lapis_ore "Mine Deepslate Lapis"
scoreboard objectives add hc_MineDIron minecraft.mined:minecraft.deepslate_iron_ore "Mine Deepslate Iron"
scoreboard objectives add hc_MineDGold minecraft.mined:minecraft.deepslate_gold_ore "Mine Deepslate Gold"
scoreboard objectives add hc_MineDCopper minecraft.mined:minecraft.deepslate_copper_ore "Mine Deepslate Copper"

scoreboard objectives add hc_constant dummy "Hermitcraft Constants"
scoreboard players set 1200 hc_constant 1200
scoreboard players set 100000 hc_constant 100000
scoreboard players set 100 hc_constant 100