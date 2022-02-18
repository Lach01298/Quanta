#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

var minerals = [
"amphibole",
"feldspar",
"mica",
"pyroxene",
"olivine",
"garnet",
"dolomite",
"talc",
"phosphorite",
"calcite",
"spodumene",
"uranite",
"columbite",
"zircon",
"monazite",
"scheelite"
] as string[];

for i, name in minerals
{
	var mineral = VanillaFactory.createItem(name);
	mineral.register();
}



