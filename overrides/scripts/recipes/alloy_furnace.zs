import mods.immersiveengineering.AlloySmelter;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.SaltMixer;

// disable steel
AlloyFurnace.removeRecipeWithOutput(<ore:ingotSteel>);
AlloyFurnace.removeRecipeWithOutput(<ore:blockSteel>);

// change recipes

AlloyFurnace.removeRecipeWithOutput(<ore:ingotTough>*2);
AlloyFurnace.addRecipe(<ore:ingotFerroboron>,<ore:ingotStainlessSteel>,<ore:ingotTough>*2,1.0,1.0);
SaltMixer.removeRecipeWithOutput(<fluid:tough>*144);



