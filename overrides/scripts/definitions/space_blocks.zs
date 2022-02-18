#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.Item;
import crafttweaker.item.IIngredient;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

var ice_blocks = ["ammonia_ice", "nitrogen_ice", "co2_ice", "co_ice","dirty_ice"] as string[];

for block in ice_blocks {
		var block = VanillaFactory.createBlock(block, <blockmaterial:ice>);
		block.setLightOpacity(255);
		block.setBlockHardness(1.0);
		block.setBlockResistance(1.0);
		block.setToolClass("pickaxe");
		block.setToolLevel(1);
		block.setBlockSoundType(<soundtype:glass>);
		block.register();
}

var surface_blocks = ["tholin_soil","tholin_sand","anorthosite_regolith","basalt_regolith","sulfur_crust","orange_sulfur_crust","white_sulfur_crust"] as string[];

for block in surface_blocks {
		var block = VanillaFactory.createBlock(block, <blockmaterial:ground>);
		block.setLightOpacity(255);
		block.setBlockHardness(0.5);
		block.setBlockResistance(0.5);
		block.setToolClass("shovel");
		block.setToolLevel(0);
		block.setBlockSoundType(<soundtype:ground>);
		block.register();
}


var spaceGases = [
"mars_atmosphere",
"venus_atmosphere",
"titan_atmosphere"
] as string[];

var gasesColour= [
"ffffff",
"ffffff",
"ffffff"
] as string[];

for i,name in spaceGases{
	var f = VanillaFactory.createFluid(name, Color.fromHex(gasesColour[i]));
	f.setDensity(-100);
	f.setViscosity(10);
	f.setTemperature(300);
	f.setGaseous(true);
	
	f.register();
}