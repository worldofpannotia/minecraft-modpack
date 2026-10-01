# Transport & Movement

This page covers getting around: moving on foot, crossing between dimensions, and teleporting. The mods tweak how you walk, crawl, fall and use Nether portals, while the pack's teleport datapacks (homes, back, spawn) provide `/trigger` commands for travelling quickly.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| AutoRun (Fabric) | Toggle hands-free walking and sprinting | Client |
| Better Portal Linking | Choose which Nether/Overworld portals connect using corner blocks | Both |
| Crawl | Crawl on demand to fit through 1-block gaps | Both |
| Smaller Nether Portals | Allows 1x2, 1x3 and 2x2 portal interiors | Server |
| Softer Hay Bales | Hay bales negate all fall damage | Server |

## On foot
### AutoRun (Fabric)
Toggle hands-free walking and sprinting with one key.
- **How it works:** Press the Auto-Run key; if you were holding a direction when you activated it, you auto-walk that way. Pressing sprint while auto-walking makes you sprint. Options: always sprint, auto jump while active, persist across dimensions/servers/respawns, and show a toggle message.
- **Controls:** **V** toggles Auto-Run by default (was O in older versions; rebindable in Controls). Press V while holding forward.
<!-- maintainer: author warns that Mod Menu without Cloth Config crashes when configuring Auto-Run; check Cloth Config is in the pack. -->

### Crawl
Lets you take the prone/swimming pose on demand, so you can fit through 1-block-high gaps without a trapdoor trick.
- **Controls:** The Crawl keybind is **unbound by default**; bind it in Options > Controls. A "Crawl Options" config screen exists. Whether it is hold or toggle depends on options (unverified).

### Softer Hay Bales
Landing on a hay bale negates fall damage entirely (vanilla only reduces it). Place hay bales below a drop and jump.

## Nether portals
**Smaller Nether Portals** shrinks the frames you need, and **Better Portal Linking** lets you control where they lead. They can be combined.

### Smaller Nether Portals
Portal frames with an interior of 1x2, 1x3 or 2x2 (width x height) can be lit and used with flint and steel; corners are optional (vanilla minimum is 4x5 frame).
- **How it works:** Vanilla can place you underneath the destination portal after using a smaller portal. The mod detects this and moves you in front of the portal, replacing netherrack, soul sand or air below with obsidian and creating an air gap where needed.
<!-- maintainer: server-side only; requires Collective. May interact with Better Portal Linking. -->

### Better Portal Linking
Choose which Nether and Overworld portals connect by placing matching blocks on the four diagonal corners of the portal frames. Portals without matching corners behave like vanilla. Made by the pack author.
- **How it works:** Blocks in the `betterportallinking:portal_address_blocks` tag (by default concrete, terracotta and glazed terracotta) on the diagonal corners form the portal's address. Corner order does not matter and a block can repeat. The portal with the most matching corners wins; ties go to the closest portal, then a consistent tiebreak so a portal always leads to the same place. No match in range falls back to vanilla linking.
- **Getting started:** Put the same colored concrete block on the corners of both your Overworld and Nether portal frames.
- **Pack note:** Config: enable address linking (default on) and log linking decisions. The tag can be extended by a datapack.

## Teleporting
The pack's teleport datapacks are controlled with `/trigger` commands:
- **Homes** ([datapack](../datapacks/homes.md)): `/trigger sethome`, `/trigger home`, `/trigger homes`, `/trigger namehome` (hold a renamed name tag in main hand), `/trigger delhome`. Add `set <ID>` to target a specific home. Default limit is one home; operators adjust limit, delay and cooldown with `/function homes:config`.
- **Spawn** ([datapack](../datapacks/spawn.md)): `/trigger spawn` teleports to world spawn, with no cost and no default cooldown.
- **Back** ([datapack](../datapacks/back.md)): `/trigger back` returns you to where you last teleported from using Homes or Spawn. Optionally (off by default) it also remembers your death location. Operators configure via `/function back:config`.

## Also relevant
- **Better Mount HUD** (client; see [Interface & HUD](interface-and-hud.md)) shows food and mount health together while riding, and shows the jump bar only while jumping.
- **Boat Item View** (client) shows the held item while sitting in a moving boat; rendering only, you still cannot use it.
- **Dismount Entity** (server) - crouch + right-click a boat, minecart or other vehicle to eject its passenger without breaking it. Dismounting other players is off by default.
- **Followers Teleport Too** (server) - when a command teleports you, standing tamed pets nearby come along (sitting pets stay) and are briefly protected from damage.
- **Swift Flight** (server) - enchantment for happy ghast harnesses; levels I-III give 40%, 60% and 80% faster flight. About 8% chance in End City chests; apply the book at an anvil.
