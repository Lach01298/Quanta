import mods.nuclearcraft.ChemicalReactor;
import mods.immersiveengineering.Refinery;


//---Refinery as chemical reactor---

var chemicalReactorEnergy = 100 as int;

Refinery.addRecipe(<fluid:ammonia>*1, <fluid:hydrogen>*3, <fluid:nitrogen>*1, chemicalReactorEnergy);
Refinery.addRecipe(<fluid:water>*1, <fluid:hydrogen>*2, <fluid:oxygen>*1, chemicalReactorEnergy);
Refinery.addRecipe(<fluid:heavy_water>*1, <fluid:deuterium>*2, <fluid:oxygen>*1, chemicalReactorEnergy);

Refinery.addRecipe(<fluid:hydrofluoric_acid>*1, <fluid:hydrogen>*1, <fluid:fluorine>*1, chemicalReactorEnergy);
ChemicalReactor.removeRecipeWithInput(<fluid:hydrogen>*250,<fluid:fluorine>*250);
ChemicalReactor.addRecipe(<fluid:hydrogen>*250,<fluid:fluorine>*250,<fluid:hydrofluoric_acid>*500,null,1,1);

Refinery.addRecipe(<fluid:sulfur_dioxide>*2, <fluid:sulfur>*1, <fluid:oxygen>*2, chemicalReactorEnergy); //slight loss
Refinery.addRecipe(<fluid:sulfur_dioxide>*2, <fluid:sulfur>*1, <fluid:compressed_air>*10, chemicalReactorEnergy);
ChemicalReactor.addRecipe(<fluid:sulfur>*333,<fluid:compressed_air>*2500,<fluid:sulfur_dioxide>*500,null,1,1);

Refinery.addRecipe(<fluid:sulfur_trioxide>*2, <fluid:sulfur_dioxide>*2, <fluid:oxygen>*1, chemicalReactorEnergy);
Refinery.addRecipe(<fluid:sulfur_trioxide>*2, <fluid:sulfur_dioxide>*2, <fluid:compressed_air>*5, chemicalReactorEnergy);
ChemicalReactor.addRecipe(<fluid:sulfur_dioxide>*500,<fluid:compressed_air>*1250,<fluid:sulfur_trioxide>*500,null,1,1);

Refinery.addRecipe(<fluid:sulfuric_acid>*1, <fluid:sulfur_trioxide>*1, <fluid:water>*1, chemicalReactorEnergy);

ChemicalReactor.removeRecipeWithInput(<fluid:sugar>*72,<fluid:water>*500);

Refinery.addRecipe(<fluid:methanol>*1, <fluid:carbon_monoxide>*1, <fluid:hydrogen>*2, chemicalReactorEnergy);

Refinery.addRecipe(<fluid:hydrochloric_acid>*2, <fluid:hydrogen>*1, <fluid:chlorine>*1, chemicalReactorEnergy);

//mods.immersiveengineering.Refinery.addRecipe(ILiquidStack output, ILiquidStack input0, ILiquidStack input1, int energy/tick); this is per tick

ChemicalReactor.addRecipe(<fluid:diborane>*500,null,<fluid:boron>*144,<fluid:hydrogen>*1500,1,1);


//--- other

ChemicalReactor.addRecipe(<fluid:gasoline>*1000,null,<fluid:toluene>*500,<fluid:hydrogen>*500,1,1);



ChemicalReactor.addRecipe(<fluid:methane>*250,<fluid:low_pressure_steam>*4000,<fluid:carbon_monoxide>*350,<fluid:hydrogen>*750,1,1);
ChemicalReactor.addRecipe(<fluid:methane>*250,<fluid:steam>*4000,<fluid:carbon_monoxide>*350,<fluid:hydrogen>*750,1,1);

ChemicalReactor.addRecipe(<fluid:carbon_monoxide>*1600,<fluid:hydrogen>*3300,<fluid:light_oil>*100,<fluid:water>*1600,3,3);

ChemicalReactor.addRecipe(<fluid:hydrogen_sulfide>*1000,<fluid:oxygen>*1500,<fluid:sulfur_dioxide>*1000,<fluid:water>*1000,1,1);
ChemicalReactor.addRecipe(<fluid:hydrogen_sulfide>*1000,<fluid:compressed_air>*7500,<fluid:sulfur_dioxide>*1000,<fluid:water>*1000,1,1);

ChemicalReactor.addRecipe(<fluid:borax_solution>*666,<fluid:hydrochloric_acid>*2000,<fluid:boric_acid>*4000,<fluid:sodium_chloride_solution>*1332,1,1);

ChemicalReactor.addRecipe(<fluid:titanium_tetrachloride>*144,<fluid:magnesium>*288,<fluid:titanium>*144,<fluid:magnesium_chloride>*288,1,4);

ChemicalReactor.addRecipe(<fluid:toluene>*1000,<fluid:nitric_acid>*3000,<fluid:tnt>*1000,<fluid:water>*3000,1,1);
ChemicalReactor.addRecipe(<fluid:ammonia>*1000,<fluid:water>*1000,<fluid:ammonia_solution>*1000,null,1,1);
ChemicalReactor.addRecipe(<fluid:hydrogen_cyanide>*1000,<fluid:naoh>*1000,<fluid:sodium_cyanide_solution>*1000,null,1,1);




