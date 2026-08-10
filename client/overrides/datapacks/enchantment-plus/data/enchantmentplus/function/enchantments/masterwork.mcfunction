# Revoke
advancement revoke @s only enchantmentplus:enchantments/masterwork

# Notification
playsound enchantmentplus:masterwork_obtained player @s
tellraw @s {translate:"desc.enchantmentplus.masterwork_notification",fallback:"You got lucky while enchanting and obtained a special enchanted book!",color:"green"}

# Give Book
loot give @s loot enchantmentplus:masterwork_book
