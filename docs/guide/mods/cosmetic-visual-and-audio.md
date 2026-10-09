# Cosmetic, Visual & Audio

This part of the pack is almost entirely client-side polish: particles, water and sky rendering, resource-pack support that OptiFine would normally provide, and a sound muffler. None of it changes gameplay, and most of it works automatically. Several mods (Continuity, Entity Texture Features, Entity Model Features and OptiGUI) do nothing by themselves and only take effect when you enable a resource pack that uses the matching OptiFine-style format.

## At a glance
| Mod / pack | What it does | Side |
|---|---|---|
| Armored Elytra | Renders a chestplate and elytra on the player together | Client |
| Axolotl Bucket Fix | Axolotl buckets show the real axolotl variant and age | Client |
| Bathymetry | Tints water darker with depth; optional underwater fog | Client |
| Capes | Shows OptiFine, LabyMod, Cosmetica, Wynntils, Capes++ and MinecraftCapes capes | Client |
| Continuity | Connected, emissive and custom-layer block textures for resource packs | Client |
| Entity Model Features (CEM) | OptiFine-format custom entity models from resource packs | Client |
| Entity Texture Features | OptiFine-style random, custom, emissive and blinking entity textures | Client |
| Extreme Sound Muffler | Mute or lower almost any sound from an in-game list | Client |
| Falling Leaves | Leaf blocks shed falling-leaf particles | Client |
| Fluid Void Fading | Fluids flowing off the world bottom fade out smoothly | Client |
| Music Notification | A toast shows the track name, author and album when music plays | Client |
| No More Potion Particles | Hides your own potion-effect particles in first person | Client |
| OptiGUI | Custom GUI textures from resource packs | Client |
| SB's Enchantment Effects | Level-scaled particles and sounds for combat enchantments | Client |
| Vectorientation | Falling blocks rotate and squash/stretch with speed | Client |
| Visuality | Extra particles: sparkles, hit effects, slime blobs, soul, water circles, shiny armor/blocks | Client |

## Particles and ambient effects
**Falling Leaves**, **Visuality**, **SB's Enchantment Effects** and **Vectorientation** add motion and particles to the world. All are configurable through Mod Menu.

### Falling Leaves
Leaf blocks shed falling-leaf particles. Works with modded trees and resource packs.
- **How it works:** Stand under or near a tree. Conifer, jungle-type large-leaf trees and shrubs do not drop leaves by default; raise their spawn rate in settings if you want them to.
- **Pack note:** Leaf size, lifespan, spawn rate, wind and per-block settings are configurable via Mod Menu (Cloth Config).
<!-- maintainer: client only. Jar is named for 26.1 (fallingleaves-2.0.7+26.1) but listed for the 26.2 pack; verify it loads. -->

### Visuality
Client-side particle additions: crystal sparkles, hit particles when mobs are struck, slime blob particles, soul particles, water circles, and shiny armor and blocks.
- **How it works:** Options cover slime blobs (color), charge particle, sparkle particle, soul particle, water circles (colored, density, radius), hit particles (entries), shiny armor (entries) and shiny blocks (entries). Each can be toggled and tuned in Mod Menu or `visuality.json`.
<!-- maintainer: requires Cloth Config. The jar filename says +26.3 while the pack targets 26.2; verify it loads. -->

### SB's Enchantment Effects
Purely visual particles and sounds that scale with enchantment level, making combat enchantments look more impactful.
- **How it works:** Sharpness: magic slash. Smite: holy beam. Bane of Arthropods: banish effect. Fire Aspect: rings of fire (more with level). Knockback: gusts of wind. Thorns: guardian-style shield that strikes attackers. Effects for bow, trident and mace enchantments are planned but not yet present.
- **Pack note:** No gameplay changes.

### Vectorientation
Falling blocks (sand, gravel, anvils and so on) rotate to face the direction they travel and get a squash-and-stretch effect based on speed. The amount can be configured or disabled per block. Purely client-side.

## Water, fluids and blocks
### Bathymetry
Tints water according to its depth: shallows look normal, deep water gets darker, so oceans and puddles no longer look identical. Biome water colors are preserved.
- **How it works:** Water is tinted between a shallow and a deep tint over a configurable depth range, with smoothing across drop-offs. Optional underwater fog thickens with depth when submerged (disabled by default).
- **Pack note:** Works automatically; adjust via Mod Menu or `config/bathymetry.json5`. Some shaders override water color and ignore the mod.
<!-- maintainer: requires MossyLib. -->

### Fluid Void Fading
Fluids flowing off the bottom of the world fade out smoothly instead of being cut off abruptly.
<!-- maintainer: Modrinth notes it does not work with Sodium, and Sodium IS in the pack; verify it actually has an effect. Lava may need to be added in config as its texture is not transparent. -->

### Axolotl Bucket Fix
Axolotl buckets show the actual axolotl color inside instead of always the pink one, and baby axolotl textures show the age of the occupant.
- **Vanilla change:** Bucket item texture reflects axolotl variant and age (visual only). Nothing to configure; scoop up an axolotl and look at the bucket.
<!-- maintainer: also has textures for More Axolotl Variants. -->

## Resource-pack support (OptiFine replacements)
These mods let resource packs use formats originally made for OptiFine. They have no effect until you enable a compatible pack under Options > Resource Packs.

### Continuity
Connected textures, emissive textures (blocks and item models only) and custom block layers.
- **How it works:** Ships two built-in packs, "Default Connected Textures" (glass, sandstone, bookshelves) and "Glass Pane Culling Fix" (removes faces between vertically stacked panes so they look seamless). Both can be toggled in the resource pack screen. Any pack using the OptiFine or Continuity connected-texture, emissive or custom-layer formats works.
- **Controls:** Config screen toggles: Connected Textures, Emissive Textures, Custom Block Layers.
<!-- maintainer: compatibility with other rendering mods in the pack is not verified. -->

### Entity Texture Features and Entity Model Features (CEM)
**Entity Texture Features** adds OptiFine-style random, custom, emissive and blinking entity textures. **Entity Model Features (CEM)** adds OptiFine-format custom entity models; it requires Entity Texture Features. Neither does anything without a pack that uses these formats. Both are client-side.

### OptiGUI
Enables custom GUI textures from resource packs, including OptiFine custom GUI packs. No effect unless a compatible pack is enabled.
<!-- maintainer: requires Fabric Language Kotlin; version is a 2.3.0 beta. -->

## Player appearance
### Armored Elytra
Renders both the worn chestplate and the elytra on the player model. It adds no recipe of its own; combining the two items needs a separate datapack (unverified whether the pack includes one).
<!-- maintainer: jar missing from facts. Modrinth says it needs a separate datapack (Vanilla Tweaks Armored Elytra or Voodoo Beard's Plated Elytra) and lists support only up to 1.20.4; the pack uses CurseForge project 1056156, which may be a newer file. No armored elytra datapack found by name in datapack facts. Verify. -->

### Capes
Displays capes from OptiFine, LabyMod, Cosmetica, Wynntils, Capes++ and MinecraftCapes on you and on other players.
- **Controls:** Configure via Mod Menu: choose the cape type, toggle the cape texture on elytra, use a cape selector, or open the OptiFine cape editor.
<!-- maintainer: requires Fabric Language Kotlin. -->

## Audio
### Extreme Sound Muffler
Mute or lower the volume of almost any sound from an in-game list. Client only; installing on a server does nothing.
- **How it works:** Open the muffler screen, pick a sound, optionally set its volume (mute to 90%) and preview it with the play button. Lists: all, muffled, recent, blocks, mods. Up to 10 named, movable **anchors** muffle selected sounds only within a configurable range of a marked position.
- **Controls:** Click the muffler button in your inventory, then the button next to the sound to silence. You can also assign a key in Controls; the inventory button can be dragged with right mouse or disabled in config.
<!-- maintainer: default keybind not documented in facts. -->

### Music Notification
Shows a toast notification whenever music plays, with the track's name, author and album. Client only.

### No More Potion Particles
Removes the swirling potion-effect particles from your first-person view, so active effects no longer clutter the screen. Client only.
- **How it works:** It only affects first person. Potion particles are still shown in third person and on other players in multiplayer.

## Also relevant
- **Armor Statues** datapack (see [Building & Decoration](building-and-decoration.md) and [../datapacks/armor-statues.md](../datapacks/armor-statues.md)) lets you pose armor stands and make item frames invisible, handy for showing off cosmetic gear.
- **Silence Mobs** datapack (see [Quality of Life](quality-of-life.md) and [../datapacks/silence-mobs.md](../datapacks/silence-mobs.md)): name a mob "Silence me" with a name tag to stop its sounds, "Unsilence me" to restore them.
- **More Mob Heads** (part of the World of Pannotia datapack; see [Loot & Drops](loot-and-drops.md) and [../datapacks/world-of-pannotia.md](../datapacks/world-of-pannotia.md)): nearly every mob can drop a decorative head matching its variant.
- **Just Player Heads** (see [Loot & Drops](loot-and-drops.md)): players drop their own head on death, and a command can spawn any player's head.
- **Audio Player** (see [Multiplayer & Server](multiplayer-and-server.md)): server-side; upload your own mp3/wav and attach it to music discs, goat horns and note blocks with heads. Requires Simple Voice Chat; no client mod or resource pack needed.
- **Visual Workbench** (see [Quality of Life](quality-of-life.md)): crafting tables keep the items in the grid when closed and render the ingredients and result on top of the block.
