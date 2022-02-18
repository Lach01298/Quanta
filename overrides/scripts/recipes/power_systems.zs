import mods.immersivetechnology.Boiler;
import mods.immersivetechnology.GasTurbine;
import mods.immersivetechnology.SolarTower;


// mods.immersivetechnology.CoolingTower.addRecipe(ILiquidStack outputFluid1, ILiquidStack outputFluid2, ILiquidStack outputFluid3, ILiquidStack inputFluid1, ILiquidStack inputFluid2, int time);
// mods.immersivetechnology.Boiler.addRecipe(ILiquidStack output, ILiquidStack input, int time);
// mods.immersivetechnology.Boiler.addFuel(ILiquidStack input, int time, double heat);
// mods.immersivetechnology.SolarTower.addRecipe(ILiquidStack outputFluid, ILiquidStack inputFluid, int time);
//mods.immersivetechnology.PressurizedFluid.add(ILiquidStack fluid);
// mods.immersivetechnology.GasTurbineRecipe.addFuel(ILiquidStack outputFluid, ILiquidStack inputFluid, int time);

//---boiler---
Boiler.addRecipe(<fluid:low_pressure_steam> * 2000, <fluid:water> * 125, 4);
Boiler.addRecipe(<fluid:low_pressure_steam> * 2000, <fluid:preheated_water> * 125, 2);

Boiler.addFuel(<fluid:oil>*25, 10, 20);
Boiler.addFuel(<fluid:light_oil>*15, 10, 20);
Boiler.addFuel(<fluid:heavy_oil>*15, 10, 20);
Boiler.addFuel(<fluid:kerosene>*10, 10, 20);
Boiler.addFuel(<fluid:gasoline>*10, 10, 20);
Boiler.addFuel(<fluid:oil_residue>*25, 10, 20);


//---gas turbine---
GasTurbine.addFuel(<fluid:carbon_dioxide> * 20, <liquid:natural_gas> * 20, 5);
GasTurbine.addFuel(<fluid:carbon_dioxide> * 15, <liquid:methane> * 15, 5);
GasTurbine.addFuel(<fluid:carbon_dioxide> * 15, <liquid:lpg> * 15, 5);
GasTurbine.addFuel(<fluid:water> * 30, <liquid:hydrogen> * 30, 5);


//---pressurised fluids
mods.immersivetechnology.PressurizedFluid.add(<fluid:high_pressure_steam>);
mods.immersivetechnology.PressurizedFluid.add(<fluid:low_pressure_steam>);
mods.immersivetechnology.PressurizedFluid.add(<fluid:exhaust_steam>);
mods.immersivetechnology.PressurizedFluid.add(<fluid:low_quality_steam>);


//---Diesel Generator
//mods.immersiveengineering.DieselHandler.addFuel(<fluid:diesel>,1000); broken!
//mods.immersiveengineering.DieselHandler.addFuel(<fluid:biodiesel>,500);

//---solar tower---
SolarTower.addRecipe(<fluid:low_pressure_steam> * 3200,<fluid:water> * 200, 4);
SolarTower.addRecipe(<fluid:low_pressure_steam> * 3200, <fluid:preheated_water> * 200, 2);