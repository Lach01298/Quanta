#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;
import mods.contenttweaker.Item;

var chemicalDusts = [
"aluminium_oxide",
"ammonium_diuranate",
"ammonium_fluoride",
"ammonium_sulfate",
"beryllium_chloride",
"beryllium_oxide",
"boric_acid",
"boron_trioxide",
"calcium_chloride",
"calcium_hydroxide",
"calcium_oxide",
"calcium_sulfide",
"chromium_oxide",
"hafnium_tetrachloride",
"iron_carbonate",
"iron_oxide",
"lithium_carbonate",
"lithium_chloride",
"lithium_fluoride",
"lithium_hydride",
"lithium_hydroxide",
"lithium_sulfate",
"magnesium_carbonate",
"magnesium_oxide",
"niobium_pentoxide",
"sodium_bicarbonate",
"sodium_carbonate",
"sodium_hypophosphite",
"sodium_sulfate",
"thorium_dioxide",
"thorium_tetrafluoride",
"titanium_dioxide",
"uranium_dioxide",
"uranium_tetrafluoride",
"uranium_trioxide",
"white_phosphorus",
"zirconium_dioxide",
"zirconium_tetrachloride",
"soda_lime"
] as string[];

for i, name in chemicalDusts
{
	var dust = VanillaFactory.createItem("dust_"+name);
	dust.register();
}


var chemicalGases = [
"boron_trifluoride",
"hydrogen_cyanide",
"hydrogen_sulfide",
"methane",
"phosphine"

] as string[];

var gasesColour= [
"ffe2b4",
"d5dfed",
"fffa77",
"917f6f",
"ec84ed",
"aaaaaa"
] as string[];

for i,name in chemicalGases{
	var f = VanillaFactory.createFluid(name, Color.fromHex(gasesColour[i]));
	f.setDensity(-100);
	f.setViscosity(10);
	f.setTemperature(300);
	f.setGaseous(true);
	
	f.register();
}

var chemicalLiquids= [
"ammonia_solution",
"ammonium_chloride_solution",
"calcium_chloride_solution",
"fermented_biomass",
"sodium_carbonate_solution",
"sodium_cyanide_solution",
"sodium_fluorosilicate_solution",
"sodium_sulfate_solution",
"titanium_tetrachloride",
"toluene"
] as string[];

var chemicalColours= [
"3389ff",
"3389ff",
"3389ff",
"0b7200",
"3389ff",
"3389ff",
"3389ff",
"3389ff",
"cdb9d4",
"cba589"
] as string[];

for i,name in chemicalLiquids{
	var f = VanillaFactory.createFluid(name, Color.fromHex(chemicalColours[i]));
	f.setDensity(1000);
	f.setViscosity(100);
	f.setTemperature(300);
	f.register();
}

var moltenLiquids= [
"magnesium_chloride",
"lithium_chloride",
"calcium_chloride",
"beryllium_chloride"
] as string[];

var moltenColours= [
"FFFFFF",
"FFFFFF",
"FFFFFF",
"FFFFFF",
"FFFFFF"
] as string[];

for i,name in moltenLiquids{
	var f = VanillaFactory.createFluid(name, Color.fromHex(moltenColours[i]));
	f.setDensity(2000);
	f.setViscosity(1000);
	f.setTemperature(1000);
	f.setMaterial(<blockmaterial:lava>);
	f.register();
}


var cryoLiquids= [
"liquid_methane"
] as string[];

var cryoColours= [
"79695c"
] as string[];

var cryoTemps= [
91
] as int[];

for i,name in cryoLiquids{
	var f = VanillaFactory.createFluid(name, Color.fromHex(cryoColours[i]));
	f.setDensity(1000);
	f.setViscosity(100);
	f.setTemperature(cryoTemps[i]);
	f.register();
}
