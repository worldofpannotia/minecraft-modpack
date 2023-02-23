import proc from 'node:child_process';
import fse from 'fs-extra';

let override = false;
if (process.argv?.[2] === '-f') {
    console.log('-f detected; if the dist zip file exists, it will be overwritten');
    override = true;
}

await fse.emptyDir('./tmp');

await fse.ensureDir('./tmp/client');

await fse.copy('./scripts/zip-client.sh', './tmp/zip-client.sh');

await fse.copy('./client', './tmp/client');

proc.execSync('sh ./zip.sh', {cwd: './tmp/client/overrides/config/openloader/data'});
proc.execSync('sh ./zip.sh', {cwd: './tmp/client/overrides/config/openloader/resources'});

await fse.remove('./tmp/client/overrides/config/openloader/data/.gitignore');
await fse.remove('./tmp/client/overrides/config/openloader/data/zip.sh');
await fse.remove('./tmp/client/overrides/config/openloader/resources/zip.sh');

await fse.move('./tmp/client/manifest.tpl.json', './tmp/client/manifest.json');

proc.execSync('sh ./zip-client.sh', {cwd: './tmp'});

const manifest = await fse.readJson('./tmp/client/manifest.json');

const {minecraft, version} = manifest;

try {
    if (override) {
        await fse.remove(`./dist/world-of-pannotia--${minecraft.version}-${version}.zip`);
    }
    await fse.move('./tmp/client.zip', `./dist/world-of-pannotia--${minecraft.version}-${version}.zip`);
} catch (e) {
    console.error(e);
}

console.log('done!');
