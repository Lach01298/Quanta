import crafttweaker.item.IItemStack;
import mods.magneticraft.CrushingTable;
import mods.magneticraft.Sieve;

//---remove content---

mods.jei.JEI.hideCategory("magneticraft.sluice_box");
mods.jei.JEI.hideCategory("magneticraft.hydraulic_press");
mods.jei.JEI.hideCategory("magneticraft.oil_heater");
mods.jei.JEI.hideCategory("magneticraft.refinery");
mods.jei.JEI.hideCategory("magneticraft.refinery");
mods.jei.JEI.hideCategory("magneticraft.gasification_unit");
mods.jei.JEI.hideCategory("magneticraft.thermopile");


var removeItems= [<magneticraft:solar_panel>,
<magneticraft:solar_tower>,
<magneticraft:solar_mirror>,
<magneticraft:steam_turbine>,
<magneticraft:steam_turbine>,
<magneticraft:big_steam_boiler>,
<magneticraft:big_combustion_chamber>,
<magneticraft:refinery>,
<magneticraft:oil_heater>,
<magneticraft:hydraulic_press>,
<magneticraft:pumpjack>,
<magneticraft:gasification_unit>,
<magneticraft:sluice_box>,
<magneticraft:energy_receiver>,
<magneticraft:connector>,
<magneticraft:electric_pole>,
<magneticraft:electric_cable>,
<magneticraft:water_generator>,
<magneticraft:thermopile>,
<magneticraft:wind_turbine>,
<magneticraft:electric_heater>,
<magneticraft:rf_heater>,
<magneticraft:copper_coil>,
<magneticraft:brick_furnace>,
<magneticraft:electric_pole_transformer>,
<magneticraft:tesla_tower>,
<magneticraft:airlock>,
<magneticraft:battery>,
<magneticraft:computer>,
<magneticraft:mining_robot>,
<magneticraft:voltmeter>,
<magneticraft:thermometer>,
<magneticraft:battery_item_low>,
<magneticraft:battery_item_medium>,
<magneticraft:iron_hammer>,
<magneticraft:steel_hammer>,
<magneticraft:small_tank>,
<magneticraft:electric_furnace>,
<magneticraft:rf_transformer>,
<magneticraft:electric_piston>,
<magneticraft:ores>,
<magneticraft:ores:1>,
<magneticraft:ores:2>,
<magneticraft:ores:3>,
<magneticraft:ores:4>,
<magneticraft:ingots:5>,#tungsten
<magneticraft:light_plates:5>,
<magneticraft:heavy_plates:5>,
<magneticraft:nuggets:5>,
<magneticraft:chunks:5>,
<magneticraft:dusts:5>,
<magneticraft:rocky_chunks:5>,
<magneticraft:tungsten_gear>,
<magneticraft:storage_blocks:3>
] as  IItemStack[];

for i,item in removeItems{
	recipes.remove(item);
	mods.jei.JEI.hide(item);
}

recipes.remove(<magneticraft:ingots:4> * 9);
furnace.remove(<magneticraft:ingots:5>);


//---crushing table---
CrushingTable.addHammer(<immersiveengineering:tool>, 2, 5, 5);
CrushingTable.removeHammer(<magneticraft:iron_hammer>);
CrushingTable.removeHammer(<magneticraft:steel_hammer>);

CrushingTable.removeRecipe(<minecraft:iron_ore>);
CrushingTable.removeRecipe(<minecraft:gold_ore>);
CrushingTable.removeRecipe(<immersiveengineering:ore>);
CrushingTable.removeRecipe(<immersiveengineering:ore:1>);
CrushingTable.removeRecipe(<immersiveengineering:ore:3>);
CrushingTable.removeRecipe(<immersiveengineering:ore:4>);
CrushingTable.removeRecipe(<nuclearcraft:ore:2>);
CrushingTable.removeRecipe(<nuclearcraft:ore:1>);
CrushingTable.removeRecipe(<magneticraft:ores:2>);
CrushingTable.removeRecipe(<magneticraft:ores:3>);
CrushingTable.removeRecipe(<magneticraft:ores:4>);

CrushingTable.removeRecipe(<minecraft:iron_block>);
CrushingTable.removeRecipe(<minecraft:gold_block>);
CrushingTable.removeRecipe(<nuclearcraft:ingot_block>);
CrushingTable.removeRecipe(<nuclearcraft:ingot_block:2>);
CrushingTable.removeRecipe(<magneticraft:storage_blocks:3>);
CrushingTable.removeRecipe(<nuclearcraft:alloy:5>);
CrushingTable.removeRecipe(<minecraft:stone>);

CrushingTable.addRecipe(<immersiveengineering:ore:1>, <contenttweaker:dust_aluminium_oxide>, true);
CrushingTable.addRecipe(<undergroundbiomes:sedimentary_stone>, <contenttweaker:calcite>, false);
CrushingTable.addRecipe(<undergroundbiomes:sedimentary_stone:1>, <contenttweaker:calcite>, false);
CrushingTable.addRecipe(<immersiveengineering:material:6>, <immersiveengineering:material:17>, false);
CrushingTable.addRecipe(<minecraft:coal>, <nuclearcraft:gem_dust:7>, true);
CrushingTable.addRecipe(<undergroundbiomes:metamorphic_cobble:3>,<nuclearcraft:gem_dust:2>,false);

CrushingTable.addRecipe(<minecraft:gravel>,<minecraft:sand>, true);

//---Sieve---
Sieve.removeRecipe(<magneticraft:rocky_chunks>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:1>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:2>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:3>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:4>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:5>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:7>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:8>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:9>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:10>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:11>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:12>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:13>);
Sieve.removeRecipe(<magneticraft:rocky_chunks:14>);
Sieve.removeRecipe(<minecraft:sand>);
Sieve.removeRecipe(<minecraft:gravel>);
Sieve.removeRecipe(<minecraft:soul_sand>);






//---change recipes---

recipes.remove(<magneticraft:inserter>);
recipes.addShaped(<magneticraft:inserter>, [[<immersiveengineering:material:9>, <ore:stickSteel>, null],[null, <immersiveengineering:material:9>, null], [<ore:plateSteel>, <immersiveengineering:material:27>, <ore:plateSteel>]]);

recipes.remove(<magneticraft:conveyor_belt> * 12);
recipes.addShaped(<magneticraft:conveyor_belt> * 8, [[<contenttweaker:plastic_sheet>, <contenttweaker:plastic_sheet>, <contenttweaker:plastic_sheet>],[<immersiveengineering:material:2>, <minecraft:redstone>, <immersiveengineering:material:2>], [null, null, null]]);

recipes.remove(<magneticraft:iron_pipe> * 12);
recipes.addShaped(<magneticraft:iron_pipe> * 8, [[<ore:ingotStainlessSteel>, <ore:plateSteel>, <ore:ingotStainlessSteel>],[<immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>, <immersiveengineering:metal_device1:6>], [<ore:ingotStainlessSteel>, <ore:plateSteel>, <ore:ingotStainlessSteel>]]);

recipes.remove(<magneticraft:pneumatic_tube> * 8);
recipes.addShaped(<magneticraft:pneumatic_tube> * 8, [[<ore:plateConstantan>, <ore:plateConstantan>, <ore:plateConstantan>],[<contenttweaker:plastic_sheet>, <contenttweaker:plastic_sheet>, <contenttweaker:plastic_sheet>], [<ore:plateConstantan>, <ore:plateConstantan>, <ore:plateConstantan>]]);

recipes.remove(<magneticraft:multiblock_parts> * 4);
recipes.addShaped(<magneticraft:multiblock_parts> * 4, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],[<ore:plateSteel>, <immersiveengineering:material:9>, <ore:plateSteel>], [<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>]]);

recipes.remove(<magneticraft:multiblock_parts:2> * 4);
recipes.addShaped(<magneticraft:multiblock_parts:2> * 4, [[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>],[<ore:stickIron>, <ore:stickIron>, <ore:stickIron>], [<ore:stickIron>, <ore:stickIron>, <ore:stickIron>]]);

recipes.remove(<magneticraft:multiblock_parts:3> * 6);
recipes.addShaped(<magneticraft:multiblock_parts:3> * 4, [[<ore:dyeBlack>, <ore:dyeYellow>, <ore:dyeBlack>],[<ore:dyeYellow>, <immersiveengineering:material:9>, <ore:dyeYellow>], [<ore:dyeBlack>, <ore:dyeYellow>, <ore:dyeBlack>]]);

recipes.remove(<magneticraft:multiblock_parts:5> * 8);
recipes.addShaped(<magneticraft:multiblock_parts:5> * 2, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],[<ore:plateIron>, null, <ore:plateIron>], [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]]);

recipes.remove(<magneticraft:multiblock_column> * 4);
recipes.addShaped(<magneticraft:multiblock_column> * 4, [[<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>],[<ore:stickSteel>, <immersiveengineering:material:9>, <ore:stickSteel>], [<ore:stickSteel>, <ore:plateSteel>, <ore:stickSteel>]]);

recipes.remove(<magneticraft:sieve>);
recipes.addShaped(<magneticraft:sieve>, [[<magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>, <magneticraft:multiblock_parts:2>],[<immersiveengineering:metal_decoration0>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:metal_decoration0>], [null, null, null]]);

recipes.remove(<magneticraft:electric_chainsaw>);
recipes.addShaped(<magneticraft:electric_chainsaw>, [[<ore:ingotSteel>, <ore:ingotSteel>, null],[<ore:ingotSteel>, <libvulpes:advancedmotor>, <ore:plateSteel>], [null, <ore:plateSteel>, <nuclearcraft:lithium_ion_cell>]]);

recipes.remove(<magneticraft:electric_drill>);
recipes.addShaped(<magneticraft:electric_drill>, [[<ore:ingotTungstenCarbide>, <ore:ingotTungstenCarbide>, null],[<ore:ingotTungstenCarbide>, <libvulpes:advancedmotor>, <ore:plateSteel>], [null, <ore:plateSteel>, <nuclearcraft:lithium_ion_cell>]]);

recipes.remove(<magneticraft:big_electric_furnace>);
recipes.addShaped(<magneticraft:big_electric_furnace>, [[<ore:ingotNichrome>, <ore:ingotNichrome>, <ore:ingotNichrome>],[<minecraft:brick_block>, <immersiveengineering:metal_decoration0:5>, <minecraft:brick_block>], [null, null, null]]);

recipes.remove(<magneticraft:multiblock_parts:4>);
recipes.addShaped(<magneticraft:multiblock_parts:4>, [[null, <immersiveengineering:metal_decoration0>, null],[null, <magneticraft:multiblock_parts>, null], [null, <immersiveengineering:metal_decoration0>, null]]);

recipes.addShapeless(<magneticraft:light_plates>, [<immersiveengineering:metal:39>,<immersiveengineering:metal:39>]);

recipes.remove(<magneticraft:combustion_chamber>);
recipes.addShaped(<magneticraft:combustion_chamber>, [[<minecraft:brick_block>, <ore:plateIron>, <minecraft:brick_block>],[<minecraft:brick_block>, null, <ore:plateIron>], [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]);


recipes.remove(<magneticraft:electric_engine>);
recipes.addShaped(<magneticraft:electric_engine>, [[null, <ore:ingotCopper>, null],[<minecraft:piston>, <immersiveengineering:metal_device1:2>, <ore:plateIron>], [null, <ore:ingotCopper>, null]]);

recipes.remove(<magneticraft:inserter_upgrade:1>);
recipes.addShaped(<magneticraft:inserter_upgrade:1>, [[null, <ore:chest>, null],[null, <nuclearcraft:upgrade>, null], [null, <ore:lightPlateIron>, null]]);

recipes.remove(<magneticraft:inserter_upgrade>);
recipes.addShaped(<magneticraft:inserter_upgrade>, [[null, null, null],[null, <nuclearcraft:upgrade>, null], [null, <ore:lightPlateIron>, null]]);

recipes.remove(<magneticraft:grinder>);
recipes.addShaped(<magneticraft:grinder>, [[null, null, null],[<magneticraft:multiblock_parts:3>, <immersiveengineering:metal_decoration0:5>, <magneticraft:multiblock_parts:3>], [<ore:plateSteel>, <immersiveengineering:material:27>, <ore:plateSteel>]]);

//---rename items----

<magneticraft:iron_pipe>.displayName = "Reinforced Fluid Pipe";


