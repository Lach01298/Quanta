import crafttweaker.item.IItemStack;
import mods.nuclearcraft.Supercooler;
import mods.immersiveengineering.AlloySmelter;
import mods.immersiveengineering.ArcFurnace;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.Melter;
import mods.nuclearcraft.Infuser;
import mods.immersivetechnology.PressurizedFluid;


//---remove content---

var removeItems= [
<biomesoplenty:gem_ore>,
<biomesoplenty:gem_ore:1>,
<biomesoplenty:gem_ore:2>,
<biomesoplenty:gem_ore:3>,
<biomesoplenty:gem_ore:4>,
<biomesoplenty:gem_ore:5>,
<biomesoplenty:boat_sacred_oak>,
<biomesoplenty:boat_cherry>,
<biomesoplenty:boat_umbran>,
<biomesoplenty:boat_fir>,
<biomesoplenty:boat_ethereal>,
<biomesoplenty:boat_magic>,
<biomesoplenty:boat_mangrove>,
<biomesoplenty:boat_palm>,
<biomesoplenty:boat_redwood>,
<biomesoplenty:boat_willow>,
<biomesoplenty:boat_pine>,
<biomesoplenty:boat_hellbark>,
<biomesoplenty:boat_jacaranda>,
<biomesoplenty:boat_mahogany>,
<biomesoplenty:boat_ebony>,
<biomesoplenty:boat_eucalyptus>
] as  IItemStack[];

for i,item in removeItems{
	recipes.remove(item);
	mods.jei.JEI.hide(item);
}

// boat replacements

recipes.addShaped(<minecraft:boat>, [[null, null, null],[<biomesoplenty:planks_0:*>, null, <biomesoplenty:planks_0:*>], [<biomesoplenty:planks_0:*>, <biomesoplenty:planks_0:*>, <biomesoplenty:planks_0:*>]]);



//dyes
recipes.addShapeless(<biomesoplenty:blue_dye>, [<backportedflora:cornflower>]);
recipes.addShapeless(<biomesoplenty:white_dye>, [<backportedflora:lily_of_the_valley>]);
recipes.addShapeless(<biomesoplenty:black_dye>, [<backportedflora:wither_rose>]);


// cobblestone variants to normal cobblestone conversion

recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:metamorphic_cobble>, <undergroundbiomes:metamorphic_cobble>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:metamorphic_cobble:1>, <undergroundbiomes:metamorphic_cobble:1>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:metamorphic_cobble:2>, <undergroundbiomes:metamorphic_cobble:2>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:metamorphic_cobble:3>, <undergroundbiomes:metamorphic_cobble:3>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:metamorphic_cobble:4>, <undergroundbiomes:metamorphic_cobble:4>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:metamorphic_cobble:5>, <undergroundbiomes:metamorphic_cobble:5>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:metamorphic_cobble:6>, <undergroundbiomes:metamorphic_cobble:6>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:metamorphic_cobble:7>, <undergroundbiomes:metamorphic_cobble:7>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:igneous_cobble>, <undergroundbiomes:igneous_cobble>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:igneous_cobble:1>, <undergroundbiomes:igneous_cobble:1>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:igneous_cobble:2>, <undergroundbiomes:igneous_cobble:2>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:igneous_cobble:3>, <undergroundbiomes:igneous_cobble:3>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:igneous_cobble:4>, <undergroundbiomes:igneous_cobble:4>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:igneous_cobble:5>, <undergroundbiomes:igneous_cobble:5>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:igneous_cobble:6>, <undergroundbiomes:igneous_cobble:6>], [null, null]]);
recipes.addShaped(<minecraft:cobblestone> * 2, [[<undergroundbiomes:igneous_cobble:7>, <undergroundbiomes:igneous_cobble:7>], [null, null]]);

//stone slab changes
furnace.addRecipe(<quark:polished_stone>,<undergroundbiomes:igneous_stone:*>);
furnace.addRecipe(<quark:polished_stone>,<undergroundbiomes:metamorphic_stone:*>);
furnace.addRecipe(<quark:polished_stone>,<undergroundbiomes:sedimentary_stone:*>);

//brick changes
recipes.removeShaped(<minecraft:brick_block>, [[<minecraft:brick>, <minecraft:brick>],[<minecraft:brick>, <minecraft:brick>]]);

recipes.addShapeless(<contenttweaker:cement>*12, [<ore:sand>,<ore:sand>,<contenttweaker:dust_calcium_oxide>,<minecraft:water_bucket>]);
recipes.addShaped(<minecraft:brick_block> * 2, [[<minecraft:brick>, <contenttweaker:cement>, <minecraft:brick>],[<contenttweaker:cement>, <minecraft:brick>, <contenttweaker:cement>], [<minecraft:brick>, <contenttweaker:cement>, <minecraft:brick>]]);

Supercooler.addRecipe(<liquid:methane>*64,<liquid:liquid_methane>*1,0.00666666666,5.0);


//glass changes

furnace.remove(<minecraft:glass>,<ore:sand>);
furnace.addRecipe(<contenttweaker:dust_sodium_carbonate>,<backportedflora:dried_kelp_block>);

recipes.addShapeless(<contenttweaker:dust_soda_lime>*2, [<contenttweaker:dust_calcium_oxide>,<contenttweaker:dust_sodium_carbonate>]);

AlloySmelter.addRecipe(<minecraft:glass>*2, <ore:sand>*2, <contenttweaker:dust_soda_lime>, 100);
AlloySmelter.addRecipe(<minecraft:glass>*2, <contenttweaker:dust_soda_lime>, <ore:sand>*2, 100);
AlloyFurnace.addRecipe(<ore:sand>*2,<contenttweaker:dust_soda_lime>,<minecraft:glass>*2,1.0,1.0);


//tnt changes
recipes.remove(<minecraft:tnt>);
IngotFormer.addRecipe(<fluid:tnt>*100,<minecraft:tnt>,1.0,1.0);
Melter.removeRecipeWithOutput(<fluid:tnt>*1000);
Melter.addRecipe(<minecraft:tnt>,<fluid:tnt>*100,1.0,1.0);

// other
recipes.addShaped(<minecraft:saddle>, [[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],[<minecraft:leather>, <minecraft:iron_ingot>, <minecraft:leather>], [null, null, null]]);

//infuser
Infuser.addRecipe(<ore:dustIron>,<fluid:oxygen>*1000,<contenttweaker:dust_iron_oxide>,1.0,1.0);





//---pressurised gases
PressurizedFluid.add(<fluid:oxygen>);
PressurizedFluid.add(<fluid:nitrogen>);
PressurizedFluid.add(<fluid:helium>);
PressurizedFluid.add(<fluid:neon>);
PressurizedFluid.add(<fluid:carbon_dioxide>);
PressurizedFluid.add(<fluid:carbon_monoxide>);
PressurizedFluid.add(<fluid:argon>);
PressurizedFluid.add(<fluid:chlorine>);
PressurizedFluid.add(<fluid:fluorine>);
PressurizedFluid.add(<fluid:methane>);
PressurizedFluid.add(<fluid:lpg>);
PressurizedFluid.add(<fluid:natural_gas>);


//project red 
//remove
recipes.remove(<projectred-core:resource_item:410>);
recipes.remove(<projectred-core:resource_item:402>);
recipes.remove(<projectred-core:resource_item:401>);
recipes.remove(<projectred-core:resource_item:400>);
recipes.remove(<projectred-core:resource_item:104>);
recipes.remove(<projectred-core:resource_item:250>);
recipes.remove(<projectred-core:resource_item:312>);
recipes.remove(<projectred-core:resource_item:311>);
recipes.remove(<projectred-core:resource_item:252>);
recipes.remove(<projectred-core:resource_item:251>);


//changes
furnace.remove(<projectred-core:resource_item> * 2);
recipes.addShaped(<projectred-core:resource_item> * 3, [[null, null, null],[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>], [null, null, null]]);


furnace.remove(<ore:ingotRedAlloy>);
AlloySmelter.removeRecipe(<projectred-core:resource_item:103>);
ArcFurnace.removeRecipe(<projectred-core:resource_item:103>);
AlloySmelter.addRecipe(<projectred-core:resource_item:103>, <minecraft:redstone>*8, <ore:ingotTinSilver>, 100);
AlloyFurnace.addRecipe(<ore:ingotTinSilver>,<minecraft:redstone>*8,<ore:ingotRedAlloy>,1.0,1.0);

furnace.remove(<projectred-core:resource_item:320>);
AlloySmelter.addRecipe(<projectred-core:resource_item:320>, <minecraft:redstone>*8, <ore:itemSilicon>, 100);
AlloyFurnace.addRecipe(<ore:itemSilicon>,<minecraft:redstone>*8,<projectred-core:resource_item:320>,1.0,1.0);

furnace.remove(<projectred-core:resource_item:341>);
AlloySmelter.addRecipe(<projectred-core:resource_item:341>, <minecraft:glowstone_dust>*8, <ore:itemSilicon>, 100);
AlloyFurnace.addRecipe(<ore:itemSilicon>,<minecraft:glowstone_dust>*8,<projectred-core:resource_item:341>,1.0,1.0);

//open computers
recipes.remove(<opencomputers:material:6> * 8);
recipes.addShaped(<opencomputers:material:6> * 8, [[null, null, null],[null, <projectred-core:resource_item:320>, null], [null, <ore:ingotIron>, null]]);

furnace.remove(<opencomputers:material:4>);
recipes.addShaped(<opencomputers:material:4>, [[null, null, null],[<ore:ingotRedAlloy>, <immersiveengineering:material:27>, <ore:ingotRedAlloy>], [null, null, null]]);

recipes.remove(<opencomputers:material:2>);



//building gadgets
recipes.remove(<buildinggadgets:buildingtool>);
recipes.addShaped(<buildinggadgets:buildingtool>, [[<ore:plateSteel>, <ore:gemDiamond>, <ore:plateSteel>],[<ore:plateSteel>, <ore:ingotRedAlloy>, <ore:plateSteel>], [<ore:plateIron>, <immersiveengineering:material:27>, <ore:plateIron>]]);

recipes.remove(<buildinggadgets:exchangertool>);
recipes.addShaped(<buildinggadgets:exchangertool>, [[<ore:plateIron>, <ore:gemDiamond>, <ore:plateIron>],[<ore:plateSteel>, <ore:ingotRedAlloy>, <ore:plateSteel>], [<ore:plateSteel>, <immersiveengineering:material:27>, <ore:plateSteel>]]);

recipes.remove(<buildinggadgets:copypastetool>);
recipes.addShaped(<buildinggadgets:copypastetool>, [[<ore:plateSteel>, <ore:gemDiamond>, <ore:plateSteel>],[<ore:plateIron>, <ore:ingotRedAlloy>, <ore:plateIron>], [<ore:plateSteel>, <immersiveengineering:material:27>, <ore:plateSteel>]]);

recipes.remove(<buildinggadgets:templatemanager>);
recipes.addShaped(<buildinggadgets:templatemanager>, [[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],[<ore:plateIron>, <immersiveengineering:material:27>, <ore:plateIron>], [<ore:plateIron>, <immersiveengineering:metal_decoration0:4>, <ore:plateIron>]]);

recipes.addShapeless(<buildinggadgets:constructionpaste> * 8, [<contenttweaker:cement>,<ore:gravel>,<ore:gravel>]);

recipes.remove(<buildinggadgets:constructionblockpowder>);


// alternating flux

//---rename items----

<alternatingflux:connector>.displayName = "Superconducting Wire Relay";
<alternatingflux:connector:1>.displayName = "Superconducting Transformer";
<alternatingflux:wirecoil>.displayName = "Superconducting Wire Coil";

recipes.remove(<alternatingflux:connector> * 8);
recipes.addShaped(<alternatingflux:connector> * 8, [[<immersiveengineering:stone_decoration:8>, <ore:wireBSCCO>, <immersiveengineering:stone_decoration:8>],[<immersiveengineering:stone_decoration:8>, <forge:bucketfilled>.withTag({FluidName: "liquid_nitrogen", Amount: 1000}), <immersiveengineering:stone_decoration:8>], [<immersiveengineering:stone_decoration:8>, <ore:wireBSCCO>, <immersiveengineering:stone_decoration:8>]]);

recipes.remove(<alternatingflux:connector:1>);
recipes.addShaped(<alternatingflux:connector:1>, [[null, <forge:bucketfilled>.withTag({FluidName: "liquid_nitrogen", Amount: 1000}), null],[<ore:ingotSuperAlloy>, <ore:wireBSCCO>,<ore:ingotSuperAlloy>], [<ore:ingotSuperAlloy>, <ore:wireBSCCO>, <ore:ingotSuperAlloy>]]);

recipes.remove(<alternatingflux:wirecoil> * 4);
recipes.addShaped(<alternatingflux:wirecoil> * 4, [[<ore:wireSteel>, <ore:wireBSCCO>, <ore:wireSteel>],[<ore:wireBSCCO>, <forge:bucketfilled>.withTag({FluidName: "liquid_nitrogen", Amount: 1000}), <ore:wireBSCCO>], [<ore:wireSteel>, <ore:wireBSCCO>, <ore:wireSteel>]]);

