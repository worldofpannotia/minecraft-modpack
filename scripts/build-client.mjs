import proc from 'node:child_process';
import fse from 'fs-extra';

let override = false;
if (process.argv?.[2] === '-f') {
    console.log('-f detected; if the dist zip file exists, it will be overwritten');
    override = true;
}

let devBuild = false;
if (process.argv?.[2] === '-d') {
    console.log('-d detected; building dev version');
    devBuild = true;
    override = true;
}

await fse.emptyDir('./tmp');

await fse.ensureDir('./tmp/client');

await fse.copy('./scripts/zip-client.sh', './tmp/zip-client.sh');

await fse.copy('./client', './tmp/client');

proc.execSync('sh ./zip.sh', {cwd: './tmp/client/overrides/global_packs/required_data'});
proc.execSync('sh ./zip.sh', {cwd: './tmp/client/overrides/global_packs/required_resources'});

await fse.remove('./tmp/client/overrides/global_packs/required_data/.gitignore');
await fse.remove('./tmp/client/overrides/global_packs/required_data/zip.sh');
await fse.remove('./tmp/client/overrides/global_packs/required_resources/zip.sh');

await fse.move('./tmp/client/manifest.tpl.json', './tmp/client/manifest.json');

const manifest = await fse.readJson('./tmp/client/manifest.json');

const {minecraft, version} = manifest;

let fileName = `world-of-pannotia--${minecraft.version}-${version}`;

if (devBuild) {
    manifest.name = 'World of Pannotia (dev build)';
    fileName += '--dev';

    await fse.writeJSON('./tmp/client/manifest.json', manifest, {spaces: 4});
}

proc.execSync('sh ./zip-client.sh', {cwd: './tmp'});

try {
    if (override) {
        await fse.remove(`./dist/${fileName}.zip`);
    }
    await fse.move('./tmp/client.zip', `./dist/${fileName}.zip`);
} catch (e) {
    console.error(e);
}

console.log('done!');
