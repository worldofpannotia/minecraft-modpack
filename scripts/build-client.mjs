import proc from 'node:child_process';
import fse from 'fs-extra';

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

console.log('done!');
