give @s minecraft:crossbow 1
tellraw @s {"color":"green","text":" +1 ","extra":[{"translate":"item.minecraft.crossbow"}]}
give @s minecraft:arrow 32
tellraw @s {"color":"green","text":" +32 ","extra":[{"translate":"item.minecraft.arrow"}]}
give @s minecraft:enchanted_book[minecraft:stored_enchantments={"minecraft:multishot":1}] 1
tellraw @s {"color":"green","text":" +1 ","extra":[{"translate":"enchantment.minecraft.multishot"},{"text":" "},{"translate":"item.minecraft.enchanted_book"}]}
