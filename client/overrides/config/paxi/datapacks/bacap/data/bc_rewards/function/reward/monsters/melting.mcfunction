give @s minecraft:tipped_arrow[minecraft:potion_contents={potion:"minecraft:slowness"}] 32
tellraw @s {"color":"green","text":" +32 ","extra":[{"translate":"item.minecraft.tipped_arrow.effect.slowness"}]}
give @s minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:projectile_protection":2}] 1
tellraw @s {"color":"green","text":" +1 ","extra":[{"translate":"enchantment.minecraft.projectile_protection"},{"text":" "},{"translate":"enchantment.level.2"},{"text":" "},{"translate":"item.minecraft.enchanted_book"}]}
