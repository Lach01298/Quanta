import crafttweaker.item.IItemStack;
import mods.nuclearcraft.AlloyFurnace;
import mods.immersiveengineering.ArcFurnace;
import mods.nuclearcraft.Pressurizer;
import mods.immersiveengineering.AlloySmelter;
import mods.nuclearcraft.Infuser;
import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Crystallizer;

//---remove content---

mods.jei.JEI.hideCategory("nuclearcraft_heat_exchanger");
mods.jei.JEI.hideCategory("nuclearcraft_condenser");
mods.jei.JEI.hideCategory("nuclearcraft_pebble_fission");


var removeItems= [
<nuclearcraft:lithium_ion_battery_elite>,
<nuclearcraft:lithium_ion_battery_du>,
<nuclearcraft:voltaic_pile_elite>,
<nuclearcraft:voltaic_pile_du>,
<nuclearcraft:decay_generator>,
<nuclearcraft:solar_panel_elite>,
<nuclearcraft:solar_panel_du>,
<nuclearcraft:solar_panel_advanced>,
<nuclearcraft:solar_panel_basic>,
<nuclearcraft:rtg_uranium>
] as  IItemStack[];

for i,item in removeItems{
	recipes.remove(item);
	mods.jei.JEI.hide(item);
}



//---------remove recipes---------
recipes.remove(<nuclearcraft:water_source>);
recipes.remove(<nuclearcraft:water_source_dense>);
recipes.remove(<nuclearcraft:water_source_compact>);


Manufactory.removeRecipeWithOutput(<ore:dustHOPGraphite>);
Manufactory.removeRecipeWithOutput(<ore:dustCoal>);
Manufactory.removeRecipeWithInput(<ore:bouleSilicon>);



//---------change recipes---------

//machine chassis
recipes.remove(<nuclearcraft:part:10>);
recipes.addShaped(<nuclearcraft:part:10>, [[<ore:ingotStainlessSteel>, <ore:plateSteel>, <ore:ingotStainlessSteel>],[<ore:plateSteel>, <advancedrocketry:ic>, <ore:plateSteel>], [<ore:ingotStainlessSteel>, <ore:plateSteel>, <ore:ingotStainlessSteel>]]);

recipes.remove(<nuclearcraft:ingot_former>);
recipes.addShaped(<nuclearcraft:ingot_former>, [[<immersiveengineering:metal:38>, <immersiveengineering:metal:38>, <immersiveengineering:metal:38>],[<immersiveengineering:metal:38>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal:38>], [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]);


recipes.remove(<nuclearcraft:alloy_furnace>);
recipes.addShaped(<nuclearcraft:alloy_furnace>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],[<minecraft:brick_block>, <immersiveengineering:metal_decoration0:5>, <minecraft:brick_block>], [<ore:plateSteel>, <immersiveengineering:metal_decoration0:1>, <ore:plateSteel>]]);


recipes.remove(<nuclearcraft:voltaic_pile_basic>);
recipes.addShaped(<nuclearcraft:voltaic_pile_basic>, [[<ore:wireCopper>, <ore:dustRedstone>, <ore:wireCopper>],[<ore:plateLead>, <forge:bucketfilled>.withTag({FluidName: "sulfuric_acid", Amount: 1000}).onlyWithTag({FluidName: "sulfuric_acid", Amount: 1000}), <ore:plateLead>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<nuclearcraft:voltaic_pile_advanced>);
recipes.addShaped(<nuclearcraft:voltaic_pile_advanced>, [[<ore:wireAluminum>, <minecraft:redstone>, <ore:wireAluminum>],[<nuclearcraft:voltaic_pile_basic>, <ore:ingotMagnesium>, <nuclearcraft:voltaic_pile_basic>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<nuclearcraft:lithium_ion_battery_basic>);
recipes.addShaped(<nuclearcraft:lithium_ion_battery_basic>, [[<immersiveengineering:material:22>, <minecraft:redstone>, <immersiveengineering:material:22>],[<nuclearcraft:lithium_ion_cell>, <nuclearcraft:lithium_ion_cell>, <nuclearcraft:lithium_ion_cell>], [<qmd:ingot_alloy:2>, <qmd:ingot_alloy:2>, <qmd:ingot_alloy:2>]]);

recipes.remove(<nuclearcraft:lithium_ion_battery_advanced>);
recipes.addShaped(<nuclearcraft:lithium_ion_battery_advanced>, [[<qmd:part:6>, <minecraft:redstone>, <qmd:part:6>],[<nuclearcraft:lithium_ion_battery_advanced>, <ore:ingotLithium>, <nuclearcraft:lithium_ion_battery_advanced>], [<qmd:ingot_alloy:6>, <qmd:ingot_alloy:6>, <qmd:ingot_alloy:6>]]);

recipes.remove(<qmd:atmosphere_collector>);
recipes.addShaped(<qmd:atmosphere_collector>, [[null, <libvulpes:productfan:6>, null],[null, <immersiveengineering:metal_decoration0:5>, null], [null, null, null]]);

recipes.remove(<nuclearcraft:multitool>);
recipes.addShaped(<nuclearcraft:multitool>, [[null, <ore:ingotSteel>, null],[null, <ore:ingotSteel>, <ore:ingotSteel>], [<ore:ingotSteel>, <ore:ingotBronze>, null]]);

recipes.remove(<nuclearcraft:bin>);
recipes.addShaped(<nuclearcraft:bin>, [[<ore:ingotBronze>, <immersiveengineering:metal:39>, <ore:ingotBronze>],[<immersiveengineering:metal:39>, <minecraft:lava_bucket>, <immersiveengineering:metal:39>], [<ore:ingotBronze>, <immersiveengineering:metal:39>, <ore:ingotBronze>]]);

recipes.remove(<nuclearcraft:rock_crusher>);
recipes.addShaped(<nuclearcraft:rock_crusher>, [[<ore:plateTitanium>, <nuclearcraft:alloy:1>, <ore:plateTitanium>],[<nuclearcraft:part:9>, <nuclearcraft:part:10>, <nuclearcraft:part:9>], [<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:centrifuge>);
recipes.addShaped(<nuclearcraft:centrifuge>, [[<ore:plateTitanium>, <ore:ingotSuperAlloy>, <ore:plateTitanium>],[<nuclearcraft:part:8>, <nuclearcraft:part:10>, <nuclearcraft:part:8>], [<ore:plateTitanium>, <ore:ingotSuperAlloy>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:extractor>);
recipes.addShaped(<nuclearcraft:extractor>, [[<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>],[<nuclearcraft:part:4>, <nuclearcraft:part:10>, <nuclearcraft:part:4>], [<ore:plateTitanium>, <nuclearcraft:part:8>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:enricher>);
recipes.addShaped(<nuclearcraft:enricher>, [[<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>],[<nuclearcraft:alloy:1>, <nuclearcraft:part:10>, <nuclearcraft:alloy:1>], [<ore:plateTitanium>, <nuclearcraft:part:8>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:crystallizer>);
recipes.addShaped(<nuclearcraft:crystallizer>, [[<ore:plateTitanium>, <nuclearcraft:part:4>, <ore:plateTitanium>],[<nuclearcraft:part:4>, <nuclearcraft:part:10>, <nuclearcraft:part:4>], [<ore:plateTitanium>, <immersiveengineering:metal_device0:4>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:salt_mixer>);
recipes.addShaped(<nuclearcraft:salt_mixer>, [[<ore:plateTitanium>, <libvulpes:productfan:6>, <ore:plateTitanium>],[<qmd:ingot_alloy:2>, <nuclearcraft:part:10>, <qmd:ingot_alloy:2>], [<ore:plateTitanium>, <nuclearcraft:part:8>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:chemical_reactor>);
recipes.addShaped(<nuclearcraft:chemical_reactor>, [[<ore:plateTitanium>, <nuclearcraft:part:8>, <ore:plateTitanium>],[<qmd:ingot_alloy:2>, <nuclearcraft:part:10>, <qmd:ingot_alloy:2>], [<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:pressurizer>);
recipes.addShaped(<nuclearcraft:pressurizer>, [[<ore:plateTitanium>, <nuclearcraft:alloy:1>, <ore:plateTitanium>],[<nuclearcraft:part:9>, <nuclearcraft:part:10>, <nuclearcraft:part:9>], [<ore:plateTitanium>, <nuclearcraft:alloy:1>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:assembler>);
recipes.addShaped(<nuclearcraft:assembler>, [[<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>],[<nuclearcraft:part:7>, <nuclearcraft:part:10>, <nuclearcraft:part:7>], [<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:electrolyzer>);
recipes.addShaped(<nuclearcraft:electrolyzer>, [[<ore:plateTitanium>, <nuclearcraft:ingot:8>, <ore:plateTitanium>],[<qmd:ingot_alloy:2>, <nuclearcraft:part:10>, <qmd:ingot_alloy:2>], [<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:supercooler>);
recipes.addShaped(<nuclearcraft:supercooler>, [[<ore:plateTitanium>, <nuclearcraft:part:8>, <ore:plateTitanium>],[<forge:bucketfilled>.withTag({FluidName: "helium", Amount: 1000}), <nuclearcraft:part:10>, <forge:bucketfilled>.withTag({FluidName: "helium", Amount: 1000})], [<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:melter>);
recipes.addShaped(<nuclearcraft:melter>, [[<ore:plateTitanium>, <nuclearcraft:ingot:8>, <ore:plateTitanium>],[<nuclearcraft:ingot:8>, <nuclearcraft:part:10>, <nuclearcraft:ingot:8>], [<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:infuser>);
recipes.addShaped(<nuclearcraft:infuser>, [[<ore:plateTitanium>, <minecraft:bucket>, <ore:plateTitanium>],[<minecraft:gold_ingot>, <nuclearcraft:part:10>, <minecraft:gold_ingot>], [<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:manufactory>);
recipes.addShaped(<nuclearcraft:manufactory>, [[<ore:plateTitanium>, <minecraft:redstone>, <ore:plateTitanium>],[<libvulpes:productgear:7>, <nuclearcraft:part:10>, <libvulpes:productgear:7>], [<ore:plateTitanium>, <nuclearcraft:part:7>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:separator>);
recipes.addShaped(<nuclearcraft:separator>, [[<ore:plateTitanium>, <nuclearcraft:part:8>, <ore:plateTitanium>],[<ore:ingotSuperAlloy>, <nuclearcraft:part:10>, <ore:ingotSuperAlloy>], [<ore:plateTitanium>, <nuclearcraft:part:8>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:decay_hastener>);
recipes.addShaped(<nuclearcraft:decay_hastener>, [[<ore:plateDU>, <ore:ingotZircaloy>, <ore:plateDU>],[<ore:ingotZircaloy>, <nuclearcraft:part:10>, <ore:ingotZircaloy>], [<ore:plateDU>, <nuclearcraft:part:4>, <ore:plateDU>]]);

recipes.remove(<nuclearcraft:fuel_reprocessor>);
recipes.addShaped(<nuclearcraft:fuel_reprocessor>, [[<ore:plateDU>, <ore:servo>, <ore:plateDU>],[<ore:actuator>, <nuclearcraft:part:10>, <ore:actuator>], [<ore:plateDU>, <ore:motor>, <ore:plateDU>]]);

recipes.remove(<nuclearcraft:turbine_casing> * 8);
recipes.addShaped(<nuclearcraft:turbine_casing> * 8, [[null, <ore:ingotHSLASteel>, null],[<ore:ingotHSLASteel>, <immersiveengineering:metal_decoration0:4>, <ore:ingotHSLASteel>], [null, <ore:ingotHSLASteel>, null]]);

recipes.remove(<nuclearcraft:turbine_rotor_shaft> * 4);
recipes.addShaped(<nuclearcraft:turbine_rotor_shaft> * 4, [[<ore:ingotHSLASteel>, <ore:ingotHSLASteel>, <ore:ingotHSLASteel>],[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>], [<ore:ingotHSLASteel>, <ore:ingotHSLASteel>, <ore:ingotHSLASteel>]]);

recipes.remove(<nuclearcraft:turbine_rotor_bearing> * 4);
recipes.addShaped(<nuclearcraft:turbine_rotor_bearing> * 4, [[null, <ore:ingotHSLASteel>, null],[<ore:ingotHSLASteel>, <immersiveengineering:metal_decoration0:5>, <ore:ingotHSLASteel>], [null, <ore:ingotHSLASteel>, null]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil> * 2);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil> * 2, [[<ore:ingotMagnesium>, <ore:ingotMagnesium>, <ore:ingotMagnesium>],[<ore:ingotMagnesium>, <ore:ingotHSLASteel>, <ore:ingotMagnesium>], [<ore:ingotMagnesium>, <ore:ingotMagnesium>, <ore:ingotMagnesium>]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:1> * 2);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:1> * 2, [[<ore:ingotBeryllium>, <ore:ingotBeryllium>, <ore:ingotBeryllium>],[<ore:ingotBeryllium>, <ore:ingotHSLASteel>, <ore:ingotBeryllium>], [<ore:ingotBeryllium>, <ore:ingotBeryllium>, <ore:ingotBeryllium>]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:2> * 2);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:2> * 2, [[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],[<ore:ingotAluminum>, <ore:ingotHSLASteel>, <ore:ingotAluminum>], [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:3> * 2);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:3> * 2, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],[<ore:ingotGold>, <ore:ingotHSLASteel>, <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:4> * 2);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:4> * 2, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],[<ore:ingotCopper>, <ore:ingotHSLASteel>, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:5> * 2);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:5> * 2, [[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>],[<ore:ingotSilver>, <ore:ingotHSLASteel>, <ore:ingotSilver>], [<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]]);

recipes.remove(<nuclearcraft:turbine_coil_connector> * 4);
recipes.addShaped(<nuclearcraft:turbine_coil_connector> * 4, [[null, <ore:ingotHSLASteel>, null],[<ore:ingotHSLASteel>, <ore:coilCopper>, <ore:ingotHSLASteel>], [null, <ore:ingotHSLASteel>, null]]);

recipes.remove(<nuclearcraft:turbine_inlet> * 4);
recipes.addShaped(<nuclearcraft:turbine_inlet> * 4, [[<ore:ingotHSLASteel>, <ore:ingotHSLASteel>, <ore:ingotHSLASteel>],[<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_device1:6>], [<ore:ingotHSLASteel>, <ore:ingotHSLASteel>, <ore:ingotHSLASteel>]]);

recipes.remove(<nuclearcraft:turbine_outlet> * 4);
recipes.addShapeless(<nuclearcraft:turbine_outlet>, [<nuclearcraft:turbine_inlet>]);
recipes.addShapeless(<nuclearcraft:turbine_inlet>, [<nuclearcraft:turbine_outlet>]);

recipes.remove(<qmd:ore_leacher>);
recipes.addShaped(<qmd:ore_leacher>, [[<ore:plateTitanium>, <nuclearcraft:rock_crusher>, <ore:plateTitanium>],[<nuclearcraft:chemical_reactor>, <nuclearcraft:part:10>, <nuclearcraft:chemical_reactor>], [<ore:plateTitanium>, <nuclearcraft:alloy:2>, <ore:plateTitanium>]]);

recipes.remove(<nuclearcraft:upgrade>);
recipes.addShaped(<nuclearcraft:upgrade>, [[<ore:dyeBlue>, <ore:dustRedstone>, <ore:dyeBlue>],[<ore:dustRedstone>, <immersiveengineering:material:27>, <ore:dustRedstone>], [<ore:dyeBlue>, <ore:dustRedstone>, <ore:dyeBlue>]]);

recipes.remove(<nuclearcraft:upgrade:1>);
recipes.addShaped(<nuclearcraft:upgrade:1>, [[<ore:plateElectrum>, <ore:dustRedstone>, <ore:plateElectrum>],[<ore:dustRedstone>, <immersiveengineering:material:27>, <ore:dustRedstone>], [<ore:plateElectrum>, <ore:dustRedstone>, <ore:plateElectrum>]]);



//--- carbon changes 
furnace.remove(<nuclearcraft:ingot:8>, <ore:dustGraphite>);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:8>);
Pressurizer.removeRecipeWithInput(<ore:ingotGraphite>);
AlloyFurnace.addRecipe(<ore:dustGraphite>*3,<immersivepetroleum:material>,<ore:ingotGraphite>*4,2.0,2.0);
IngotFormer.removeRecipeWithOutput(<ore:ingotGraphite>);
IngotFormer.addRecipe(<fluid:coal>*100,<ore:fuelCoke>,1,1);
Crystallizer.addRecipe(<fluid:coal>*100,<ore:ingotGraphite>,1,1);
Melter.addRecipe(<ore:fuelCoke>,<fluid:coal>*100,1,1);
Melter.addRecipe(<ore:dustCoke>,<fluid:coal>*100,1,1);

Infuser.removeRecipeWithOutput(<ore:dustTungstenOxide>);
Infuser.addRecipe(<ore:dustTungsten>, <fluid:oxygen>*1500,<ore:dustTungstenOxide>,1,1);


//--- added recipes -----
recipes.addShaped(<nuclearcraft:geiger_counter>, [[<ore:ingotSteel>, <ore:ingotFerroboron>, <ore:ingotFerroboron>],[<ore:ingotCopper>, <ore:dustRedstone>, <ore:dustRedstone>], [<ore:sheetPlastic>, <ore:ingotFerroboron>, <ore:ingotFerroboron>]]);



