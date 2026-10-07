# AFK Display

Players who stand still for a while have their name turned grey (in the tab list and on their name tag), so other players can tell they are away. Moving again removes the grey name. It is fully automatic.

## How to use

Nothing to do. Stand still and your name turns grey; move and it goes back to normal.

## What it changes

- Every second a counter ticks up for each player. Every 150 seconds (2.5 minutes) the pack compares your exact position with the previous check. If X, Y and Z are all unchanged, you join the "AFK Players" team, which has the colour grey.
- Any change in position removes you from the team within a second.
- The in-game advancement text says 5 minutes, but the code checks every 150 s, so the effective delay is roughly 2.5 to 5 minutes without moving.

## Notes

- The grey team colour can also tint your name in chat.
- Players on the team `tg_tagged` (from another pack) are skipped.
- See also [Track Statistics](track-statistics.md) and [Track Raw Statistics](track-raw-statistics.md).

