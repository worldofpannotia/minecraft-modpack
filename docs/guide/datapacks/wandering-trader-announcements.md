# Wandering Trader Announcements

Sends the chat message "A wandering trader has arrived nearby!" to players within 64 blocks (horizontal distance) of a wandering trader.

## How to use

Nothing to do; watch for the gold chat message, then see what the trader sells (see [Wandering Trades (Hermit Edition)](wandering-trades-hermit-edition.md)).

## What it changes

Every second the pack finds wandering traders it has not yet announced, tags them, and messages all players within 64 blocks horizontally. Each trader is announced once.

## Notes

- It fires for any not-yet-tagged wandering trader that loads in, not only newly spawned ones.
