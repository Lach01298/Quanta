import mods.nuclearcraft.Enricher;
import mods.immersiveengineering.Mixer;

//---mixer as fluid enricher---

var mixerEnergy = 25000 as int;
//mods.immersiveengineering.Mixer.addRecipe(ILiquidStack output, ILiquidStack fluidInput, IIngredient[] itemInputs, int energy);

Mixer.addRecipe(<fluid:boron_nitride_solution>*666, <fluid:water>*1000, [<ore:dustBoronNitride>], mixerEnergy);
Mixer.addRecipe(<fluid:fluorite_water>*666, <fluid:water>*1000, [<ore:dustFluorite>], mixerEnergy);
Mixer.addRecipe(<fluid:calcium_sulfate_solution>*666, <fluid:water>*1000, [<ore:dustCalciumSulfate>], mixerEnergy);
Mixer.addRecipe(<fluid:sodium_fluoride_solution>*666, <fluid:water>*1000, [<ore:dustSodiumFluoride>], mixerEnergy);
Mixer.addRecipe(<fluid:potassium_fluoride_solution>*666, <fluid:water>*1000, [<ore:dustPotassiumFluoride>], mixerEnergy);
Mixer.addRecipe(<fluid:sodium_hydroxide_solution>*666, <fluid:water>*1000, [<ore:dustSodiumHydroxide>], mixerEnergy);
Mixer.addRecipe(<fluid:potassium_hydroxide_solution>*666, <fluid:water>*1000, [<ore:dustPotassiumHydroxide>], mixerEnergy);
Mixer.addRecipe(<fluid:borax_solution>*666, <fluid:water>*1000, [<ore:dustBorax>], mixerEnergy);
Mixer.addRecipe(<fluid:sodium_chloride_solution>*666, <fluid:water>*1000, [<ore:dustSodiumChloride>], mixerEnergy);
Mixer.addRecipe(<fluid:witherite_water>*666, <fluid:water>*1000, [<ore:dustWitherite>], mixerEnergy);

Mixer.addRecipe(<fluid:calcium_sulfate_solution>*333, <fluid:sulfuric_acid>*500, [<contenttweaker:dust_calcium_oxide>], mixerEnergy);
Enricher.addRecipe(<contenttweaker:dust_calcium_oxide>,<fluid:sulfuric_acid>*500,<fluid:calcium_sulfate_solution>*333,1.0,1.0);

Enricher.addRecipe(<ore:dustQuartz>,<fluid:hydrofluoric_acid>*6000,<fluid:sodium_fluorosilicate_solution>*1000,1.0,1.0);

Mixer.addRecipe(<fluid:sodium_carbonate_solution>*666, <fluid:water>*1000, [<contenttweaker:dust_sodium_carbonate>], mixerEnergy);
Enricher.addRecipe(<contenttweaker:dust_sodium_carbonate>,<fluid:water>*1000,<fluid:sodium_carbonate_solution>*666,1.0,1.0);

Mixer.addRecipe(<fluid:sodium_sulfate_solution>*666, <fluid:water>*1000, [<contenttweaker:dust_sodium_sulfate>], mixerEnergy);
Enricher.addRecipe(<contenttweaker:dust_sodium_sulfate>,<fluid:water>*1000,<fluid:sodium_sulfate_solution>*666,1.0,1.0);

Mixer.addRecipe(<fluid:calcium_chloride_solution>*666, <fluid:water>*1000, [<contenttweaker:dust_calcium_chloride>], mixerEnergy);
Enricher.addRecipe(<contenttweaker:dust_calcium_chloride>,<fluid:water>*1000,<fluid:calcium_chloride_solution>*666,1.0,1.0);