import fse from 'fs-extra';

import {zipDir, zipSubdirs} from './lib/zip.mjs';

if (process.argv?.[2] === '-h' || process.argv?.[2] === '--help') {
    console.log('Usage:');
    console.log('node ./scripts/build-client.mjs <flag>\n');
    console.log('-f          Force overwriting existing output zip file');
    console.log('-d,--dev    Build a dev version of the pack');
    console.log('-h,--help   Display this help screen');
    process.exit(0);
}

let override = false;
if (process.argv?.[2] === '-f') {
    console.log('-f detected; if the dist zip file exists, it will be overwritten');
    override = true;
}

let devBuild = false;
if (process.argv?.[2] === '-d' || process.argv?.[2] === '--dev') {
    console.log('-d detected; building dev version');
    devBuild = true;
    override = true;
}

await fse.emptyDir('./tmp');

await fse.ensureDir('./tmp/client');

await fse.copy('./client', './tmp/client');

// legacy config kept in the repo for reference only; never ship it
await fse.remove('./tmp/client/overrides/config.old');

for (const dir of ['datapacks', 'resourcepacks']) {
    const packDir = `./tmp/client/overrides/${dir}`;
    if (await fse.pathExists(packDir)) {
        await zipSubdirs(packDir);
    }
}

await fse.move('./tmp/client/manifest.tpl.json', './tmp/client/manifest.json');

const manifest = await fse.readJson('./tmp/client/manifest.json');

const {minecraft, version} = manifest;

let fileName = `world-of-pannotia--${minecraft.version}-${version}`;

if (devBuild) {
    manifest.name = 'World of Pannotia (dev build)';
    fileName += '--dev';

    await fse.writeJSON('./tmp/client/manifest.json', manifest, {spaces: 4});
}

await zipDir('./tmp/client', './tmp/client.zip');

try {
    if (override) {
        await fse.remove(`./dist/${fileName}.zip`);
    }
    await fse.move('./tmp/client.zip', `./dist/${fileName}.zip`);
} catch (e) {
    console.error(e);
}

console.log('done!');
