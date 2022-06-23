import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipeBuilder.newBuilder;

var decomp_EnergyPerTick = 400 as int;
var decomp_time = 200 as int;



//steam cracking
RecipeBuilder.newBuilder("steam_cracking_lps", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:lpg> * 1000)
    .addFluidInput(<fluid:low_pressure_steam> * 2000)
    .addFluidOutput(<fluid:ethene> * 1000)
    .addFluidOutput(<fluid:hydrogen> * 1000)
    .addFluidOutput(<fluid:water> * 125)
    .build();
	
RecipeBuilder.newBuilder("steam_cracking", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:lpg> * 1000)
    .addFluidInput(<fluid:steam> * 2000)
    .addFluidOutput(<fluid:ethene> * 1000)
    .addFluidOutput(<fluid:hydrogen> * 1000)
    .addFluidOutput(<fluid:water> * 125)
    .build();
	
//thermal cracking

RecipeBuilder.newBuilder("thermal_cracking", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:gasoline> * 1000)
    .addFluidOutput(<fluid:toluene> * 500)
    .addFluidOutput(<fluid:hydrogen> * 500)
    .build();

// steam reforming	
RecipeBuilder.newBuilder("steam_reforming", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:methane> * 250)
	.addFluidInput(<fluid:steam> * 4000)
    .addFluidOutput(<fluid:carbon_monoxide> * 350)
    .addFluidOutput(<fluid:hydrogen> * 750)
    .build();

RecipeBuilder.newBuilder("steam_reforming_lps", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:methane> * 250)
	.addFluidInput(<fluid:low_pressure_steam> * 4000)
    .addFluidOutput(<fluid:carbon_monoxide> * 350)
    .addFluidOutput(<fluid:hydrogen> * 750)
    .build();
	
//Fischer–Tropsch process
RecipeBuilder.newBuilder("ft_process", "large_chemical_reactor", 300)
    .addEnergyPerTickInput(300)
    .addFluidInput(<fluid:carbon_monoxide> * 1600)
	.addFluidInput(<fluid:hydrogen> * 3300)
    .addFluidOutput(<fluid:light_oil> * 100)
    .addFluidOutput(<fluid:water> * 1600)
    .build();

//Solvay process
RecipeBuilder.newBuilder("calcite_decomp", "large_chemical_reactor", decomp_time)
    .addEnergyPerTickInput(decomp_EnergyPerTick)
    .addItemInput(<contenttweaker:calcite>)
    .addItemInput(<contenttweaker:dust_calcium_oxide>).setChance(0.0)
    .addItemOutput(<contenttweaker:dust_calcium_oxide>)
    .addFluidOutput(<fluid:carbon_dioxide> * 1000)
    .build();

RecipeBuilder.newBuilder("solvay", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
	.addFluidInput(<fluid:sodium_chloride_solution>*666)
    .addFluidInput(<fluid:carbon_dioxide>*1000)
	.addFluidInput(<fluid:ammonia>*1000)
    .addItemOutput(<contenttweaker:dust_sodium_bicarbonate>)
    .addFluidOutput(<fluid:ammonium_chloride_solution> * 666)
    .build();
	
RecipeBuilder.newBuilder("bicarb_decomp", "large_chemical_reactor", decomp_time)
    .addEnergyPerTickInput(decomp_EnergyPerTick)
	.addItemInput(<contenttweaker:dust_sodium_bicarbonate>*2)
    .addItemOutput(<contenttweaker:dust_sodium_carbonate>)
    .addFluidOutput(<fluid:carbon_dioxide> * 1000)
	.addFluidOutput(<fluid:water> * 1000)
    .build();
	
RecipeBuilder.newBuilder("nh4cl_rec", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
	.addItemInput(<contenttweaker:dust_calcium_oxide>)
    .addFluidInput(<fluid:ammonium_chloride_solution>*2000)
    .addFluidOutput(<fluid:ammonia> * 2000)
	.addFluidOutput(<fluid:calcium_chloride_solution> * 666)
    .build();

//Leblanc process
RecipeBuilder.newBuilder("l_process_1", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:sulfuric_acid> * 1000)
	.addItemInput(<qmd:chemical_dust:3> * 2)
    .addItemOutput(<contenttweaker:dust_sodium_sulfate>)
    .addFluidOutput(<fluid:hydrochloric_acid> * 2000)
    .build();
	
RecipeBuilder.newBuilder("l_process_2", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_sodium_sulfate>)
	.addItemInput(<ore:dustCoke>)
	.addItemInput(<contenttweaker:calcite>) //CaCO3
	.addItemOutput(<contenttweaker:dust_sodium_carbonate>)
    .addItemOutput(<contenttweaker:dust_calcium_sulfide>)
    .addFluidOutput(<fluid:carbon_dioxide>*1000)
    .build();
	
RecipeBuilder.newBuilder("l_process_3", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_calcium_sulfide>)
	.addFluidInput(<fluid:hydrochloric_acid>*2000)
	.addItemOutput(<contenttweaker:dust_calcium_chloride>)
    .addFluidOutput(<fluid:hydrogen_sulfide>*1000)
    .build();

RecipeBuilder.newBuilder("hs_burning", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:hydrogen_sulfide>*1000)
	.addFluidInput(<fluid:oxygen>*1500)
	.addFluidOutput(<fluid:sulfur_dioxide>*1000)
    .addFluidOutput(<fluid:water>*1000)
    .build();
	
RecipeBuilder.newBuilder("hs_burning_air", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:hydrogen_sulfide>*1000)
	.addFluidInput(<fluid:compressed_air>*7500)
	.addFluidOutput(<fluid:sulfur_dioxide>*1000)
    .addFluidOutput(<fluid:water>*1000)
    .build();

// boron

RecipeBuilder.newBuilder("boric_acid", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:borax_solution>*666)
	.addFluidInput(<fluid:hydrochloric_acid>*2000)
	.addFluidOutput(<fluid:boric_acid>*4000)
    .addFluidOutput(<fluid:sodium_chloride_solution>*1332)
    .build();
	
RecipeBuilder.newBuilder("boric_acid_decomp", "large_chemical_reactor", decomp_time)
    .addEnergyPerTickInput(decomp_EnergyPerTick)
    .addItemInput(<contenttweaker:dust_boric_acid>*2)
	.addItemOutput(<contenttweaker:dust_boron_trioxide>)
    .addFluidOutput(<fluid:water>*3000)
    .build();

RecipeBuilder.newBuilder("bf3", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_boron_trioxide>)
	.addFluidInput(<fluid:hydrofluoric_acid>*6000)
	.addFluidOutput(<fluid:boron_trifluoride>*2000)
    .addFluidOutput(<fluid:water>*3000)
    .build();
	
RecipeBuilder.newBuilder("diborane_lif", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_lithium_hydride>*6)
	.addFluidInput(<fluid:boron_trifluoride>*2000)
	.addFluidOutput(<fluid:diborane>*1000)
    .addItemOutput(<contenttweaker:dust_lithium_fluoride>*6)
    .build();

RecipeBuilder.newBuilder("diborane_decomp", "large_chemical_reactor", decomp_time)
    .addEnergyPerTickInput(decomp_EnergyPerTick)
	.addFluidInput(<fluid:diborane>*500)
	.addFluidOutput(<fluid:boron>*144)
    .addFluidOutput(<fluid:hydrogen>*1500)
    .build();
	
RecipeBuilder.newBuilder("diborane", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
	.addFluidInput(<fluid:boron>*144)
    .addFluidInput(<fluid:hydrogen>*1500)
	.addFluidOutput(<fluid:diborane>*500)
    .build();
	
// lithium	
RecipeBuilder.newBuilder("spodumene", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:spodumene>)
	.addFluidInput(<fluid:sulfuric_acid>*1000)
	.addItemOutput(<contenttweaker:dust_lithium_sulfate>)
	.addItemOutput(<immersiveengineering:material:7>)
    .addFluidOutput(<fluid:water>*1000)
    .build();
	
RecipeBuilder.newBuilder("lioh", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_lithium_sulfate>)
	.addFluidInput(<fluid:sodium_hydroxide_solution>*1332)
	.addItemOutput(<contenttweaker:dust_lithium_hydroxide>*2)
    .addFluidOutput(<fluid:sodium_sulfate_solution>*666)
    .build();
	
RecipeBuilder.newBuilder("licl", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_lithium_hydroxide>)
	.addFluidInput(<fluid:hydrochloric_acid>*1000)
	.addItemOutput(<contenttweaker:dust_lithium_chloride>)
    .addFluidOutput(<fluid:water>*1000)
    .build();

RecipeBuilder.newBuilder("lioh_2", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_lithium_carbonate>)
	.addItemInput(<contenttweaker:dust_calcium_hydroxide>)
	.addItemOutput(<contenttweaker:dust_lithium_hydroxide>*2)
    .addItemOutput(<contenttweaker:calcite>)
    .build();
	
RecipeBuilder.newBuilder("li2co3", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_lithium_hydroxide>*2)
	.addFluidInput(<fluid:carbon_dioxide>*1000)
	.addItemOutput(<contenttweaker:dust_lithium_carbonate>)
    .addFluidOutput(<fluid:water>*1000)
    .build();

RecipeBuilder.newBuilder("licl_2", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_lithium_carbonate>)
	.addFluidInput(<fluid:hydrochloric_acid>*2000)
	.addItemOutput(<contenttweaker:dust_lithium_chloride>*2)
    .addFluidOutput(<fluid:water>*1000)
	.addFluidOutput(<fluid:carbon_dioxide>*1000)
    .build();
	
RecipeBuilder.newBuilder("lih", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<ore:dustLithium>)
	.addFluidInput(<fluid:hydrogen>*500)
	.addItemOutput(<contenttweaker:dust_lithium_hydride>)
    .build();

//phosphorus	
RecipeBuilder.newBuilder("white_phos", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(300)
    .addItemInput(<contenttweaker:phosphorite>)
	.addItemInput(<ore:sand>)
	.addItemInput(<immersiveengineering:material:17>*2)
	.addItemOutput(<contenttweaker:dust_white_phosphorus>)
	.addItemOutput(<immersiveengineering:material:7>)
	.addFluidOutput(<fluid:carbon_monoxide>*2000)
    .build();	
	
RecipeBuilder.newBuilder("phosphine", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_white_phosphorus>)
	.addFluidInput(<fluid:sodium_hydroxide_solution>*1998)
	.addFluidOutput(<fluid:phosphine>*1000)
	.addItemOutput(<contenttweaker:dust_sodium_hypophosphite>*3)
    .build();	
	
RecipeBuilder.newBuilder("sodium_hypophosphite_decomp", "large_chemical_reactor", decomp_time)
    .addEnergyPerTickInput(decomp_EnergyPerTick)
    .addItemInput(<contenttweaker:dust_sodium_hypophosphite>*2)
	.addFluidOutput(<fluid:phosphine>*1000)
	.addItemOutput(<minecraft:dye:15>)
    .build();
	


	
// thorium

RecipeBuilder.newBuilder("thf4", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_thorium_dioxide>)
	.addFluidInput(<fluid:hydrofluoric_acid>*4000)
	.addItemOutput(<contenttweaker:dust_thorium_tetrafluoride>)
	.addFluidOutput(<fluid:water>*2000)
    .build();
	
RecipeBuilder.newBuilder("thorium", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(400)
    .addItemInput(<contenttweaker:dust_thorium_tetrafluoride>)
	.addItemInput(<qmd:dust:13>*2)
	.addFluidOutput(<fluid:thorium>*144)
	.addFluidOutput(<fluid:fluorite>*1332)
    .build();

// hafnium

RecipeBuilder.newBuilder("hfcl4", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<ore:dustHafniumOxide>)
	.addItemInput(<immersiveengineering:material:17>*2)
	.addFluidInput(<fluid:chlorine>*2000)
	.addItemOutput(<contenttweaker:dust_hafnium_tetrachloride>)
	.addFluidOutput(<fluid:carbon_monoxide>*2000)
    .build();
	
RecipeBuilder.newBuilder("hafnium", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(400)
    .addItemInput(<contenttweaker:dust_hafnium_tetrachloride>)
	.addFluidInput(<fluid:magnesium>*288)
	.addFluidOutput(<fluid:hafnium>*144)
	.addFluidOutput(<fluid:magnesium_chloride>*288)
    .build();
	
// zirconium
RecipeBuilder.newBuilder("zrcl4", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_zirconium_dioxide>)
	.addItemInput(<immersiveengineering:material:17>*2)
	.addFluidInput(<fluid:chlorine>*2000)
	.addItemOutput(<contenttweaker:dust_zirconium_tetrachloride>)
	.addFluidOutput(<fluid:carbon_monoxide>*2000)
    .build();
	
RecipeBuilder.newBuilder("zirconium", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(400)
    .addItemInput(<contenttweaker:dust_zirconium_tetrachloride>)
	.addFluidInput(<fluid:magnesium>*288)
	.addFluidOutput(<fluid:zirconium>*144)
	.addFluidOutput(<fluid:magnesium_chloride>*288)
    .build();

// titanium
RecipeBuilder.newBuilder("ticl4", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_titanium_dioxide>)
	.addItemInput(<immersiveengineering:material:17>*2)
	.addFluidInput(<fluid:chlorine>*2000)
	.addFluidOutput(<fluid:titanium_tetrachloride>*144)
	.addFluidOutput(<fluid:carbon_monoxide>*2000)
    .build();
	
RecipeBuilder.newBuilder("titanium", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(400)
    .addFluidInput(<fluid:titanium_tetrachloride>*144)
	.addFluidInput(<fluid:magnesium>*288)
	.addFluidOutput(<fluid:titanium>*144)
	.addFluidOutput(<fluid:magnesium_chloride>*288)
    .build();

// beryllium
RecipeBuilder.newBuilder("becl", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_beryllium_oxide>)
	.addItemInput(<ore:dustCoke>)
	.addFluidInput(<fluid:chlorine>*1000)
	.addItemOutput(<contenttweaker:dust_beryllium_chloride>)
	.addFluidOutput(<fluid:carbon_monoxide>*1000)
    .build();
	
RecipeBuilder.newBuilder("becl", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<ore:dustQuartz>)
	.addFluidInput(<fluid:hydrofluoric_acid>*6000)
	.addFluidOutput(<fluid:sodium_fluorosilicate_solution>*1000)
    .build();

// tungsten

RecipeBuilder.newBuilder("tungsten", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(400)
    .addItemInput(<ore:dustTungstenOxide>)
	.addFluidInput(<fluid:hydrogen>*3000)
	.addItemOutput(<qmd:dust>) //don't use oredicts as output
	.addFluidOutput(<fluid:water>*3000)
    .build();
	
// hydrofluoric acid
	RecipeBuilder.newBuilder("hf", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:fluorite_water>*333)
	.addFluidInput(<fluid:sulfuric_acid>*500)
	.addFluidOutput(<fluid:hydrofluoric_acid>*1000)
	.addFluidOutput(<fluid:calcium_sulfate_solution>*333)
    .build();
	
// nitric acid 
	RecipeBuilder.newBuilder("no", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:nitrogen>*1000)
	.addFluidInput(<fluid:oxygen>*1000)
	.addFluidOutput(<fluid:nitric_oxide>*2000)
    .build();
	
RecipeBuilder.newBuilder("no2", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:nitric_oxide>*1000)
	.addFluidInput(<fluid:oxygen>*1000)
	.addFluidOutput(<fluid:nitrogen_dioxide>*2000)
    .build();
	
RecipeBuilder.newBuilder("nitric_acid", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:nitrogen_dioxide>*3000)
	.addFluidInput(<fluid:water>*1000)
	.addFluidOutput(<fluid:nitric_acid>*2000)
	.addFluidOutput(<fluid:nitric_oxide>*1000)
    .build();

// other
RecipeBuilder.newBuilder("mno2", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<ore:ingotManganeseOxide>)
	.addFluidInput(<fluid:oxygen>*1000)
	.addItemOutput(<ore:ingotManganeseDioxide>)
	.build();
		
RecipeBuilder.newBuilder("mno2_dust", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<ore:dustManganeseOxide>)
	.addFluidInput(<fluid:oxygen>*1000)
	.addItemOutput(<ore:dustManganeseDioxide>)
	.build();
	
RecipeBuilder.newBuilder("nh4f_decomp", "large_chemical_reactor", decomp_time)
    .addEnergyPerTickInput(decomp_EnergyPerTick)
    .addItemInput(<contenttweaker:dust_ammonium_fluoride>)
	.addFluidOutput(<fluid:ammonia>*1000)
	.addFluidOutput(<fluid:hydrofluoric_acid>*1000)
	.build();
	


//ammonium sulfate
RecipeBuilder.newBuilder("ammonium_sulfate_neutralization", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(10)
    .addItemInput(<contenttweaker:dust_ammonium_sulfate>)
    .addFluidInput(<fluid:sodium_hydroxide_solution>*1332)
	.addFluidOutput(<fluid:ammonia_solution>*2000)
	.addFluidOutput(<fluid:sodium_sulfate_solution>*666)
	.build();

RecipeBuilder.newBuilder("ammonium_sulfate_fertilizer", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_ammonium_sulfate>)
    .addItemInput(<minecraft:dye:15>).setChance(0.0)
	.addItemOutput(<minecraft:dye:15>*2)
	.build();
	
RecipeBuilder.newBuilder("ammonium_sulfate_decomposition", "large_chemical_reactor", decomp_time)
    .addEnergyPerTickInput(decomp_EnergyPerTick)
    .addItemInput(<contenttweaker:dust_ammonium_sulfate>)
    .addItemInput(<advancedrocketry:ic>).setChance(0.0)
	.addFluidOutput(<fluid:ammonia>*2000)
	.addFluidOutput(<fluid:sulfuric_acid>*1000)
	.build();
	



RecipeBuilder.newBuilder("plastic", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:ethene>*1000)
	.addItemOutput(<contenttweaker:plastic_sheet>)
	.build();
	
RecipeBuilder.newBuilder("tnt", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:toluene>*1000)
	.addFluidInput(<fluid:nitric_acid>*3000)
	.addFluidOutput(<fluid:tnt>*1000)
	.addFluidOutput(<fluid:water>*3000)
	.build();
	
RecipeBuilder.newBuilder("carbon_cartridge", "large_chemical_reactor", 50)
    .addEnergyPerTickInput(50)
    .addItemInput(<advancedrocketry:carbonscrubbercartridge:32766>)
	.addItemOutput(<contenttweaker:dust_lithium_carbonate>)
	.addItemOutput(<immersiveengineering:metal:39>*5)
	.addFluidOutput(<fluid:water>)
	.build();

RecipeBuilder.newBuilder("lioh", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_lithium_carbonate>)
	.addItemInput(<contenttweaker:dust_calcium_hydroxide>)
	.addItemOutput(<contenttweaker:dust_lithium_hydroxide>*2)
	.addItemOutput(<contenttweaker:calcite>)
	.build();

RecipeBuilder.newBuilder("caoh", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dust_calcium_oxide>)
	.addFluidInput(<fluid:water>*1000)
	.addItemOutput(<contenttweaker:dust_calcium_hydroxide>)
	.build();
	
RecipeBuilder.newBuilder("ammonia_solution", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:ammonia>*1000)
	.addFluidInput(<fluid:water>*1000)
	.addFluidOutput(<fluid:ammonia_solution>*1000)
	.build();

// 1/2[Mg2SiO4 + Fe2SiO4] + 2CO2 ->  SiO2 +MgCO3 + FeCO3
RecipeBuilder.newBuilder("olivine", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:olivine>)
	.addFluidInput(<fluid:carbon_dioxide>*2000)
	.addItemOutput(<contenttweaker:dust_magnesium_carbonate>)
	.addItemOutput(<contenttweaker:dust_iron_carbonate>)
	.addItemOutput(<minecraft:sand>)
	.build();
	
// 3CaMg(CO3)2 + 4SiO2 ->  Mg3Si4O10(OH)2 +3CaCO3 + 3CO2
RecipeBuilder.newBuilder("talc", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addItemInput(<contenttweaker:dolomite>*3)
	.addItemInput(<minecraft:sand>*4)
	.addFluidInput(<fluid:water>*1000)
	.addItemOutput(<contenttweaker:talc>)
	.addItemOutput(<contenttweaker:calcite>*3)
	.addFluidOutput(<fluid:carbon_dioxide>*3000)
	.build();
	
RecipeBuilder.newBuilder("mgco3_decomp", "large_chemical_reactor", decomp_time)
    .addEnergyPerTickInput(decomp_EnergyPerTick)
    .addItemInput(<contenttweaker:dust_magnesium_carbonate>)
	.addItemOutput(<contenttweaker:dust_magnesium_oxide>)
	.addFluidOutput(<fluid:carbon_dioxide>*1000)
	.build();
	
RecipeBuilder.newBuilder("feco3_decomp", "large_chemical_reactor", decomp_time)
    .addEnergyPerTickInput(decomp_EnergyPerTick)
    .addItemInput(<contenttweaker:dust_iron_carbonate>)
	.addItemOutput(<contenttweaker:dust_iron_oxide>)
	.addFluidOutput(<fluid:carbon_dioxide>*1000)
	.build();
	
RecipeBuilder.newBuilder("hydrogen_cyanide", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:methane>*2000)
	.addFluidInput(<fluid:ammonia>*1000)
	.addFluidInput(<fluid:oxygen>*3000)
	.addFluidOutput(<fluid:hydrogen_cyanide>*2000)
	.addFluidOutput(<fluid:water>*6000)
	.build();

RecipeBuilder.newBuilder("sodium_cyanide_solution", "large_chemical_reactor", 100)
    .addEnergyPerTickInput(100)
    .addFluidInput(<fluid:hydrogen_cyanide>*1000)
	.addFluidInput(<fluid:naoh>*1000)
	.addFluidOutput(<fluid:sodium_cyanide_solution>*1000)
	.build();


	
