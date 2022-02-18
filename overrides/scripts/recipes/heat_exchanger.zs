

import mods.immersivetechnology.HeatExchanger;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;



//done with configs
//HeatExchanger.removeRecipe(<liquid:fluegas>*1000, <liquid:water>*250);
//HeatExchanger.removeRecipe(<liquid:fluegas>*1000, <liquid:distwater>*250);



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

//reheat cycle
HeatExchanger.addRecipe(<fluid:preheated_water>*1000,<fluid:low_pressure_steam>*8000, <fluid:water>*1000, <fluid:exhaust_steam>*8000, 10, 4);

//remove mercury turbine
mods.nuclearcraft.Turbine.removeRecipeWithOutput(<liquid:mercury>);
