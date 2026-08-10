# VanillaDatapackFramework [VDF]

Hey there! **VanillaDatapackFramework [VDF]** is a clean, ready-to-use template for creating data packs in Minecraft 1.21 and newer.

This framework helps you write modern, fast, and organized code. It completely drops the old NBT format in favor of Minecraft's new **Data Components**, keeping your server running smoothly without lag (maximizing TPS).

---

## 🎮 Version Compatibility & Pack Formats

When Minecraft updates, you usually don't need to rewrite your code! To upgrade your data pack for a newer version, just change the `pack_format` number inside your `pack.mcmeta` file.

**Quick Reference Guide:**
- `48` = Minecraft 1.21 - 1.21.1
- `57` = Minecraft 1.21.2 - 1.21.3
- `61` = Minecraft 1.21.4
- `71` = Minecraft 1.21.5
- `80` = Minecraft 1.21.6
- `81` = Minecraft 1.21.7 - 1.21.8
- `88` = Minecraft 1.21.9 - 1.21.10
- `94` = Minecraft 1.21.11
- `101` = Minecraft 26.1 - 26.1.2
- `107` = Minecraft 26.2

*(Looking for future versions? Check out the official [Minecraft Wiki Data Pack Format](https://minecraft.wiki/w/Pack_format#Data_pack_format_history) page).*

---

## 📂 Project Structure Explained

Here is a quick look at what goes into each folder so you can keep your project nice and tidy:

* **`pack.mcmeta`**
  The core metadata file that Minecraft reads to identify your data pack and its format version.
* **`pack.png`**
  The official 64x64 or 128x128 PNG icon for your data pack, displayed in the game's pack selection menu.
* **`data/minecraft/tags/function/`**
  Contains `load.json` (runs once when the world/server starts) and `tick.json` (runs constantly, 20 times per second). This is where you trigger your main scripts.
* **`data/vdf/function/`**
  The main folder for your command files (`.mcfunction`). This is where all your gameplay logic lives.
* **`data/vdf/predicate/`**
  Folder for "predicates" (conditions written in JSON). Use these to quickly check things like "is the player sneaking?" or "is the item right-clicked?". They are much better for server performance than heavy `/execute` commands.
* **`data/vdf/advancement/`**
  Advancements used as "triggers". They let you instantly detect player actions (like eating an item, attacking, or taking damage) right when they happen, without putting a constant load on the server.

---

## 💡 4 Golden Rules for Data Pack Devs

To keep your data pack modern and lag-free, try to follow these simple practices:

### 1. Use Data Components, Forget Old NBT
The old way of adding custom data to items (like `{CustomModelData:1}`) is completely obsolete in modern Minecraft. Always use square brackets for Data Components:
- **How to give an item:** `/give @s minecraft:diamond_sword[minecraft:custom_model_data=7001]`
- **How to modify an item:** Use the `/item modify ...` command.

### 2. Put Server Performance (TPS) First
Try not to put heavy, non-stop checks inside your `tick.mcfunction` file (since it runs 20 times every second).
- **Bad Practice:** Constantly running `/execute as @a[...] run ...` every single tick.
- **Good Practice:** Use a hidden advancement trigger that fires your function *only* in the exact second the player does what you need.

### 3. Store Data in Storage, Not on Entities
Don't summon invisible `armor_stand` or `marker` entities just to hold variables or scoreboards (unless you absolutely need a specific 3D location in the world). Use the built-in game `storage` instead—it's way faster:
- `/data modify storage vdf:main core.my_variable set value 1`

### 4. Resource Pack Integration
This template is built with custom textures and models in mind. When designing custom items, map your `custom_model_data` IDs to your Resource Pack model overrides. Use clean ID ranges (for example, numbers 7000-7999 for custom weapons only) so your items never conflict with each other.