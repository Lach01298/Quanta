import mods.nuclearcraft.Manufactory;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.RockCrusher;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.Enricher;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Separator;
import mods.nuclearcraft.Infuser;
import mods.qmd.ore_leacher;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Mixer;
import mods.immersivetechnology.Distiller;
import mods.magneticraft.Grinder;
import mods.jei.JEI;


//Distiller.addRecipe(ILiquidStack outputFluid, ILiquidStack inputFluid, IItemStack outputItem)
//ArcFurnace.addRecipe(IItemStack output, IIngredient input, IItemStack slag, int time, int energyPerTick, @Optional IIngredient[] additives);
//ArcFurnace.removeRecipe(IItemstack output);
//Crusher.addRecipe(IItemStack output, IIngredient input, int energy, @Optional IItemStack secondaryOutput, @Optional double secondaryChance);
//Crusher.removeRecipesForInput(IItemstack input);

var slag = <immersiveengineering:material:7>;
var baseArcPower = 512 as int;
var baseArcTime = 100 as int;
var baseCrusherEnergy = 2048 as int;








//---furnace---
//remove

furnace.remove(<ore:ingotThorium>,<ore:oreThorium>);
furnace.remove(<ore:ingotThorium>*2,<ore:oreThoriumDense>);
furnace.remove(<ore:ingotUranium>,<ore:oreUranium>);
furnace.remove(<ore:ingotUranium>*2,<ore:oreUraniumDense>);
furnace.remove(<ore:ingotBoron>, <ore:oreBoron>);
furnace.remove(<ore:ingotBoron>*2,<ore:oreBoronDense>);
furnace.remove(<ore:ingotLithium>, <ore:oreLithium>);
furnace.remove(<ore:ingotLithium>*2,<ore:oreLithiumDense>);
furnace.remove(<ore:ingotMagnesium>, <ore:oreMagnesium>);
furnace.remove(<ore:ingotMagnesium>*2,<ore:oreMagnesiumDense>);
furnace.remove(<ore:ingotAluminum>,<ore:oreAluminum>);
furnace.remove(<ore:ingotAluminum>*2,<ore:oreAluminumDense>);
furnace.remove(<ore:ingotTitanium>,<ore:oreTitanium>);
furnace.remove(<ore:ingotTitanium>*2,<ore:oreTitaniumDense>);

//add
furnace.addRecipe(<minecraft:iron_ingot>, <contenttweaker:dust_iron_oxide>);
furnace.addRecipe(<qmd:ingot2:2>, <minecraft:redstone>);
furnace.addRecipe(<nuclearcraft:ingot:14>, <nuclearcraft:dust:14>); // readded because for some reason unidict removes it

//---crusher---
//remove
Crusher.removeRecipesForInput(<minecraft:iron_ore>);
Crusher.removeRecipesForInput(<nuclearcraft:ore>);
Crusher.removeRecipesForInput(<nuclearcraft:ore:1>);
Crusher.removeRecipesForInput(<nuclearcraft:ore:2>);
Crusher.removeRecipesForInput(<nuclearcraft:ore:3>);
Crusher.removeRecipesForInput(<nuclearcraft:ore:4>);
Crusher.removeRecipesForInput(<nuclearcraft:ore:5>);
Crusher.removeRecipesForInput(<nuclearcraft:ore:6>);
Crusher.removeRecipesForInput(<nuclearcraft:ore:7>);
Crusher.removeRecipesForInput(<immersiveengineering:ore:1>);
Crusher.removeRecipesForInput(<libvulpes:ore0:8>);

//add
Crusher.addRecipe(<contenttweaker:dust_iron_oxide>*2, <ore:oreIron>, baseCrusherEnergy, <contenttweaker:dust_chromium_oxide>, 0.10);
Crusher.addRecipe(<nuclearcraft:dust>*2, <ore:oreCopper>, baseCrusherEnergy, <nuclearcraft:gem_dust:6>, 0.25);
Crusher.addRecipe(<nuclearcraft:dust:1>*2, <ore:oreTin>, baseCrusherEnergy, <contenttweaker:scheelite>, 0.25);
Crusher.addRecipe(<nuclearcraft:dust:2>*2, <ore:oreLead>, baseCrusherEnergy, <nuclearcraft:gem_dust:6>, 0.5);
Crusher.addRecipe(<contenttweaker:monazite>*2, <ore:oreThorium>, baseCrusherEnergy);
Crusher.addRecipe(<contenttweaker:uranite>*2, <ore:oreUranium>, baseCrusherEnergy, <contenttweaker:columbite>, 0.25);
Crusher.addRecipe(<nuclearcraft:compound:7>*2, <ore:oreBoron>, baseCrusherEnergy);
Crusher.addRecipe(<contenttweaker:dust_titanium_dioxide>*2, <ore:oreTitanium>, baseCrusherEnergy);
Crusher.addRecipe(<contenttweaker:dust_aluminium_oxide>*2, <ore:oreAluminum>, baseCrusherEnergy, <contenttweaker:dust_iron_oxide>, 0.25);


//---Grinder---
//remove
Grinder.removeRecipe(<minecraft:iron_ore>);
Grinder.removeRecipe(<minecraft:gold_ore>);
Grinder.removeRecipe(<minecraft:redstone_ore>);
Grinder.removeRecipe(<minecraft:lapis_ore>);
Grinder.removeRecipe(<minecraft:quartz_ore>);
Grinder.removeRecipe(<minecraft:emerald_ore>);
Grinder.removeRecipe(<minecraft:diamond_ore>);
Grinder.removeRecipe(<minecraft:coal_ore>);
Grinder.removeRecipe(<minecraft:sandstone>);
Grinder.removeRecipe(<nuclearcraft:ore>);
Grinder.removeRecipe(<nuclearcraft:ore:1>);
Grinder.removeRecipe(<nuclearcraft:ore:2>);
Grinder.removeRecipe(<magneticraft:ores:2>);
Grinder.removeRecipe(<magneticraft:ores:3>);
Grinder.removeRecipe(<magneticraft:ores:4>);
Grinder.removeRecipe(<libvulpes:ore0:9>);
Grinder.removeRecipe(<immersiveengineering:ore:4>);
Grinder.removeRecipe(<immersiveengineering:ore:3>);
Grinder.removeRecipe(<magneticraft:limestone>);
Grinder.removeRecipe(<magneticraft:burnt_limestone>);


// add
Grinder.addRecipe(<minecraft:iron_ore>, <contenttweaker:dust_iron_oxide>*2, <contenttweaker:dust_chromium_oxide>, 0.1, 40, true);
Grinder.addRecipe(<minecraft:gold_ore>, <immersiveengineering:metal:19>*2, <minecraft:dirt>, 0.0, 40, true);
Grinder.addRecipe(<nuclearcraft:ore>, <nuclearcraft:dust>*2, <nuclearcraft:gem_dust:6>, 0.25, 40, true);
Grinder.addRecipe(<nuclearcraft:ore:1>, <nuclearcraft:dust:1>*2, <contenttweaker:scheelite>, 0.25, 40, true);
Grinder.addRecipe(<nuclearcraft:ore:2>, <nuclearcraft:dust:2>*2, <nuclearcraft:gem_dust:6>, 0.25, 40, true);
Grinder.addRecipe(<nuclearcraft:ore:3>, <contenttweaker:monazite>*2, <minecraft:dirt>, 0.00, 40, true);
Grinder.addRecipe(<nuclearcraft:ore:4>, <contenttweaker:uranite>*2, <contenttweaker:columbite>, 0.25, 40, true);
Grinder.addRecipe(<nuclearcraft:ore:5>, <nuclearcraft:compound:7>*2, <minecraft:dirt>, 0.00, 40, true);
Grinder.addRecipe(<libvulpes:ore0:8>, <contenttweaker:dust_titanium_dioxide>*2, <minecraft:dirt>, 0.00, 40, true);
Grinder.addRecipe(<immersiveengineering:ore:1>, <contenttweaker:dust_aluminium_oxide>*2, <contenttweaker:dust_iron_oxide>, 0.25, 40, true);
Grinder.addRecipe(<immersiveengineering:ore:3>, <nuclearcraft:dust:13>*2, <nuclearcraft:dust:2>, 0.10, 40, true);
Grinder.addRecipe(<immersiveengineering:ore:4>, <qmd:dust:5>*2, <qmd:dust:10>, 0.1, 40, true);




//---Arc Furnace---
//remove

ArcFurnace.removeRecipe(<nuclearcraft:ingot>*2);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:1>*2);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:2>*2);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:3>*2);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:4>*2);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:5>*2);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:6>*2);
ArcFurnace.removeRecipe(<nuclearcraft:ingot:7>*2);
ArcFurnace.removeRecipe(<immersiveengineering:metal:1>*2);
ArcFurnace.removeRecipe(<qmd:ingot:3>*2);

//add
ArcFurnace.addRecipe(<nuclearcraft:ingot:12>*2,<contenttweaker:dust_aluminium_oxide>, null, baseArcTime, baseArcPower*2);
ArcFurnace.addRecipe(<nuclearcraft:gem:6>, <ore:dustQuartz>, null, baseArcTime, baseArcPower, [<ore:dustCoke>]);
ArcFurnace.addRecipe(<nuclearcraft:ingot:7>, <contenttweaker:dust_magnesium_oxide>, slag, baseArcTime, baseArcPower, [<ore:itemSilicon>, <contenttweaker:dust_calcium_oxide>]);
ArcFurnace.addRecipe(<nuclearcraft:alloy:6>*2, <contenttweaker:dust_boric_acid>, null, baseArcTime, baseArcPower, [<ore:ingotSteel>]);
ArcFurnace.addRecipe(<qmd:ingot:2>*2, <contenttweaker:dust_chromium_oxide>, <contenttweaker:dust_aluminium_oxide>, baseArcTime, baseArcPower, [<ore:dustAluminum>*2]);

ArcFurnace.addRecipe(<qmd:ingot:1>*6, <contenttweaker:dust_niobium_pentoxide>*3, <contenttweaker:dust_aluminium_oxide>*5, baseArcTime, baseArcPower, [<ore:dustAluminum>*10]);


//---Melter---
//remove
Melter.removeRecipeWithInput(<ore:oreThorium>);
Melter.removeRecipeWithInput(<ore:oreUranium>);
Melter.removeRecipeWithInput(<ore:oreLithium>);
Melter.removeRecipeWithInput(<ore:oreMagnesium>);
Melter.removeRecipeWithInput(<ore:oreBoron>);
Melter.removeRecipeWithInput(<ore:oreAluminum>);
Melter.removeRecipeWithInput(<ore:oreTitanium>);

//add
Melter.addRecipe(<ore:oreAluminum>, <liquid:alumina>*144, 1.0, 1.0);
Melter.addRecipe(<contenttweaker:dust_aluminium_oxide>,<liquid:alumina>*72,1.0,1.0);


//---Manufactory---
//remove
Manufactory.removeRecipeWithOutput(<ore:itemSilicon>);
Manufactory.removeRecipeWithOutput(<ore:ingotSilicon>);


//---ore leacher---
//remove
ore_leacher.removeAllRecipes();

//add
ore_leacher.addRecipe(<contenttweaker:columbite>,<fluid:hydrofluoric_acid>*5000,<fluid:ammonia_solution>*10000,null,<contenttweaker:dust_niobium_pentoxide>,<contenttweaker:dust_ammonium_fluoride>*10,null,1,1);

ore_leacher.addRecipe(<contenttweaker:uranite>,<fluid:sulfuric_acid>*3000,<fluid:ammonia_solution>*8000,null,<contenttweaker:dust_ammonium_diuranate>,<contenttweaker:dust_ammonium_sulfate>*3,null,1,1);

ore_leacher.addRecipe(<contenttweaker:scheelite>*3,<fluid:hydrochloric_acid>*6000,<fluid:ammonia_solution>*2500,null,<ore:dustTungstenOxide>*3,<contenttweaker:dust_calcium_chloride>*3,null,1,1);

ore_leacher.addRecipe(<ore:gemEmerald>,<fluid:sodium_fluorosilicate_solution>*2000,<fluid:sodium_carbonate_solution>*666,<fluid:sodium_hydroxide_solution>*3996,<contenttweaker:dust_beryllium_oxide>*3,<contenttweaker:dust_aluminium_oxide>,<ore:dustSodiumFluoride>*12, 1.0,1.0);

ore_leacher.addRecipe(<contenttweaker:monazite>,<fluid:sodium_hydroxide_solution>*666,<fluid:hydrochloric_acid>*1000,null,<contenttweaker:dust_thorium_dioxide>,<contenttweaker:dust_titanium_dioxide>,<contenttweaker:zircon>, 1.0,1.0);

ore_leacher.addRecipe(<ore:oreIridium>,<fluid:nitric_acid>*1000,<fluid:hydrochloric_acid>*4000,<fluid:ammonium_chloride_solution>*333,<ore:dustIridium>*3,ChanceItemIngredient.create(<ore:dustPlatinum>,50),ChanceItemIngredient.create(<ore:dustOsmium>,50), 1.0,1.0);

ore_leacher.addRecipe(<ore:oreIron>,<fluid:sulfuric_acid>*100,null,null,<ore:dustIron>*3,ChanceItemIngredient.create(<contenttweaker:dust_chromium_oxide>,20),null, 1.0,1.0);

ore_leacher.addRecipe(<ore:oreTin>,<fluid:sulfuric_acid>*100,null,null,<ore:dustTin>*3,ChanceItemIngredient.create(<contenttweaker:scheelite>,50),null, 1.0,1.0);

ore_leacher.addRecipe(<ore:oreGold>,<fluid:sodium_cyanide_solution>*100,null,null,<ore:dustGold>*3,ChanceItemIngredient.create(<ore:dustSilver>,20),ChanceItemIngredient.create(<ore:dustArsenic>,50), 1.0,1.0);

ore_leacher.addRecipe(<ore:oreSilver>,<fluid:sodium_cyanide_solution>*100,null,null,<ore:dustSilver>*3,ChanceItemIngredient.create(<ore:dustLead>,20),ChanceItemIngredient.create(<ore:dustArsenic>,50), 1.0,1.0);

ore_leacher.addRecipe(<ore:oreCopper>,<fluid:sulfuric_acid>*100,null,null,<ore:dustCopper>*3,ChanceItemIngredient.create(<ore:dustSulfur>,50),ChanceItemIngredient.create(<ore:dustArsenic>,50), 1.0,1.0);

ore_leacher.addRecipe(<ore:oreLead>,<fluid:sulfuric_acid>*100,null,null,<ore:dustLead>*3,ChanceItemIngredient.create(<ore:dustSulfur>,50),ChanceItemIngredient.create(<ore:dustArsenic>,50), 1.0,1.0);

ore_leacher.addRecipe(<ore:oreNickel>,<fluid:ammonia_solution>*100,null,null,<ore:dustNickel>*3,ChanceItemIngredient.create(<ore:dustPlatinum>,20),null, 1.0,1.0);

ore_leacher.addRecipe(<ore:oreAluminum>,<fluid:sodium_hydroxide_solution>*100,null,null,<contenttweaker:dust_aluminium_oxide>*3,ChanceItemIngredient.create(<contenttweaker:dust_iron_oxide>,50),ChanceItemIngredient.create(<contenttweaker:dust_titanium_dioxide>,10), 1.0,1.0);







//infuser
Infuser.addRecipe(<ore:dustTungstenOxide>,<fluid:hydrogen>*3000,<ore:dustTungsten>);
Infuser.addRecipe(<ore:ingotLithium>,<fluid:hydrogen>*500,<contenttweaker:dust_lithium_hydride>);






//------------zirconium and hafnium processing------------
// Rock crushing granite gives zircon this is then separated into zironium dioxide and hafnium oxide. These are then reacted with coke and chlorine to create their tetrachlorides. This is then reduced with magnesium to create the molten metals.
Separator.addRecipe(<contenttweaker:zircon>,<contenttweaker:dust_zirconium_dioxide>,ChanceItemIngredient.create(<ore:dustHafniumOxide>,20));








