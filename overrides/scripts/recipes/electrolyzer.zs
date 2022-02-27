import mods.nuclearcraft.Electrolyzer;
import mods.immersivetechnology.ElectrolyticCrucibleBattery;

//---ElectrolyticCrucibleBattery as Electrolysis---

var electrolyzerTime = 400 as int;
var electrolyzerEnergy = 320000 as int; //4x faster than NC Electrolyzer 

Electrolyzer.removeRecipeWithInput(<fluid:water>*250);
Electrolyzer.removeRecipeWithInput(<fluid:heavy_water>*250);
Electrolyzer.removeRecipeWithInput(<fluid:naoh>*333);
Electrolyzer.removeRecipeWithInput(<fluid:koh>*333);
Electrolyzer.removeRecipeWithInput(<fluid:alumina>*72);

Electrolyzer.addRecipe(<fluid:water>*500,<fluid:hydrogen>*500,<fluid:oxygen>*250,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:hydrogen>*500, <fluid:oxygen>*250, null, null, <fluid:water>*500, electrolyzerEnergy, electrolyzerTime);

Electrolyzer.addRecipe(<fluid:heavy_water>*500,<fluid:deuterium>*500,<fluid:oxygen>*250,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:deuterium>*500, <fluid:oxygen>*250, null, null, <fluid:heavy_water>*500, electrolyzerEnergy, electrolyzerTime);

Electrolyzer.addRecipe(<fluid:hydrofluoric_acid>*250,<fluid:hydrogen>*500,<fluid:fluorine>*250,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:hydrogen>*500, <fluid:fluorine>*250, null, null, <fluid:hydrofluoric_acid>*250, electrolyzerEnergy, electrolyzerTime);

Electrolyzer.addRecipe(<fluid:alumina>*72,<fluid:aluminum>*144,<fluid:oxygen>*1500,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:aluminum>*144, <fluid:oxygen>*1500, null, null, <fluid:alumina>*72, electrolyzerEnergy, electrolyzerTime);

ElectrolyticCrucibleBattery.addRecipe(<fluid:hydrogen>*1000, <fluid:chlorine>*1000, <fluid:sodium_hydroxide_solution>*1332, null, <fluid:sodium_chloride_solution>*1332, electrolyzerEnergy, electrolyzerTime);

Electrolyzer.addRecipe(<fluid:magnesium_chloride>*144,<fluid:magnesium>*144,<fluid:chlorine>*1000,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:magnesium>*144, <fluid:chlorine>*1000, null, null, <fluid:magnesium_chloride>*144, electrolyzerEnergy, electrolyzerTime);

Electrolyzer.addRecipe(<fluid:lithium_chloride>*144,<fluid:lithium>*144,<fluid:chlorine>*500,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:lithium>*144, <fluid:chlorine>*500, null, null, <fluid:lithium_chloride>*144, electrolyzerEnergy, electrolyzerTime);

Electrolyzer.addRecipe(<fluid:lif>*144,<fluid:lithium>*144,<fluid:fluorine>*500,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:lithium>*144, <fluid:fluorine>*500, null, null, <fluid:lif>*144, electrolyzerEnergy, electrolyzerTime);

Electrolyzer.addRecipe(<fluid:calcium_chloride>*144,<fluid:calcium>*144,<fluid:chlorine>*1000,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:calcium>*144, <fluid:chlorine>*1000, null, null, <fluid:calcium_chloride>*144, electrolyzerEnergy, electrolyzerTime);

Electrolyzer.addRecipe(<fluid:fluorite>*666,<fluid:calcium>*144,<fluid:fluorine>*1000,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:calcium>*144, <fluid:fluorine>*1000, null, null, <fluid:fluorite>*666, electrolyzerEnergy, electrolyzerTime);

Electrolyzer.addRecipe(<fluid:beryllium_chloride>*144,<fluid:beryllium>*144,<fluid:chlorine>*1000,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:beryllium>*144, <fluid:chlorine>*1000, null, null, <fluid:beryllium_chloride>*144, electrolyzerEnergy, electrolyzerTime);

Electrolyzer.addRecipe(<fluid:moltensalt>*144,<fluid:sodium>*144,<fluid:chlorine>*1000,null,null,1,1);
ElectrolyticCrucibleBattery.addRecipe(<fluid:sodium>*144, <fluid:chlorine>*1000, null, null, <fluid:moltensalt>*144, electrolyzerEnergy, electrolyzerTime);


//ElectrolyticCrucibleBattery.addRecipe(ILiquidStack outputFluid0, ILiquidStack outputFluid1, ILiquidStack outputFluid2, IItemStack outputItem, ILiquidStack inputFluid0, int energy, int time)