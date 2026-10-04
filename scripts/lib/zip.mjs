import path from 'node:path';
import fse from 'fs-extra';
import JSZip from 'jszip';

async function addDir(zip, dir) {
    for (const entry of await fse.readdir(dir, {withFileTypes: true})) {
        const full = path.join(dir, entry.name);
        if (entry.isDirectory()) {
            await addDir(zip.folder(entry.name), full);
        } else {
            zip.file(entry.name, await fse.readFile(full));
        }
    }
}

async function generate(zip) {
    return zip.generateAsync({type: 'nodebuffer', compression: 'DEFLATE'});
}

/** Zips the contents of `dir` into `outFile`. */
export async function zipDir(dir, outFile) {
    const zip = new JSZip();
    await addDir(zip, dir);
    await fse.writeFile(outFile, await generate(zip));
}

/** Zips each subdirectory of `root` into `<name>.zip` and removes the source directory. */
export async function zipSubdirs(root) {
    for (const entry of await fse.readdir(root, {withFileTypes: true})) {
        if (!entry.isDirectory()) continue;

        const dir = path.join(root, entry.name);
        await zipDir(dir, `${dir}.zip`);
        await fse.remove(dir);
    }
}
