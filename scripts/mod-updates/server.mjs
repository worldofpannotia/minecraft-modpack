// Local web UI for reviewing mod updates. Run with `npm run mods:ui`.
// Needs a CurseForge API key in CURSEFORGE_API_KEY (env or a gitignored .env at the repo root).
import http from 'node:http';
import fs from 'node:fs';
import path from 'node:path';
import {fileURLToPath} from 'node:url';

const here = path.dirname(fileURLToPath(import.meta.url));
const root = path.resolve(here, '../..');
const manifestPath = path.join(root, 'client/manifest.tpl.json');
const ignoredPath = path.join(here, 'ignored.json');
const port = Number(process.env.PORT ?? 4173);

const FABRIC = 4;
const RELEASE_TYPES = {1: 'release', 2: 'beta', 3: 'alpha'};
const PLACEHOLDER_FILE_ID = 9999999;

function loadEnv() {
    const file = path.join(root, '.env');
    if (!fs.existsSync(file)) return;
    for (const line of fs.readFileSync(file, 'utf8').split(/\r?\n/)) {
        const m = line.match(/^\s*([A-Z_]+)\s*=\s*(.*?)\s*$/);
        if (m && !(m[1] in process.env)) process.env[m[1]] = m[2].replace(/^(['"])(.*)\1$/, '$2');
    }
}
loadEnv();

const readManifest = () => JSON.parse(fs.readFileSync(manifestPath, 'utf8'));
const readIgnored = () => (fs.existsSync(ignoredPath) ? JSON.parse(fs.readFileSync(ignoredPath, 'utf8')) : {});
const writeIgnored = (data) => fs.writeFileSync(ignoredPath, JSON.stringify(data, null, 4) + '\n');

async function cf(endpoint, body) {
    const key = process.env.CURSEFORGE_API_KEY;
    if (!key) throw new Error('CURSEFORGE_API_KEY is not set (env var or .env in the repo root)');
    const res = await fetch(`https://api.curseforge.com${endpoint}`, {
        method: 'POST',
        headers: {'x-api-key': key, 'User-Agent': 'pannotia-mod-updates','Content-Type': 'application/json', Accept: 'application/json'},
        body: JSON.stringify(body),
    });
    if (!res.ok) {
        const hint = res.status === 403
            ? ` (key rejected; the server read a ${key.length}-char key starting "${key.slice(0, 4)}". CurseForge keys start with "$2a$10$" and are 60 chars; if yours doesn't, a "$" was probably eaten by the shell)`
            : '';
        throw new Error(`CurseForge ${endpoint} -> ${res.status} ${(await res.text()).slice(0, 200)}${hint}`);
    }
    return (await res.json()).data;
}

let cache = null; // {fetchedAt, mods: Map(projectID -> mod), files: Map(fileID -> file)}

async function refresh() {
    const manifest = readManifest();
    const entries = [...manifest.files, ...(manifest.files_waiting ?? [])];
    const modIds = [...new Set(entries.map((e) => e.projectID))];
    const fileIds = entries.filter((e) => e.fileID !== PLACEHOLDER_FILE_ID).map((e) => e.fileID);
    const [mods, files] = await Promise.all([
        cf('/v1/mods', {modIds, filterPcOnly: true}),
        cf('/v1/mods/files', {fileIds}),
    ]);
    cache = {
        fetchedAt: new Date().toISOString(),
        mods: new Map(mods.map((m) => [m.id, m])),
        files: new Map(files.map((f) => [f.id, f])),
    };
}

function build() {
    const manifest = readManifest();
    const mcVersion = manifest.minecraft.version;
    const ignored = readIgnored();

    const row = (entry, waiting) => {
        const mod = cache.mods.get(entry.projectID);
        const current = cache.files.get(entry.fileID);
        const candidates = (mod?.latestFilesIndexes ?? [])
            .filter((i) => i.gameVersion === mcVersion && (i.modLoader == null || i.modLoader === FABRIC))
            .map((i) => ({fileID: i.fileId, filename: i.filename, type: RELEASE_TYPES[i.releaseType] ?? 'unknown'}));
        const ignoredIds = ignored[entry.projectID] ?? [];
        const newer = candidates.filter((c) => c.fileID > entry.fileID).sort((a, b) => b.fileID - a.fileID);
        return {
            name: entry.name,
            projectID: entry.projectID,
            waiting,
            logo: mod?.logo?.thumbnailUrl ?? null,
            author: mod?.authors?.[0]?.name ?? '',
            url: mod?.links?.websiteUrl ?? `https://www.curseforge.com/projects/${entry.projectID}`,
            currentFileID: entry.fileID,
            currentFilename: waiting ? null : (current?.fileName ?? null),
            update: newer.find((c) => !ignoredIds.includes(c.fileID)) ?? null,
            ignoredUpdates: newer.filter((c) => ignoredIds.includes(c.fileID)),
        };
    };

    return {
        mcVersion,
        packVersion: manifest.version,
        fetchedAt: cache.fetchedAt,
        mods: manifest.files.map((e) => row(e, false)),
        waiting: (manifest.files_waiting ?? []).map((e) => row(e, true)),
    };
}

// Edits the one manifest line in place so the file's formatting is left alone.
async function applyUpdate(projectID, fileID) {
    const lines = fs.readFileSync(manifestPath, 'utf8').split('\n');
    const pattern = new RegExp(`"projectID":\\s*${projectID}\\b`);
    const idx = lines.findIndex((l) => pattern.test(l));
    if (idx < 0) throw new Error(`projectID ${projectID} not found in manifest`);
    lines[idx] = lines[idx].replace(/("fileID":\s*)\d+/, `$1${fileID}`);
    fs.writeFileSync(manifestPath, lines.join('\n'));
    (await cf('/v1/mods/files', {fileIds: [fileID]})).forEach((f) => cache.files.set(f.id, f));
}

const readBody = (req) =>
    new Promise((resolve, reject) => {
        let s = '';
        req.on('data', (c) => (s += c));
        req.on('end', () => {
            try {
                resolve(s ? JSON.parse(s) : {});
            } catch (e) {
                reject(e);
            }
        });
    });

const send = (res, status, body, type = 'application/json') => {
    res.writeHead(status, {'Content-Type': type});
    res.end(type === 'application/json' ? JSON.stringify(body) : body);
};

http.createServer(async (req, res) => {
    try {
        const url = new URL(req.url, `http://${req.headers.host}`);
        if (req.method === 'GET' && url.pathname === '/') {
            return send(res, 200, fs.readFileSync(path.join(here, 'public/index.html')), 'text/html; charset=utf-8');
        }
        if (req.method === 'GET' && url.pathname === '/api/mods') {
            if (!cache || url.searchParams.has('refresh')) await refresh();
            return send(res, 200, build());
        }
        if (req.method === 'POST' && url.pathname === '/api/ignore') {
            const {projectID, fileID, ignored} = await readBody(req);
            const data = readIgnored();
            const set = new Set(data[projectID] ?? []);
            if (ignored) set.add(fileID);
            else set.delete(fileID);
            if (set.size) data[projectID] = [...set].sort((a, b) => a - b);
            else delete data[projectID];
            writeIgnored(data);
            return send(res, 200, build());
        }
        if (req.method === 'POST' && url.pathname === '/api/apply') {
            const {projectID, fileID} = await readBody(req);
            await applyUpdate(projectID, fileID);
            return send(res, 200, build());
        }
        send(res, 404, {error: 'not found'});
    } catch (e) {
        send(res, 500, {error: e.message});
    }
}).listen(port, '127.0.0.1', () => console.log(`Mod updates UI: http://localhost:${port}`));
