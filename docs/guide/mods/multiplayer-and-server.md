# Multiplayer & Server

This part of the pack covers playing with other people: talking to them, protecting your land, handing over items, and recovering from a death. Most of these mods run on the server, so you may not need to do anything to benefit from them. A few (voice chat, claims, Auth Me) add a client-side screen or key.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| AudioPlayer | Upload custom audio and attach it to music discs, goat horns and heads | Server |
| Auth Me | Button on the multiplayer screen to re-login to Microsoft | Client |
| Death Backup | Saves your inventory on death; operators can restore it | Server |
| Hand Over Your Items | Sneak + right-click a player to give them your held stack | Both |
| Open Parties and Claims | Claim and forceload chunks; form parties | Both |
| Servux | Server-side support that lets MiniHUD show structure boxes | Server |
| Simple Voice Chat | Proximity voice chat with groups | Both |
| Universal Graves | Your items and XP are stored in a grave block when you die | Server |

## Talking and sharing
**Simple Voice Chat** gives you proximity voice. **AudioPlayer** builds on it, letting you put your own recordings on discs and horns. **Hand Over Your Items** is the quick way to pass loot to a friend, and **Auth Me** fixes the "invalid session" error when joining.

### Simple Voice Chat
Proximity voice chat: volume falls off with distance and is positional (3D); whispering has a shorter range. The server needs the mod plus an open UDP port for voice traffic, and players need the mod installed.
- **How it works:**
  - Groups can be created with an optional password. Types: Normal (non-members cannot hear the group, but members hear everyone), Open (everyone hears everyone), Isolated (members and non-members cannot hear each other).
  - Push-to-talk or voice activation, automatic gain, RNNoise noise suppression, microphone/speaker test, per-player volume sliders, optional audio recording.
  - HUD and name-tag icons show who is talking or whispering, a muted microphone, disabled voice chat, and connection problems.
  - A first-run guide helps you set the push-to-talk key and test your microphone.
- **Controls:** **V** opens the voice chat menu (settings, groups, mute, disable, hide icons, recording). Push-to-talk, whisper and mute keys are rebindable in Controls.
- **Getting started:** On first launch follow the setup guide to pick a microphone and push-to-talk key. If you cannot connect, the server host must open the voice chat UDP port.
<!-- maintainer: default UDP port (24454, from general knowledge) not in extracted facts; verify against server config. Works in single player/LAN only if run_local_server is enabled. Confidence medium. -->

### AudioPlayer
Server-side mod that lets players upload their own mp3 or wav audio and attach it to music discs, goat horns and note blocks with heads. No resource pack or client mod is needed, but Simple Voice Chat is required.
- **How it works:** Upload by URL, from a file in the server's `audioplayer_uploads` folder, or via Filebin, without a restart. Hold a music disc, goat horn or player head and apply the uploaded audio; holding a shulker box, bundle or other container applies it to every compatible item inside. Audio range can be set per item. Upload size limit and command permissions are set by server admins, so some commands may be restricted for non-ops.
- **Controls:**
  - `/audioplayer` - general upload information
  - `/audioplayer url "<link>"` - upload from URL
  - `/audioplayer serverfile "<file>"` - upload a file from the server folder
  - `/audioplayer filebin` - upload via Filebin
  - `/audioplayer apply <id or file name>` - apply to held item
  - `/audioplayer range <range>` - set audio range of held item
  - `/audioplayer info` - show audio info of held item
  - `/audioplayer search <name>` - search uploaded audio
- **Getting started:** Run `/audioplayer`, upload a file, hold a music disc and run `/audioplayer apply`.
<!-- maintainer: command argument names were partly stripped in the source; permissions may restrict commands for non-ops. -->

### Hand Over Your Items
Give items directly to another player without dropping them. Sneak and right-click a player to hand over your whole held stack; overflow drops at their feet if their inventory is full.
- **Controls:** Sneak + right-click another player with an item.
- **Pack note:** Both players get a chat message by default, and sneaking is required by default (config options `sendItemGivenMessage`, `sendItemReceivedMessage`, `mustCrouchToGiveItem`).
<!-- maintainer: author recommends installing on both client and server; server-only can desync. -->

### Auth Me
Adds an authentication button to the multiplayer screen so you can log in to your Microsoft account again and re-validate an expired session. If a server rejects you with a session error, use the button to sign in again. The button can be moved and dragged; an offline login method also exists.
<!-- maintainer: bundles Resourceful Config. -->

## Land protection
### Open Parties and Claims
Lets players claim and forceload chunks and form parties. Claims protect against other players, with exceptions for party members or custom groups. Integrates with Xaero's Minimap and World Map (see [Maps & Navigation](maps-and-navigation.md)), where claims can be viewed and edited. The mod is in beta.
- **How it works:**
  - Claims can be edited from the UI, via commands, or on the Xaero's World Map screen (right-click or right-drag to select). Protection exceptions can be set by party relation or custom player groups.
  - Claimed chunks can be forceloaded, subject to server limits.
  - Create and manage parties and allies with chat commands; party chat is available. Parties are managed by commands only.
  - Server owners configure limits, protection exceptions and permissions in `openpartiesandclaims-server.toml`; admins can use server claims, moderator/admin modes and permission nodes (`xaero.pac_*`). Player config options can be restricted by the server.
- **Controls:** **'** (apostrophe) opens the mod UI (rebindable). Commands: `/opac ...` (player config), `/oclaims ...` (claims), `/oparties ...` (parties, e.g. `/oparties destroy confirm`), `/opm` (party chat shortcut).
- **Getting started:** Press ' to open the UI and claim your base chunks. Use `/oparties` to create a party and invite friends.
<!-- maintainer: actual claim limits and protection settings on the pack's server are unknown from facts; verify server config. Client install is optional (commands work without it). -->

## Death recovery
**Universal Graves** and **Death Backup** are complementary: the grave is the normal way to get your stuff back, the backup is the admin safety net.

### Universal Graves
On death, your items and experience are stored in a grave block at the death location instead of scattering. Works server-side, so no client install is needed.
- **New:**
  | Name | How to obtain | Notes |
  |---|---|---|
  | Gravestone | Craft: top row three stone bricks; bottom row stone bricks, any sign, stone bricks | Decorative grave block |
  | Grave | Created automatically at your death location | Holds items and XP; right-click opens a GUI, shift + right-click with an empty hand does a quick pickup |
  | Emptied Grave | Left after a grave is emptied | |
  | Grave Compass | Given on death (default on) | Points to your grave |
- **How it works (mod defaults):** Other players cannot open your grave for 900 s (15 min); it self-destructs after 1800 s (30 min) and drops its items if `drop_items_on_expiration` is true. 100% of XP is stored. The mod searches up to 8 blocks from the death spot for a free location; no per-player grave limit by default.
- **Controls:** `/graves` lists your graves. Permission-gated: `/graves player <player>`, `/graves modify <player>`, `/graves reload`; the `universal_graves.teleport` permission allows teleporting to any grave.
- **Pack note:** The pack ships no config for this mod, so defaults apply.
<!-- maintainer: values come from the README's documented defaults; verify against generated config/universal-graves/config.json in-game. Uses Polymer so vanilla clients work. -->

### Death Backup
Saves a copy of each player's inventory and gear just before they die. Backups are written to `data/deathbackup` in the world folder, one folder per player name.
- **Controls:** `/deathbackup` (show commands), `/deathbackup list` (recent deaths; 0 is the latest), `/deathbackup load <index>` (restore).
- **Getting started:** Restoring requires operator/cheat access, so regular players need to ask an admin. Players with command access get a reminder message on death (configurable).

## Server support
### Servux
A server-side mod that sends data to client mods. Its one feature today sends structure bounding boxes to **MiniHUD**, so players can use MiniHUD's structure overlay on this server (see [Interface & HUD](interface-and-hud.md#minihud)). Players do not install it, and it is not needed in singleplayer.
- **Controls:** none; there are no commands yet.
<!-- maintainer: Modrinth: no commands in 0.1.x; config for the structures feature not checked. Confirm structure boxes show on the pack server (MP-5). -->

## Also relevant
- **Homes**, **Back** and **Spawn** datapacks add `/trigger home`, `/trigger sethome`, `/trigger back` and `/trigger spawn` (see [Transport & Movement](transport-and-movement.md); [homes](../datapacks/homes.md), [back](../datapacks/back.md), [spawn](../datapacks/spawn.md)).
- **Track Statistics** ([datapack](../datapacks/track-statistics.md)) adds `hc_` leaderboard scoreboards (minutes played, elytra and swim distance, ores mined); **Track Raw Statistics** ([datapack](../datapacks/track-raw-statistics.md)) mirrors 100+ vanilla stats as `ts_` scoreboards. Operators show them with `/scoreboard objectives setdisplay <sidebar|list|below_name> <objective>`.
- **Wandering Trader Announcements** ([datapack](../datapacks/wandering-trader-announcements.md)) tells players within 64 blocks when a wandering trader arrives.
- **Areas** (client mod) - place a sign like `[R:20]` plus a name to define a named area; entering or leaving shows a message. `/areas` lists nearby area signs. Breaking the sign removes the area. Default radius 30 blocks.
- **Carpet** - technical-play rules and commands (`/carpet`, `/tick`, `/log`, `/player`, `/script`); most rules are off by default.
- **Daily Dad Server** - occasional dad jokes in chat.
- **Enchanting Commands** - operator `/ec <enchantment> <level>` for over-limit enchants on the held item.
- **Fire Spread Tweaks** - fire no longer spreads or destroys blocks and burns out; fire on netherrack, magma blocks and soul sand still burns forever.
- **Just Player Heads** - players drop their head on death; `/jph head <playerName> [amount]` spawns one.
- **Lootr** - per-player loot containers; gold until opened, then blue. Operator `/lootr custom` makes a shared "starter" chest.
- **Plague's Chat Timestamps** - timestamps on every chat message (client).
- **Universal Shops** - Trade Shop block turns a container into a player shop with price and stock; no client mod needed.
- **Villager Death Messages** - chat broadcast with name, profession, cause and location when a villager dies.
- **WorldEdit** - operator map editor (`//wand`, `//pos1`, `//pos2`, `//set`, `//copy`, `//paste`, `//undo`, `//brush`); see the [WorldEdit docs](https://worldedit.enginehub.org/en/latest/).
