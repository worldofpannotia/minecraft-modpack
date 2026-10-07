---
icon: item:minecraft:redstone
---
# Performance, libraries and technical mods

These mods mostly work behind the scenes. Performance mods make the game run faster, and libraries are code that other mods need. You don't need to do anything with them, but a few have settings worth knowing about. **Sodium** adds the *Video Settings* options, for example.

## Performance and technical

### Bobby

Lets you set render distance higher than the server's view-distance by caching chunks the server has sent and showing them again later when they are out of range. *(client)*

- Far-away terrain visible on servers with low view distance
- Config reloads automatically; screen available with Mod Menu and Cloth Config

### Carpet

Technical tooling mod (Fabric Carpet) that provides many toggleable rules and commands for technical play: tick control, loggers, hopper counters, fake players and the Scarpet scripting language. Most rules are off by default. *(both)*

- Controls: /carpet
- Controls: /tick
- Controls: /log
- Controls: /player
- Controls: /script

### Clumps

Merges nearby XP orbs into one entity to reduce lag, and makes the player collect orbs immediately on touch. *(server)*

- Fewer XP orb entities
- Immediate XP pickup on contact

### Connectivity

Fixes network problems such as login/play timeouts, DecoderExceptions and packet-size limits, with logging and diagnostics for traffic. *(both)*

### Debugify

Fixes over 70 vanilla bugs from the Mojang bug tracker, on both client and server, and nothing else. Individual fixes can be toggled in a config. *(both)*

- Bug fixes apply automatically; no player action needed.

### Dynamic FPS

Reduces frame rate, volume and other resource use when the Minecraft window is unfocused, hovered, hidden, idle or the device is on battery. Also fixes some vanilla background CPU use and stops world rendering behind the loading overlay. *(client)*

- Per-state (active, hovered, unfocused, invisible, idle, battery) settings for FPS, volume and pausing.
- Optional battery HUD and toast notifications; battery support downloads an extra library at runtime (can be disabled).
- Controls: In-game config screen needs Mod Menu and a config-screen library.

### Entity Culling

Performance mod that uses async path-tracing to skip rendering and ticking of entities and block entities hidden behind walls. Client-side, no gameplay changes. *(client)*

### Get It Together, Drops!

Lets dropped item entities merge with others over a larger area, which reduces lag from piles of loose items such as explosion craters or farm outputs. Works server-side; players need nothing installed. *(server)*

### Global Packs

Utility mod that automatically loads data packs and resource packs from a shared folder into every world, and can force-load listed resource packs. The pack uses it as plumbing rather than a gameplay feature. *(both)*

### Gnetum

Client-side performance mod that spreads HUD rendering across several frames to raise FPS. *(client)*

### Leaky - Item Lag Fix

Detects item leaks and broken farms that pile up dropped items, reduces processing for old or dense item clusters, and can report or remove oversized leaks. *(server)*

### Optimized Block Entities

Client-side mod that renders chests, shulker boxes, signs, banners and other block entities as part of terrain meshes to improve frame rate, with smooth lighting and longer render distance for them. *(client)*

### Smooth Chunk Save

Server-side performance mod that spreads chunk saves out evenly and saves them after a configured delay, reducing lag spikes. *(server)*

### Sodium

Rendering engine replacement that greatly improves frame rates and reduces stutter. *(client)*

### Sodium Extra

Adds extra video settings (particles, animations, optional overlays) on top of Sodium. *(client)*

### World of Pannotia: Vanilla Loot Copies

Internal module: unmodified copies of vanilla loot tables under the "vanilla" namespace so the pack minecraft: overrides can wrap them. It gives no gameplay changes. *(server)*


## Libraries and APIs

### Architectury API

Library that lets mods share code between Fabric and Forge. Required by other mods; adds no content. *(both)*

### Balm

Library used by Blay's mods to support multiple mod loaders. Adds no content by itself. *(both)*

### Bookshelf

Library mod by Darkhax providing shared code, datapack features and a /bookshelf debug command for other mods. *(both)*

### ChimericLib

Shared library with common code for the pack author's (chimericdream) mods. *(both)*

### Cloth Config API

Library that provides config screens for other mods. *(both)*

### Collective

Shared library for all of Serilum's mods; manages their configs and shared code. *(both)*

### Crafted Core

Shared library mod used by other mods to ease cross-loader code; adds no gameplay features. *(both)*

### Cupboard

Utility library used by other mods; adds no gameplay features. *(both)*

### Fabric API

Core API providing hooks and compatibility features used by almost all Fabric mods. *(both)*

### Fabric Language Kotlin

Language adapter that lets Fabric mods written in Kotlin run; required by some other mods. *(both)*

### Forge Config API Port

Library that provides the Forge/NeoForge config system to Fabric mods. It adds no gameplay. *(both)*

### Iceberg

Library mod providing events and helpers for other mods. It adds no gameplay. *(both)*

### JamLib

Shared library (platform abstractions, JSON5 config API) used by JamCore mods.

### Lib 5555ff

Shared datapack library (the name is a colour code, not a feature) that merges loot tables from several datapacks.

### libIPN

Settings and GUI library for Inventory Profiles Next.

### MaLiLib

Client-side library for masa's mods (Litematica, Tweakeroo, MiniHUD, Item Scroller).

### MossyLib

Library with common code and a YACL theme for the Mossy mods by LopyMine. No player-facing content. *(both)*

### Polymer

Library for server-side content that works for players without client mods. On the client it adds small compatibility features for recipe viewers, HUD info mods, and the F3 screen. *(both)*

### Prickle

Library that adds the Prickle JSON-with-comments config format used by some mods. No player-facing content. *(both)*

### Puzzles Lib

Library mod used by other mods. It does nothing on its own. *(both)*

### Resource Config API

Annotation-based JSON config library used by the Resource mods (such as Resource Backpacks); provides config screens through Mod Menu. *(both)*

### Resource Library

Common library for the Resource mods (such as Resource Backpacks); does nothing on its own. *(both)*

### SuperMartijn642's Config Lib

Configuration library used by SuperMartijn642 mods such as Simple Magnets. *(both)*

### SuperMartijn642's Core Lib

Core library used by SuperMartijn642 mods such as Simple Magnets. *(both)*

### TCD Commons API

Shared library providing common APIs for other mods. *(both)*

### Text Placeholder API

Library that lets mods and datapacks use placeholders (such as player names) in text. *(both)*

### Trinkets Updated

A data-driven accessory slot system (updated fork of Trinkets) that other mods use to add equippable trinket slots beyond vanilla armor slots. It adds no items itself, but provides the trinket slot screen and slot tooltips for items other mods make equippable. *(both)*

- Configurable UI style, slot indicator, slot-name tooltip, highlight of compatible slots when holding an item, first-person trinket rendering toggle.

### YetAnotherConfigLib

A config-screen library used by other mods (including VillagerTweaks) for their settings menus; no standalone content. *(both)*

