import crafttweaker.item.IItemStack;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.AlloySmelter;
import mods.nuclearcraft.AlloyFurnace;
import mods.immersiveengineering.Fermenter;
import mods.immersivetechnology.Distiller;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Squeezer;



//---remove content---


var removeItems= [
<immersiveengineering:metal_device1:3>,
<immersiveengineering:ore>,
<immersiveengineering:ore:2>,
<immersiveengineering:ore:5>
] as  IItemStack[];

for i,item in removeItems{
	recipes.remove(item);
	mods.jei.JEI.hide(item);
}


//HOP Graphite
Squeezer.removeByInput(<immersiveengineering:material:17>*8);



//---add recipes---
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "electrode"}), [[null, <ore:ingotGraphite>, null],[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]]);

//---change recipes---
//blast furnace brick
recipes.remove(<immersiveengineering:stone_decoration:1> * 3);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [[<contenttweaker:cement>, <contenttweaker:dust_aluminium_oxide>, <contenttweaker:cement>],[<contenttweaker:dust_aluminium_oxide>, <minecraft:brick_block>, <contenttweaker:dust_aluminium_oxide>], [<contenttweaker:cement>, <contenttweaker:dust_aluminium_oxide>, <contenttweaker:cement>]]);

recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [[<contenttweaker:cement>, <contenttweaker:dust_magnesium_oxide>, <contenttweaker:cement>],[<contenttweaker:dust_magnesium_oxide>, <minecraft:brick_block>, <contenttweaker:dust_magnesium_oxide>], [<contenttweaker:cement>, <contenttweaker:dust_magnesium_oxide>, <contenttweaker:cement>]]);

//coke oven brick
recipes.remove(<immersiveengineering:stone_decoration> * 3);
recipes.addShaped(<immersiveengineering:stone_decoration> * 3, [[<contenttweaker:cement>, <minecraft:brick>, <contenttweaker:cement>],[<minecraft:brick>, <ore:sandstone>, <minecraft:brick>], [<contenttweaker:cement>, <minecraft:brick>, <contenttweaker:cement>]]);




//concrete
recipes.remove(<immersiveengineering:stone_decoration:5> * 8);
recipes.remove(<immersiveengineering:stone_decoration:5> * 12);
recipes.addShaped(<immersiveengineering:stone_decoration:5> * 8, [[<ore:sand>, <contenttweaker:cement>, <ore:sand>],[<ore:gravel>, <minecraft:water_bucket>, <ore:gravel>], [<ore:sand>, <contenttweaker:cement>, <ore:sand>]]);
recipes.addShaped(<immersiveengineering:stone_decoration:5> * 12, [[<ore:sand>, <contenttweaker:cement>, <ore:sand>],[<ore:itemSlag>, <minecraft:water_bucket>, <ore:itemSlag>], [<ore:sand>, <contenttweaker:cement>, <ore:sand>]]);


//asphalt
recipes.remove(<immersivepetroleum:stone_decoration> * 8);
recipes.remove(<immersivepetroleum:stone_decoration> * 12);
recipes.addShaped(<immersivepetroleum:stone_decoration> * 8, [[<ore:sand>, <immersivepetroleum:material>, <ore:sand>],[<ore:gravel>, <minecraft:water_bucket>, <ore:gravel>], [<ore:sand>, <immersivepetroleum:material>, <ore:sand>]]);
recipes.addShaped(<immersivepetroleum:stone_decoration> * 12, [[<ore:sand>, <immersivepetroleum:material>, <ore:sand>],[<ore:itemSlag>, <minecraft:water_bucket>, <ore:itemSlag>], [<ore:sand>, <immersivepetroleum:material>, <ore:sand>]]);



//kinetic dynamo
recipes.remove(<immersiveengineering:metal_device1:2>);
recipes.addShaped(<immersiveengineering:metal_device1:2>, [[null, null, null],[<ore:dustRedstone>, <immersiveengineering:metal_decoration0>, <ore:dustRedstone>], [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);


//vaccuum tube
Blueprint.removeRecipe(<immersiveengineering:material:26>*3);
Blueprint.addRecipe("components", <immersiveengineering:material:26>*3, [<ore:blockGlass>, <ore:plateNickel>,<ore:dustBariumOxide>,<ore:wireCopper>,<ore:wireCopper>]);


//light enginering block
recipes.remove(<immersiveengineering:metal_decoration0:4> * 2);
recipes.addShaped(<immersiveengineering:metal_decoration0:4> * 2, [[<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>],[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>], [<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>]]);

// iron mechanism
Blueprint.removeRecipe(<immersiveengineering:material:8>);
recipes.remove(<immersiveengineering:material:8>);
recipes.addShaped(<immersiveengineering:material:8>, [[<ore:plateIron>, null, <ore:plateIron>],[null, <ore:ingotBronze>, null], [<ore:plateIron>, null, <ore:plateIron>]]);

// steel mechanism
Blueprint.removeRecipe(<immersiveengineering:material:9>);
recipes.remove(<immersiveengineering:material:9>);
recipes.addShaped(<immersiveengineering:material:9>, [[<ore:plateSteel>, null, <ore:plateSteel>],[null, <ore:ingotBronze>, null], [<ore:plateSteel>, null, <ore:plateSteel>]]);

// insulating glass
recipes.remove(<immersiveengineering:stone_decoration:8>*2);
AlloySmelter.addRecipe(<immersiveengineering:stone_decoration:8>, <ore:blockGlass>, <contenttweaker:dust_iron_oxide>, 100);
AlloySmelter.addRecipe(<immersiveengineering:stone_decoration:8>, <contenttweaker:dust_iron_oxide>, <ore:blockGlass>, 100);
AlloyFurnace.addRecipe(<ore:blockGlass>,<contenttweaker:dust_iron_oxide>,<immersiveengineering:stone_decoration:8>,1.0,1.0);


//graphite electrode
MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>);
Blueprint.removeRecipe(<immersiveengineering:graphite_electrode>);
Blueprint.addRecipe("electrode", <immersiveengineering:graphite_electrode>, [<ore:ingotGraphite>, <ore:ingotGraphite>,<ore:ingotGraphite>]);

//components blueprint
recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "components"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "components"}), [[<ore:ingotCopper>, <ore:ingotElectrum>, <ore:ingotNickel>],[<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>], [<ore:paper>, <ore:paper>, <ore:paper>]]);



//light changes
furnace.addRecipe(<contenttweaker:carbon_filament>,<minecraft:string>);
Blueprint.addRecipe("components", <contenttweaker:light_bulb>, [<contenttweaker:carbon_filament>, <ore:blockGlass>,<ore:ingotIron>,<ore:wireCopper>]);
Blueprint.addRecipe("components", <contenttweaker:light_bulb>*4, [<qmd:source>.withTag({particle_storage: {particle_amount: 50000000}}), <ore:blockGlass>,<ore:ingotIron>,<ore:wireCopper>]);


recipes.addShaped(<immersiveengineering:metal_decoration2:4> * 3, [[null, <ore:plateIron>, null],[<ore:paneGlass>, <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}).onlyWithTag({FluidName: "creosote", Amount: 1000}), <ore:paneGlass>], [null, <ore:plateIron>, null]]);

recipes.addShaped(<immersiveengineering:metal_decoration2:4> * 3, [[null, <ore:plateIron>, null],[<ore:paneGlass>, <forge:bucketfilled>.withTag({FluidName: "kerosene", Amount: 1000}).onlyWithTag({FluidName: "kerosene", Amount: 1000}), <ore:paneGlass>], [null, <ore:plateIron>, null]]);

recipes.remove(<immersiveengineering:metal_device1:9>);
recipes.addShaped(<immersiveengineering:metal_device1:9>, [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],[<ore:paneGlass>, <contenttweaker:light_bulb>, <immersiveengineering:metal_decoration0>], [<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>]]);

recipes.remove(<immersiveengineering:metal_device1:4> * 3);
recipes.addShaped(<immersiveengineering:metal_device1:4> * 3, [[null, <ore:plateIron>, null],[<ore:paneGlass>, <contenttweaker:light_bulb>, <ore:paneGlass>], [<ore:plateIron>, <ore:dustRedstone>, <ore:plateIron>]]);

recipes.remove(<immersiveengineering:material:12>);
recipes.addShaped(<immersiveengineering:material:12>, [[null, null, <immersiveengineering:material:5>],[null, <immersiveengineering:material:5>, null], [<immersiveengineering:material:5>, null, null]]);

recipes.remove(<immersiveengineering:metal_decoration0:7> * 2);
recipes.addShaped(<immersiveengineering:metal_decoration0:7> * 2, [[<ore:ingotAluminum>, <ore:ingotCopper>, <ore:ingotAluminum>],[<ore:ingotCopper>, <minecraft:water_bucket>, <ore:ingotCopper>], [<ore:ingotAluminum>, <ore:ingotCopper>, <ore:ingotAluminum>]]);


// ethanol
Fermenter.removeByInput(<minecraft:reeds>);
Fermenter.removeByInput(<minecraft:melon>);
Fermenter.removeByInput(<minecraft:potato>);
Fermenter.removeByInput(<minecraft:apple>);

Fermenter.addRecipe(null, <fluid:fermented_biomass>*100, <minecraft:reeds>, 2048);
Fermenter.addRecipe(null, <fluid:fermented_biomass>*100, <minecraft:melon>, 2048);
Fermenter.addRecipe(null, <fluid:fermented_biomass>*100, <minecraft:potato>, 2048);
Fermenter.addRecipe(null, <fluid:fermented_biomass>*100, <minecraft:apple>, 2048);
Fermenter.addRecipe(null, <fluid:fermented_biomass>*100, <biomesoplenty:pear>, 2048);
Fermenter.addRecipe(null, <fluid:fermented_biomass>*100, <biomesoplenty:peach>, 2048);
Fermenter.addRecipe(null, <fluid:fermented_biomass>*100, <biomesoplenty:persimmon>, 2048);


Distiller.addRecipe(<fluid:ethanol>*1000, <fluid:fermented_biomass>*3000, <biomesoplenty:mudball>, 40000, 400, 0.05);




