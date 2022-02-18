
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.RockCrusher;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Extractor;
import mods.qmd.ore_leacher;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.AlloySmelter;
import mods.immersivetechnology.Distiller;



var baseCrusherEnergy = 2048 as int;


Crusher.addRecipe(<minecraft:sand>, <advancedrocketry:hotturf>, baseCrusherEnergy, <contenttweaker:dust_iron_oxide>, 0.05);


Crusher.addRecipe(<minecraft:sand>, <contenttweaker:sulfur_crust>, baseCrusherEnergy, <nuclearcraft:gem_dust:6>, 0.05);
Crusher.addRecipe(<minecraft:sand>, <contenttweaker:white_sulfur_crust>, baseCrusherEnergy, <nuclearcraft:gem_dust:6>, 0.05);
Crusher.addRecipe(<minecraft:sand>, <contenttweaker:orange_sulfur_crust>, baseCrusherEnergy, <nuclearcraft:gem_dust:6>, 0.05);

Melter.addRecipe(<contenttweaker:dirty_ice>, <liquid:water>*1000, 0.25, 0.25);
Melter.addRecipe(<contenttweaker:co_ice>, <liquid:carbon_monoxide>*10000, 0.25, 0.25);
Melter.addRecipe(<contenttweaker:co2_ice>, <liquid:carbon_dioxide>*10000, 0.25, 0.25);
Melter.addRecipe(<contenttweaker:nitrogen_ice>, <liquid:nitrogen>*10000, 0.25, 0.25);
Melter.addRecipe(<contenttweaker:ammonia_ice>, <liquid:ammonia>*10000, 0.25, 0.25);

Extractor.addRecipe(<contenttweaker:anorthosite_regolith>, <minecraft:gravel>,<liquid:helium_3>*10, 1, 1);

Extractor.addRecipe(<contenttweaker:sulfur_crust>, <minecraft:gravel>,<liquid:sulfur_dioxide>*100, 1, 1);
Extractor.addRecipe(<contenttweaker:white_sulfur_crust>, <minecraft:gravel>,<liquid:sulfur_dioxide>*100, 1, 1);
Extractor.addRecipe(<contenttweaker:orange_sulfur_crust>, <minecraft:gravel>,<liquid:sulfur_dioxide>*100, 1, 1);
Extractor.addRecipe(<contenttweaker:dirty_ice>, <minecraft:ice>,<liquid:methane>*100, 1, 1);
Extractor.addRecipe(<contenttweaker:tholin_sand>, <minecraft:sand>,<liquid:methane>*100, 1, 1);
Extractor.addRecipe(<contenttweaker:tholin_soil>, <minecraft:sand>,<liquid:methane>*100, 1, 1);








