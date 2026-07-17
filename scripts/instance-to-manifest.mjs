import proc from 'node:child_process';
import fse from 'fs-extra';

try {
    const instance = await fse.readJson('./scripts/minecraftinstance.json');

    const { installedAddons } = instance;

    const files = [];

    installedAddons.forEach(addon => {
        files.push({"name": addon.name, "projectID": addon.addonID, "fileID": addon.installedFile.id, "required": true});
    });

    await fse.writeJSON('./scripts/manifest.json', files);
} catch (e) {
    console.error(e);
}

console.log('done!');
