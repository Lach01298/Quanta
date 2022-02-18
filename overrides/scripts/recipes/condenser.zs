import mods.immersivetechnology.CoolingTower;
import mods.immersivetechnology.Radiator;

// mods.immersivetechnology.CoolingTower.addRecipe(ILiquidStack outputFluid1, ILiquidStack outputFluid2, ILiquidStack outputFluid3, ILiquidStack inputFluid1, ILiquidStack inputFluid2, int time);

//import mods.immersivetechnology.Radiator.addRecipe(ILiquidStack outputFluid, ILiquidStack inputFluid, int time)




Radiator.addRecipe(<fluid:water>*250, <fluid:low_quality_steam>*8000, 8);
Radiator.addRecipe(<fluid:water>*500, <fluid:low_pressure_steam>*8000, 8);
Radiator.addRecipe(<fluid:water>*500, <fluid:exhaust_steam>*8000, 8);
Radiator.addRecipe(<fluid:water>*2000, <fluid:high_pressure_steam>*8000, 8);
Radiator.addRecipe(<fluid:water>*8000, <fluid:preheated_water>*8000, 8);

CoolingTower.addRecipe(<fluid:water>*250, <fluid:preheated_water>*1000, null, <fluid:low_quality_steam>*8000, <fluid:water>*1000, 4);
CoolingTower.addRecipe(<fluid:water>*500, <fluid:preheated_water>*1000, null, <fluid:low_pressure_steam>*8000, <fluid:water>*1000, 4);
CoolingTower.addRecipe(<fluid:water>*500, <fluid:preheated_water>*1000, null, <fluid:exhaust_steam>*8000, <fluid:water>*1000, 4);
CoolingTower.addRecipe(<fluid:water>*2000, <fluid:preheated_water>*1000, null, <fluid:high_pressure_steam>*8000,<fluid:water>*1000, 4);
CoolingTower.addRecipe(<fluid:water>*8000, <fluid:water>*1000, null, <fluid:preheated_water>*8000,<fluid:water>*1000, 4);