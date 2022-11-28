import proc from 'node:child_process';
import fse from 'fs-extra';

await fse.emptyDir('./tmp');

await fse.ensureDir('./tmp/client');
await fse.ensureDir('./tmp/client-he');

await fse.copy('./scripts/zip-client.sh', './tmp/zip-client.sh');

await fse.copy('./client', './tmp/client');

proc.execSync('sh ./zip.sh', {cwd: './tmp/client/overrides/config/openloader/data'});
proc.execSync('sh ./zip.sh', {cwd: './tmp/client/overrides/config/openloader/resources'});

await fse.remove('./tmp/client/overrides/config/openloader/data/.gitignore');
await fse.remove('./tmp/client/overrides/config/openloader/data/zip.sh');
await fse.remove('./tmp/client/overrides/config/openloader/resources/zip.sh');

await fse.copy('./tmp/client', './tmp/client-he');

await fse.remove('./tmp/client/manifest-he.tpl.json');
await fse.remove('./tmp/client/modlist-he.html');
await fse.remove('./tmp/client-he/manifest.tpl.json');
await fse.remove('./tmp/client-he/modlist.html');

await fse.move('./tmp/client/manifest.tpl.json', './tmp/client/manifest.json');
await fse.move('./tmp/client-he/manifest-he.tpl.json', './tmp/client-he/manifest.json');
await fse.move('./tmp/client-he/modlist-he.html', './tmp/client-he/modlist.html');

await fse.remove('./tmp/client/overrides/config/openloader/data/world-of-pannotia-he.zip');
await fse.remove('./tmp/client/overrides/config/villagertweaks-he.json5');

await fse.remove('./tmp/client-he/overrides/config/openloader/data/back.zip');
await fse.remove('./tmp/client-he/overrides/config/openloader/data/homes.zip');
await fse.remove('./tmp/client-he/overrides/config/openloader/data/spawn.zip');
await fse.remove('./tmp/client-he/overrides/config/openloader/data/world-of-pannotia.zip');
await fse.remove('./tmp/client-he/overrides/config/villagertweaks.json5');

await fse.move('./tmp/client-he/overrides/config/villagertweaks-he.json5', './tmp/client-he/overrides/config/villagertweaks.json5');

proc.execSync('sh ./zip-client.sh', {cwd: './tmp'});

console.log('done!');
