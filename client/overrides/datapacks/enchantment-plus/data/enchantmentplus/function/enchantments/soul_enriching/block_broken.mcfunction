# Set the Target Block
data modify storage enchantmentplus:data Macros.SoulEnrichingBlockId set from entity @s data.SoulEnrichingBlockId

# Check Soul Amount
$execute as @p[nbt={UUID:$(UserUUID)}] run function enchantmentplus:enchantments/soul_enriching/check_soul

# Kill
kill @s
