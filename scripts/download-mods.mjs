import fsp from 'fs/promises';
import cp from 'child_process';

const clientModIds = [
    414086, // Advancement Screenshot
    373311, // Armor Slots in Other Inventories
    272515, // Better Advancements
    446253, // Better Biome Blend
    431587, // Charmonium Reforged
    308240, // Cherished Worlds
    250398, // Controlling
    238891, // Dynamic Surroundings
    250419, // Enchantment Descriptions
    363363, // Extreme Sound Muffler
    422719, // EZZoom
    261725, // Item Zoom
    375272, // Lava Clear View
    325492, // Light Overlay
    60089, // Mouse Tweaks
    238372, // Neat
    374828, // Omega Mute
    440465, // Panorama
    407174, // Shutup Experimental Settings
    271740, // Toast Control
];

const download = async (mod) => {
    if (clientModIds.includes(mod.addonID)) {
        return;
    }

    console.log(`Downloading ${mod.installedFile.fileName}...`);

    const cmd = `curl -s -L -o "../tmp/server/mods/${mod.installedFile.fileName}" "${mod.installedFile.downloadUrl}"`;
    cp.execSync(cmd);
};

try {
    const rawConfig = await fsp.readFile('minecraftinstance.json');
    const config = JSON.parse(rawConfig);
    const addons = config.installedAddons;

    for (const mod of addons) {
        await download(mod);
    }

    console.log('Done!');
}
catch (err) {
    console.log(err);
}
