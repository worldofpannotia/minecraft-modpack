import fs from 'fs'; import path from 'path';
const ROOT='C:/Users/bill/code/minecraft-mods', FACTS='work/facts/mods';
const manual={archtweaks:'archaeology-tweaks',enchantnumfix:'enchantment-numbers-fix',athenaeum:'athenaeum',chimericlib:'chimeric-lib'};
const dirs=Object.fromEntries(fs.readdirSync(ROOT).filter(d=>fs.existsSync(path.join(ROOT,d,'README.md'))).map(d=>[d.replace(/-/g,''),d]));
let n=0;
for (const f of fs.readdirSync(FACTS)) { const fp=path.join(FACTS,f); const j=JSON.parse(fs.readFileSync(fp,'utf8'));
  const d=manual[j.modId] ?? dirs[j.modId];
  if (d) { j.authorReadme=fs.readFileSync(path.join(ROOT,d,'README.md'),'utf8').slice(0,12000); j.packAuthorsOwnMod=true; fs.writeFileSync(fp,JSON.stringify(j,null,1)); n++; console.log(j.modId,'->',d); } }
console.log('attached',n);
