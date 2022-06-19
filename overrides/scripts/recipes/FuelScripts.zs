
import mods.immersivetechnology.PressurizedFluid;
import mods.immersivetechnology.Boiler;
import mods.immersivetechnology.GasTurbine;
import mods.immersivetechnology.SolarTower;
import mods.immersivetechnology.HeatExchanger;
import mods.immersivetechnology.CoolingTower;
import mods.immersivetechnology.Radiator;

import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;





PressurizedFluid.add(<fluid:high_pressure_steam>);
PressurizedFluid.add(<fluid:low_pressure_steam>);
PressurizedFluid.add(<fluid:exhaust_steam>);
PressurizedFluid.add(<fluid:low_quality_steam>);
PressurizedFluid.add(<fluid:steam>);

PressurizedFluid.add(<fluid:fluegas>);


PressurizedFluid.add(<fluid:distwater>);
PressurizedFluid.add(<fluid:preheated_water>);




// Boiler Fuels
Boiler.addFuel(<fluid:oil_residue>*6, 1, 10);   // Needs 2 distillation towers to run in a boiler
Boiler.addFuel(<fluid:lubricant>*14, 1, 10);   // Needs 2 distillation towers to run in a boiler
Boiler.addFuel(<fluid:heavy_oil>*9, 1, 10);   // Needs 1 distillation tower to run in a boiler
// This makes it so either burning heavy oil or burning all its products is equivalent in power production.

Boiler.addFuel(<fluid:light_oil>*12, 1, 10);   // Needs 0.66666... distillation towers to run in a boiler
Boiler.addFuel(<fluid:diesel>*8, 1, 10);   // Needs 2 distillation tower to run in a boiler
Boiler.addFuel(<fluid:kerosene>*8, 1, 10);   // Needs 2 distillation tower to run in a boiler
Boiler.addFuel(<fluid:gasoline>*8, 1, 10);   // Needs 4 distillation tower to run in a boiler
Boiler.addFuel(<fluid:biodiesel>*10, 1, 10);
// (Roughly) Same equivalency as with heavy oil. In this case, you burn 2/3 of your light oil, but still get to keep some so you can do things like get diesel for your portable mining drill.

Boiler.addFuel(<fluid:ethanol>*10, 1, 10);
Boiler.addFuel(<fluid:methanol>*10, 1, 10);
Boiler.addFuel(<fluid:creosote>*10, 1, 10);
Boiler.addFuel(<fluid:plantoil>*20, 1, 10);


// Boiler
Boiler.addRecipe(<fluid:high_pressure_steam> * 640, <fluid:distwater> * 160, 2);
Boiler.addRecipe(<fluid:high_pressure_steam> * 640, <fluid:preheated_water> * 160, 1);
// Basically, it's supposed to produce 8KiRF + a bit more so you have power to make the fuel.


// Gas Turbine
GasTurbine.addFuel(<fluid:fluegas> * 320, <fluid:light_oil> * 12, 1);
GasTurbine.addFuel(<fluid:fluegas> * 320, <fluid:diesel> * 8, 1);
GasTurbine.addFuel(<fluid:fluegas> * 320, <fluid:kerosene> * 8, 1);
GasTurbine.addFuel(<fluid:fluegas> * 320, <fluid:gasoline> * 8, 1);
GasTurbine.addFuel(<fluid:fluegas> * 320, <fluid:biodiesel> * 10, 1);

GasTurbine.addFuel(<fluid:fluegas> * 320, <fluid:ethanol> * 10, 1);
GasTurbine.addFuel(<fluid:fluegas> * 320, <fluid:methanol> * 10, 1);

GasTurbine.addFuel(<fluid:fluegas> * 320, <fluid:lpg> * 12, 1);
GasTurbine.addFuel(<fluid:fluegas> * 320, <fluid:methane> * 12, 1);


// Solar Tower
SolarTower.addRecipe(<fluid:high_pressure_steam> * 768, <fluid:distwater> * 192, 2);
SolarTower.addRecipe(<fluid:high_pressure_steam> * 768, <fluid:preheated_water> * 192, 1);
// It's supposed to make about 12KiRF to compensate for the high resource cost and construction effort of this thing.





// Turbine
    /*   Keep NC as it is, i.e. 1mB of HPS -> 16RF   */
    /*   The 640mB of HPS above would make 5120mB of Exhaust Steam    */
	
// Remove Mercury from Turbine
mods.nuclearcraft.Turbine.removeRecipeWithOutput(<liquid:mercury>);





// Heat Exchanger
HeatExchanger.addRecipe(<liquid:preheated_water>*320, <liquid:preheated_water>*320, <liquid:distwater>*320, <liquid:exhaust_steam>*10240, 0, 1);
// Make sure the HX has at least 20480mB of fluid capacity. I want it to be scaleable, so you don't need a massive wall of heat exchangers for when you upgrade to better power sources like nuclear reactors, and if has 20.48B of fluid capacity, you can run up to two boilers in one heat exchanger, which opens up a path for higher powered nuclear reactors and such.

// Heat Exchanger: Gas Turbine Edition
HeatExchanger.addRecipe(<fluid:high_pressure_steam> * 640, null, <fluid:distwater> * 160, <fluid:fluegas> * 640, 0, 1);

// Cooling Preheated Water
CoolingTower.addRecipe(<liquid:distwater> * 640, null, null, <liquid:preheated_water> * 640, <liquid:distwater> * 16, 1);
Radiator.addRecipe(<liquid:distwater> * 80, <liquid:preheated_water> * 80, 1);
// Makes the radiator 8 times as bad as the cooling tower. (That should mean that two radiators are enough for one boiler setup.)





// ================================================== QuantumTraverse's NaK Heat Exchanger Script: Quanta Edition ==================================================


var heatantHeat = [275,250,425,400,350,525,450,500,550,575,725,325,475,1000,975,375,600,300,800,650,625,750,875,850,825,900,700,675,925,950,775,1025,2000] as double[];
var heatantHeating = [400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400,400] as double[];
var heatantRatio = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1] as int[];

var heatantIn = [<liquid:nak_hot>,<liquid:iron_nak_hot>,<liquid:redstone_nak_hot>,<liquid:quartz_nak_hot>,<liquid:obsidian_nak_hot>,<liquid:nether_brick_nak_hot>,<liquid:glowstone_nak_hot>,<liquid:lapis_nak_hot>,<liquid:gold_nak_hot>,<liquid:prismarine_nak_hot>,<liquid:slime_nak_hot>,<liquid:end_stone_nak_hot>,<liquid:purpur_nak_hot>,<liquid:diamond_nak_hot>,<liquid:emerald_nak_hot>,<liquid:copper_nak_hot>,<liquid:tin_nak_hot>,<liquid:lead_nak_hot>,<liquid:boron_nak_hot>,<liquid:lithium_nak_hot>,<liquid:magnesium_nak_hot>,<liquid:manganese_nak_hot>,<liquid:aluminum_nak_hot>,<liquid:silver_nak_hot>,<liquid:fluorite_nak_hot>,<liquid:villiaumite_nak_hot>,<liquid:carobbiite_nak_hot>,<liquid:arsenic_nak_hot>,<liquid:liquid_nitrogen_nak_hot>,<liquid:liquid_helium_nak_hot>,<liquid:enderium_nak_hot>,<liquid:cryotheum_nak_hot>,<liquid:hot_mercury>] as IIngredient[];
var heatantOut = [<liquid:nak>,<liquid:iron_nak>,<liquid:redstone_nak>,<liquid:quartz_nak>,<liquid:obsidian_nak>,<liquid:nether_brick_nak>,<liquid:glowstone_nak>,<liquid:lapis_nak>,<liquid:gold_nak>,<liquid:prismarine_nak>,<liquid:slime_nak>,<liquid:end_stone_nak>,<liquid:purpur_nak>,<liquid:diamond_nak>,<liquid:emerald_nak>,<liquid:copper_nak>,<liquid:tin_nak>,<liquid:lead_nak>,<liquid:boron_nak>,<liquid:lithium_nak>,<liquid:magnesium_nak>,<liquid:manganese_nak>,<liquid:aluminum_nak>,<liquid:silver_nak>,<liquid:fluorite_nak>,<liquid:villiaumite_nak>,<liquid:carobbiite_nak>,<liquid:arsenic_nak>,<liquid:liquid_nitrogen_nak>,<liquid:liquid_helium_nak>,<liquid:enderium_nak>,<liquid:cryotheum_nak>,<liquid:mercury>] as IIngredient[];

var coolantHeat = [128,64,4] as double[];
var coolantHeating = [900,800,300,100] as double[];
var coolantRatio = [4,4,1,1] as double[];
var coolantIn = [<liquid:water>,<liquid:preheated_water>, <liquid:exhaust_steam>] as IIngredient[];
var coolantOut = [<liquid:high_pressure_steam>,<liquid:high_pressure_steam>,<liquid:low_pressure_steam>] as IIngredient[];

var maxOutput = 4000.0 as double;

//normal HX recipes
for i,coolant in coolantIn{
	for j,heatant in heatantIn{
	  var f = maxOutput * coolantHeat[i]/(coolantRatio[i]*heatantHeating[j]) as double;
	  
	  HeatExchanger.addRecipe((coolantOut[i]* maxOutput).liquids[0],(heatantOut[j]*(coolantHeating[i]/heatantHeat[j]*f)).liquids[0], (coolantIn[i]*(maxOutput/coolantRatio[i])).liquids[0], (heatantIn[j]*(coolantHeating[i]/heatantHeat[j]*f/heatantRatio[j])).liquids[0], 10, 4);
	}
}
