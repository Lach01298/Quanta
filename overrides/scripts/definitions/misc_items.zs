#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var items = [
"plastic_sheet",
"cement"
] as string[];

for i, name in items
{
	var item = VanillaFactory.createItem(name);
	item.register();
}
