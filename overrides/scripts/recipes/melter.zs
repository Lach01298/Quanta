import mods.nuclearcraft.Melter;
import mods.immersivetechnology.MeltingCrucible;

//---MeltingCrucible as melter---
var melterTime = 400 as int;
var melterEnergy = 160000 as int;


MeltingCrucible.addRecipe(<fluid:sulfur>*666, <ore:dustSulfur>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:naoh>*666, <ore:dustSodiumHydroxide>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:koh>*666, <ore:dustPotassiumHydroxide>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:arsenic>*666, <ore:dustAsenic>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:silicon>*144, <ore:itemSilicon>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:hard_carbon>*144, <ore:ingotHardCarbon>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:manganese_dioxide>*144, <ore:ingotManganeseDioxide>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:manganese_dioxide>*144, <ore:dustManganeseDioxide>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:lead_platinum>*144, <ore:ingotLeadPlatinum>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:redstone>*100, <ore:dustRedstone>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:redstone>*900, <ore:blockRedstone>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:fluorite>*666, <ore:gemFluorite>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:fluorite>*666, <ore:dustFluorite>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:villiaumite>*666, <ore:gemVilliaumite>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:villiaumite>*666, <ore:dustVilliaumite>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:carobbiite>*666, <ore:gemCarobbiite>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:carobbiite>*666, <ore:dustCarobbiite>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:bas>*666, <ore:gemBoronArsenide>, melterEnergy, melterTime);

Melter.removeRecipeWithInput(<ore:blockIce>);
Melter.addRecipe(<ore:blockIce>,<fluid:water>*1000,0.1,0.1);
MeltingCrucible.addRecipe(<fluid:water>*1000, <ore:blockIce>, melterEnergy/10, melterTime/10);
Melter.removeRecipeWithInput(<ore:blockPackedIce>);
Melter.addRecipe(<ore:blockPackedIce>,<fluid:water>*9000,0.1,0.1);
MeltingCrucible.addRecipe(<fluid:water>*9000, <ore:blockPackedIce>, melterEnergy/10, melterTime/10);

MeltingCrucible.addRecipe(<fluid:iron>*144, <ore:ingotIron>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:iron>*144, <ore:dustIron>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:iron>*1296, <ore:blockIron>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:gold>*144, <ore:ingotGold>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:gold>*144, <ore:dustGold>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:gold>*1296, <ore:blockGold>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:copper>*144, <ore:ingotCopper>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:copper>*144, <ore:dustCopper>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:copper>*1296, <ore:blockCopper>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:tin>*144, <ore:ingotTin>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:tin>*144, <ore:dustTin>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:tin>*1296, <ore:blockTin>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:silver>*144, <ore:ingotSilver>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:silver>*144, <ore:dustSilver>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:silver>*1296, <ore:blockSilver>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:nickel>*144, <ore:ingotNickel>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:nickel>*144, <ore:dustNickel>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:nickel>*1296, <ore:blockNickel>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:aluminum>*144, <ore:ingotAluminum>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:aluminum>*144, <ore:dustAluminum>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:aluminum>*1296, <ore:blockAluminum>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:sodium>*144, <ore:ingotSodium>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:sodium>*144, <ore:dustSodium>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:beryllium>*144, <ore:ingotBeryllium>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:beryllium>*144, <ore:dustBeryllium>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:beryllium>*1296, <ore:blockBeryllium>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:potassium>*144, <ore:ingotPotassium>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:potassium>*144, <ore:dustPotassium>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:calcium>*144, <ore:ingotCalcium>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:calcium>*144, <ore:dustCalcium>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:titanium>*144, <ore:ingotTitanium>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:titanium>*144, <ore:dustTitanium>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:titanium>*1296, <ore:blockTitanium>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:lead>*144, <ore:ingotLead>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:lead>*144, <ore:dustLead>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:lead>*1296, <ore:blockLead>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:steel>*144, <ore:ingotSteel>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:steel>*144, <ore:dustSteel>, melterEnergy, melterTime);
MeltingCrucible.addRecipe(<fluid:steel>*1296, <ore:blockSteel>, melterEnergy, melterTime);

MeltingCrucible.addRecipe(<fluid:calcium_chloride>*144, <contenttweaker:dust_calcium_chloride>, melterEnergy, melterTime);
Melter.addRecipe(<contenttweaker:dust_calcium_chloride>,<fluid:calcium_chloride>*144,1,1);


MeltingCrucible.addRecipe(<fluid:beryllium_chloride>*144, <contenttweaker:dust_beryllium_chloride>, melterEnergy, melterTime);
Melter.addRecipe(<contenttweaker:dust_beryllium_chloride>,<fluid:beryllium_chloride>*144,1,1);

MeltingCrucible.addRecipe(<fluid:lithium_chloride>*144, <contenttweaker:dust_lithium_chloride>, melterEnergy, melterTime);
Melter.addRecipe(<contenttweaker:dust_lithium_chloride>,<fluid:lithium_chloride>*144,1,1);







