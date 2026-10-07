---
icon: item:minecraft:filled_map
---
# Maps & Navigation

Finding your way in Pannotia comes from three directions: Xaero's mods give you a live minimap and a full-screen world map with waypoints, two craftable compasses locate biomes and structures for you, and Areas names regions of the world with signs.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Areas | Sign-defined named areas with enter/leave messages | Client |
| Explorer's Compass | Compass that locates structures | Both |
| Nature's Compass | Compass that locates biomes | Both |
| Xaero's Minimap | Corner minimap, in-world waypoints, cave mode, radar | Both |
| Xaero's World Map | Full-screen self-writing map, shows waypoints, PNG export | Both |

## Minimap and world map
**Xaero's Minimap** and **Xaero's World Map** are designed to work together. The minimap is the always-on corner view; the world map is the full-screen explored-area view (press M). Waypoints you create appear in both, and in the world itself.

### Xaero's Minimap
A vanilla-styled minimap showing terrain, mobs, players and items, with waypoints visible in the world.
- **How it works:** Waypoints can be created, edited, hidden, shared in chat, grouped into sets, and (with permission) teleported to; they can be local or global with a max draw distance. Cave mode switches on automatically under a roof. The radar shows entities as dots or icons; the map can be square or circle, with a lock-north option. Servers can enforce a config profile and restrict features with the effects `xaerominimap:no_minimap`, `no_entity_radar`, `no_waypoints` and `no_cave_maps`. The minimap can also be bound to an item held in the hotbar or equipped.
- **Controls:** Z enlarges the minimap, B creates a waypoint, U opens the waypoint list. All keys can be rebound in Controls.

### Xaero's World Map
A full-screen, self-writing map of explored areas that shows Minimap waypoints. Supports multiple maps per server and cave dimensions such as the Nether.
- **How it works:** Includes a waypoint menu, footsteps showing your recent path, an optional vanilla-map look, and PNG export. Servers can enforce a profile and restrict use with the effects `xaeroworldmap:no_world_map` and `no_wm_cave_maps`.
- **Controls:** M opens the map; drag to move, scroll wheel to zoom.

## Compasses
Both compasses point at world spawn when not tracking anything, show search results on the HUD, and are reset with Shift + right-click. They differ only in target: **Nature's Compass** finds biomes, **Explorer's Compass** finds structures.

### Explorer's Compass
Locates structures (vanilla and modded).
- **New:** Explorer's Compass, crafted with cobweb in the four corners, cracked stone bricks on the edges and a compass in the centre (WSW / SCS / WSW). Combining it with a regular compass (shapeless) repairs it.
- **How it works:** Right-click opens a GUI listing structures or structure groups; pick one to start a search. Progress and the located structure's info show on the HUD.
- **Controls:** Right-click: open selection GUI. Shift + right-click: reset.
- **Pack note:** Maximum search radius and blacklisted structures are set in the config file. Needed on both client and server.

### Nature's Compass
Searches for a chosen biome anywhere in the world and shows information about it.
- **New:** Nature's Compass, crafted SLS / LCL / SLS (S = any sapling, L = any log, C = compass). Shapeless repair: Nature's Compass + compass.
- **How it works:** Right-click opens the biome selection screen, where you can search for a biome, view its info and start the search.
- **Controls:** Right-click: open GUI. Shift + right-click: reset.
- **Pack note:** Blacklisted biomes and max search distance are in the config file.

## Named areas
### Areas
Lets any player define a named area (town, base, region) by placing a sign. Walking into or out of the radius shows a message at the top of the screen, such as "Entering Desert Island."
- **How it works:** Place a sign with a radius prefix such as `[R:10]` (or `[Radius:10]`) on one line and the area name on another; an optional `[RGB]` prefix sets a custom message color. An empty radius uses the default (30 blocks); a blank name gets a random name. Breaking the sign removes the area. Areas can overlap; the message only shows on entering the first or leaving the last overlapping area. Signs are checked within 100 blocks of the player by default; prefixes, chat vs HUD messages and text color/size are configurable. (Exact sign line layout is approximate; unverified.)
- **Controls:** `/areas` lists all area signs around you. Quick start: write `[R:20]` on one line and a name on another, then walk across the boundary.
- **Pack note:** Needs the mod on the client.

## Also relevant
- **Litematica** (see [Building & Decoration](04-building-and-decoration.md)): client-side schematic mod that renders ghost-block blueprints of builds; no built-in printer.
- **Open Parties and Claims** (see [Multiplayer & Server](15-multiplayer-and-server.md)): chunk claims and parties; integrates with Xaero's Minimap and World Map so claims can be viewed and edited on the maps.
- **Random Village Names** (see [Villagers & Trading](06-villagers-and-trading.md)): each village gets a random name on a sign at its centre, shown on screen via Areas when you enter.
