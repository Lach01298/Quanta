import mods.nuclearcraft.ChemicalReactor;
import mods.immersiveengineering.Refinery;


//---Refinery as chemical reactor---

var chemicalReactorEnergy = 100 as int;

Refinery.addRecipe(<fluid:ammonia>*10, <fluid:hydrogen>*15, <fluid:nitrogen>*5, chemicalReactorEnergy);
Refinery.addRecipe(<fluid:water>*10, <fluid:hydrogen>*10, <fluid:oxygen>*5, chemicalReactorEnergy);
Refinery.addRecipe(<fluid:heavy_water>*10, <fluid:deuterium>*10, <fluid:oxygen>*5, chemicalReactorEnergy);

Refinery.addRecipe(<fluid:hydrofluoric_acid>*10, <fluid:hydrogen>*5, <fluid:fluorine>*5, chemicalReactorEnergy);
ChemicalReactor.removeRecipeWithInput(<fluid:hydrogen>*250,<fluid:fluorine>*250);
ChemicalReactor.addRecipe(<fluid:hydrogen>*250,<fluid:fluorine>*250,<fluid:hydrofluoric_acid>*500,null,1,1);

Refinery.addRecipe(<fluid:sulfur_dioxide>*10, <fluid:sulfur>*10, <fluid:oxygen>*10, chemicalReactorEnergy); //slight loss
Refinery.addRecipe(<fluid:sulfur_dioxide>*10, <fluid:sulfur>*10, <fluid:compressed_air>*50, chemicalReactorEnergy);
ChemicalReactor.addRecipe(<fluid:sulfur>*333,<fluid:compressed_air>*1500,<fluid:sulfur_dioxide>*500,null,1,1);

Refinery.addRecipe(<fluid:sulfur_trioxide>*10, <fluid:sulfur_dioxide>*10, <fluid:oxygen>*5, chemicalReactorEnergy);
Refinery.addRecipe(<fluid:sulfur_trioxide>*10, <fluid:sulfur_dioxide>*10, <fluid:compressed_air>*25, chemicalReactorEnergy);
ChemicalReactor.addRecipe(<fluid:sulfur_dioxide>*500,<fluid:compressed_air>*1250,<fluid:sulfur_trioxide>*500,null,1,1);

Refinery.addRecipe(<fluid:sulfuric_acid>*5, <fluid:sulfur_trioxide>*5, <fluid:water>*5, chemicalReactorEnergy);

ChemicalReactor.removeRecipeWithInput(<fluid:sugar>*72,<fluid:water>*500);

Refinery.addRecipe(<fluid:methanol>*5, <fluid:carbon_monoxide>*5, <fluid:hydrogen>*10, chemicalReactorEnergy);

Refinery.addRecipe(<fluid:hydrochloric_acid>*10, <fluid:hydrogen>*5, <fluid:chlorine>*5, chemicalReactorEnergy);

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




