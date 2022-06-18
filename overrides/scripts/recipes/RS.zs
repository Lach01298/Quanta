import crafttweaker.item.IItemStack;
import mods.nuclearcraft.AlloyFurnace;





//---rename items----

<refinedstorage:quartz_enriched_iron>.displayName = "Iridium Alloy Steel";
<refinedstorage:quartz_enriched_iron_block>.displayName = "Iridium Alloy Steel Block";

//---remove content---


var removeItems= [
<refinedstorage:processor>,
<refinedstorage:processor:1>,
<refinedstorage:processor:2>,
<refinedstorage:processor_binding>
] as  IItemStack[];

for i,item in removeItems{
	recipes.remove(item);
	mods.jei.JEI.hide(item);
}

furnace.remove(<refinedstorage:processor:3>,<refinedstorage:processor>);
furnace.remove(<refinedstorage:processor:4>,<refinedstorage:processor:1>);
furnace.remove(<refinedstorage:processor:5>,<refinedstorage:processor:2>);

//---change recipes---

recipes.remove(<refinedstorage:processor:3>);

recipes.remove(<refinedstorage:processor:4>);

recipes.remove(<refinedstorage:processor:5>);



recipes.remove(<refinedstorage:quartz_enriched_iron>*4);
AlloyFurnace.addRecipe(<ore:ingotTitaniumIridium>,<ore:ingotStainlessSteel>*5,<refinedstorage:quartz_enriched_iron>*6,1.0,1.0);


recipes.remove(<refinedstorage:core>);
recipes.addShaped(<refinedstorage:core> * 2, [[null, <qmd:discharge_lamp:6>, null],[<ore:ingotSilver>, <projectred-core:resource_item:201>, <ore:ingotSilver>], [null, <qmd:discharge_lamp:6>, null]]);

recipes.remove(<refinedstorage:core:1>);
recipes.addShaped(<refinedstorage:core:1> * 2, [[null, <qmd:discharge_lamp:6>, null],[<ore:ingotSilver>, <projectred-core:resource_item:200>, <ore:ingotSilver>], [null, <qmd:discharge_lamp:6>, null]]);