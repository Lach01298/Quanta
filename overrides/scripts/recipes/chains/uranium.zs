import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipeBuilder.newBuilder;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.Separator;
var decomp_EnergyPerTick = 400 as int;
var decomp_time = 200 as int;

Centrifuge.removeRecipeWithInput(<liquid:uranium>*160);
Separator.removeRecipeWithInput(<nuclearcraft:ingot:4>*10);


// uranium
RecipeBuilder.newBuilder("ammonium_diuranate_decomp", "large_chemical_reactor", decomp_time)
    .addEnergyPerTickInput(decomp_EnergyPerTick)
    .addItemInput(<contenttweaker:dust_ammonium_diuranate>)
	.addItemOutput(<contenttweaker:dust_uranium_trioxide>*2)
	.addFluidOutput(<fluid:ammonia>*2000)
	.addFluidOutput(<fluid:water>*1000)
    .build();	
	
RecipeBuilder.newBuilder("uo3_reduction", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_uranium_trioxide>)
	.addFluidInput(<fluid:hydrogen>*1000)
	.addItemOutput(<contenttweaker:dust_uranium_dioxide>)
	.addFluidOutput(<fluid:water>*1000)
    .build();
	
RecipeBuilder.newBuilder("uf4", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_uranium_dioxide>)
	.addFluidInput(<fluid:hydrofluoric_acid>*4000)
	.addItemOutput(<contenttweaker:dust_uranium_tetrafluoride>)
	.addFluidOutput(<fluid:water>*2000)
    .build();
	
RecipeBuilder.newBuilder("uf42", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<ore:ingotUranium>)
	.addFluidInput(<fluid:hydrofluoric_acid>*4000)
	.addItemOutput(<contenttweaker:dust_uranium_tetrafluoride>)
	.addFluidOutput(<fluid:hydrogen>*4000)
    .build();
	

RecipeBuilder.newBuilder("uf6", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_uranium_tetrafluoride>)
	.addFluidInput(<fluid:fluorine>*1000)
	.addFluidOutput(<fluid:uranium_hexafluoride>*1000)
    .build();

mods.nuclearcraft.Centrifuge.addRecipe(<fluid:uranium_hexafluoride>*1000, <fluid:uranium-238_hexafluoride>*992,<fluid:uranium-235_hexafluoride>*8,null, null, null, null);


RecipeBuilder.newBuilder("U-238", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(400)
    .addFluidInput(<fluid:uranium-238_hexafluoride>*1000)
	.addItemInput(<qmd:dust:13>*3)
	.addFluidOutput(<liquid:uranium_238>*144)
	.addFluidOutput(<fluid:fluorite>*1998)
    .build();

RecipeBuilder.newBuilder("U-235", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(400)
    .addFluidInput(<fluid:uranium-235_hexafluoride>*1000)
	.addItemInput(<qmd:dust:13>*3)
	.addFluidOutput(<liquid:uranium_235>*144)
	.addFluidOutput(<fluid:fluorite>*1998)
    .build();