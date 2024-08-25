# X Marks the Spot
*By AjaxGb*

[GitHub](https://github.com/AjaxGb/XMarksTheSpot/) | [Planet Minecraft](https://www.planetminecraft.com/data-pack/x-marks-the-spot-5565485/)

A Minecraft datapack that displays an "X" on the ground when you're near the target of a treasure map. No more digging up the entire beach to find a single chest!

The "X" appears when you're holding a treasure map and close to the target.

Download the latest version from [the releases page](https://github.com/AjaxGb/XMarksTheSpot/releases).

## Configuring render distance

By default, the "X" appears when you're within 5 (horizontal) blocks of the target. This can be changed, either globally or for individual players, using the `x_marks_the_spot_render_distance` scoreboard objective.

To increase the global default distance to 10 blocks, use
```
/scoreboard players set #DEFAULT x_marks_the_spot_render_distance 10
```

To increase an individual player's distance to 10 blocks, use
```
/scoreboard players set SomePlayer x_marks_the_spot_render_distance 10
```

To remove an individual player's distance (returning them to the global default distance), use
```
/scoreboard players reset SomePlayer x_marks_the_spot_render_distance
```

Negative distances will be ignored. The value you set must be 0 or greater.

## Known Issues

- [Particles can't be seen through transparent blocks on Fast or Fancy graphics.](https://bugs.mojang.com/browse/MC-188529) So if the "X" is underwater and your computer can't handle Fabulous graphics, you'll have to dive underwater to see it.

## Changelog

- v1.0
    - Initial release.
- v1.1
    - Fix the "X" appearing at the surface of water, instead of on the ground underwater.
- v1.2
    - Minor stability and performance improvements.
- v1.3
    - Fix the "X" showing up in other dimensions at the same coordinates.
- v1.4
    - Make the "X" match terrain better (passes through blocks like torches and fences, appears on top of half slabs instead of hovering above them, etc.).
- v2.0
    - Update to Minecraft 1.20.3.
    - Make the "X" no longer appear after the chest has been uncovered.
- v3.0
    - Update to Minecraft 1.21.
    - Make render distance configurable.
    - Fix the "X" not appearing if you rename the map item.
