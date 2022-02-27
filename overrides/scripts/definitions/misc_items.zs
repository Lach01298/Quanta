#loader contenttweaker

import mods.contenttweaker.Item;
import mods.contenttweaker.VanillaFactory;

var items = [
"plastic_sheet",
"cement",
"carbon_filament",
"light_bulb"
] as string[];

for i, name in items
{
	var item = VanillaFactory.createItem(name);
	item.register();
}
