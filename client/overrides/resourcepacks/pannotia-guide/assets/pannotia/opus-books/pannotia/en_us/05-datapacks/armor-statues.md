# Armor Statues

Gives players a command book that edits armor stands and item frames: change style, nudge position, rotate, apply pose presets, fine-tune each limb, copy and paste poses, and lock stands. Item frames can also be made invisible. (Based on the Vanilla Tweaks "Customizable Armor Stands" datapack, V2.8.)

## How to use

**Get the book:** craft a Book and Quill, write anything, and sign it with the exact title `Statues`. The pack replaces it with the real "Statues" command book. (The "Craftable book" admin option is Enabled by default.)

**Use the book:** hold it and stand within 3 blocks of an armor stand, then click a coloured link. The change applies to the nearest unlocked armor stand within 3 blocks. "Check Target" makes the selected stand glow for 3 seconds. Stands that are Marker, Invulnerable or locked are ignored.

| Command | What it does |
|---|---|
| `/trigger as_help` | Show help in chat |
| `/trigger as_help set 3` | Toggle notifications between chat and action bar |
| `/trigger as_help set 2` | Get the book (only if the admin option "Get book from help" is Enabled; it is Disabled by default) |
| `/trigger as_trigger set <N>` | What the book links run (normally clicked, not typed); `999` = check target |
| `/trigger if_invisible` | Make the item frame in front of you invisible |
| `/function armor_statues:admin` | Operators: create/remove a particle shrine, craftable book, book from help, UUID locking, item-frame fixing, delete unused invisible stands, highlight stands within 64 blocks |

Operators can also create a particle shrine that gives the book to players standing within 1.5 blocks.

## What it changes

Book sections:

| Section | Options |
|---|---|
| Style | Base plate, arms, small size, gravity, visibility, display name |
| Nudge position | Steps of 1, 3 or 8 sixteenths of a block; world axes, plus Relative Aligned and Relative Exact (relative to you) |
| Rotation | Steps of 45, 15, 5 or 1 degrees; face toward/away from you |
| Pointing | Point head/body/arms/legs at your head or feet |
| Pose presets | Attention, Walking, Running, Pointing, Blocking, Lungeing, Winning, Sitting, Arabesque, Cupid, Confident, Salute, Death, Facepalm, Lazing, Confused, Formal, Sad, Joyous, Stargazing, Randomized, Block, Item |
| Pose adjustment | +/- per axis for head, body, arms, legs |
| Auto Alignment | Block/item/tool on a surface; tool rack against a tripwire hook |
| Other | Swap Slots, Mirror and Flip, Utilities, Item Frames, Credits |

- **Copy / Paste:** Copy stores a stand's settings and pose in the book; Paste applies them to another stand (the book must be in your hand).
- **Lock:** stops further changes by the book and blocks equipment-slot interaction.
- **Seal:** (creative mode only) locks the stand and makes it invulnerable.
- **UUID lock:** an admin option (Disabled by default) so only the player who locked a stand can unlock it.
- **Invisible item frames:** put an item in an item frame that is one block in front of your eyes and use the Invisible Item Frame link (or `/trigger if_invisible`). Removing the item makes the frame visible again. A Fixed item frame needs creative mode unless an operator enables "Item Frame Fixing" (Disabled by default).

## Notes

- Related mod: Fast Item Frames (see [Building & Decoration](../04-mods/04-building-and-decoration.md)).

