# Mod updates UI: handoff

Branch: `feat/mod-update-ui`. Status: **written, not yet run against real CurseForge data.** Blocked on a CurseForge API key.

## What it is

A local web app that lists every mod in `client/manifest.tpl.json`, shows the current file, and flags when a newer file exists for the pack's Minecraft version on Fabric. Individual updates can be ignored (for versions that conflict with other mods), and an update can be written straight into the manifest.

- `scripts/mod-updates/server.mjs`: dependency-free Node HTTP server and CurseForge client
- `scripts/mod-updates/public/index.html`: single-page UI (no build step)
- `scripts/mod-updates/ignored.json`: created on first ignore; `{ "<projectID>": [<ignored fileIDs>] }`. Meant to be committed.
- `npm run mods:ui` starts it at http://localhost:4173 (`PORT` env var overrides)

## Blocker: API key

The first key tried returned 403 (wrong kind of key). A proper key was applied for at console.curseforge.com and is pending approval.

When it arrives:

1. Create `.env` in the repo root (already gitignored): `CURSEFORGE_API_KEY='$2a$10$...'`. Use single quotes; the key contains `$`. Real keys are 60 chars and start with `$2a$10$`.
2. `npm run mods:ui`, open the page.
3. If it still fails, the page's error line shows the HTTP status, response body, and the length and first four characters of the key the server read. A key that isn't 60 chars or doesn't start with `$2a$` has been mangled (usually by the shell eating `$`).

## How it works

- Reads `files` and `files_waiting` from the manifest.
- `POST /v1/mods` (bulk) gives names, logos, authors and `latestFilesIndexes`. `POST /v1/mods/files` (bulk) gives the current file names.
- A candidate update is any entry in `latestFilesIndexes` with `gameVersion == manifest.minecraft.version`, Fabric (modLoader 4) or unspecified, and `fileId > current fileID`. File IDs increase over time, so this is the "newer" test. The newest non-ignored candidate is shown, with its release type (release/beta/alpha).
- Ignore stores that specific fileID. A later file shows up again. Ignored files stay listed under the mod with an Unignore button.
- "Update manifest" rewrites only that mod's `"fileID"` on its own line, so manifest formatting is preserved. Review with `git diff`.
- `files_waiting` entries (placeholder fileID 9999999) appear in their own table and say when a build for the pack's MC version exists. Moving them into `files` is still manual.
- Results are cached in memory; "Refresh from CurseForge" re-queries.

## Things to verify first run

These are assumptions I could not test:

- `latestFilesIndexes` contains entries for the pack's version string (`26.2`). If CurseForge lists the version differently (e.g. `26.2.0`), no updates will ever show; adjust the `gameVersion` filter in `build()`.
- `latestFilesIndexes` only holds the latest file per release type, so a mod with a release and a newer beta shows the beta. Consider a release-only toggle if that is noisy.
- Bulk `POST /v1/mods` with ~230 IDs and `POST /v1/mods/files` with ~210 IDs are accepted in one request. If the API rejects the size, chunk them in `refresh()`.
- Mods that are no longer on CurseForge or were deleted will show with no logo and no author.

## Ideas, not done

- Release-only filter / per-mod channel preference
- Chunked requests and an on-disk cache so restarts don't re-query
- Moving a `files_waiting` mod into `files` from the UI
- Dependency or compatibility hints when ignoring

## Notes

- Updating a mod does not touch `CHANGELOG.md`; per-mod entries are skipped until the 26.2 release (see project memory).
- The server binds to 127.0.0.1 only and has no auth, since it can write the manifest.
