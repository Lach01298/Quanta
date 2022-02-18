import mods.immersivetechnology.Distiller;
import mods.nuclearcraft.Crystallizer;

//---distiller as crystalizer---
//mods.immersivetechnology.Distiller.addRecipe(ILiquidStack outputFluid, ILiquidStack inputFluid, IItemStack outputItem);

var distillerTime = 400 as int;
var distillerEnergy = 40000 as int;

Distiller.addRecipe(<fluid:water>*1000, <fluid:boron_nitride_solution>*666, <nuclearcraft:gem_dust:4>,distillerEnergy,distillerTime,1.0);
Distiller.addRecipe(<fluid:water>*1000, <fluid:fluorite_water>*666, <nuclearcraft:gem_dust:5>,distillerEnergy,distillerTime,1.0);
Distiller.addRecipe(<fluid:water>*1000, <fluid:calcium_sulfate_solution>*666, <nuclearcraft:compound>,distillerEnergy,distillerTime,1.0);
Distiller.addRecipe(<fluid:water>*1000, <fluid:sodium_fluoride_solution>*666, <nuclearcraft:compound:3>,distillerEnergy,distillerTime,1.0);
Distiller.addRecipe(<fluid:water>*1000, <fluid:potassium_fluoride_solution>*666, <nuclearcraft:compound:4>,distillerEnergy,distillerTime,1.0);
Distiller.addRecipe(<fluid:water>*1000, <fluid:sodium_hydroxide_solution>*666, <nuclearcraft:compound:5>,distillerEnergy,distillerTime,1.0);
Distiller.addRecipe(<fluid:water>*1000, <fluid:potassium_hydroxide_solution>*666, <nuclearcraft:compound:6>,distillerEnergy,distillerTime,1.0);
Distiller.addRecipe(<fluid:water>*1000, <fluid:borax_solution>*666, <nuclearcraft:compound:7>,distillerEnergy,distillerTime,1.0);
Distiller.addRecipe(<fluid:water>*1000, <fluid:sodium_chloride_solution>*666, <qmd:chemical_dust:3>,distillerEnergy,distillerTime,1.0);
Distiller.addRecipe(<fluid:distwater>*1000, <fluid:water>*1000, <qmd:chemical_dust:3>,distillerEnergy,distillerTime,0.05);
Distiller.addRecipe(<fluid:water>*1000, <fluid:boric_acid>*1000, <contenttweaker:dust_boric_acid>,distillerEnergy,distillerTime,1.0);

Distiller.addRecipe(<fluid:water>*1000, <fluid:sodium_carbonate_solution>*666, <contenttweaker:dust_sodium_carbonate>,distillerEnergy,distillerTime,1.0);
Crystallizer.addRecipe(<fluid:sodium_carbonate_solution>*666,<contenttweaker:dust_sodium_carbonate>,1,1);

Distiller.addRecipe(<fluid:water>*1000, <fluid:sodium_sulfate_solution>*666, <contenttweaker:dust_sodium_sulfate>,distillerEnergy,distillerTime,1.0);
Crystallizer.addRecipe(<fluid:sodium_sulfate_solution>*666,<contenttweaker:dust_sodium_sulfate>,1,1);

Distiller.addRecipe(<fluid:water>*1000, <fluid:calcium_chloride_solution>*666, <contenttweaker:dust_calcium_chloride>,distillerEnergy,distillerTime,1.0);
Crystallizer.addRecipe(<fluid:calcium_chloride_solution>*666,<contenttweaker:dust_calcium_chloride>,1,1);