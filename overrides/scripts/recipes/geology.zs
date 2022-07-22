import mods.immersiveengineering.Crusher;
import mods.nuclearcraft.RockCrusher;
import mods.nuclearcraft.ChanceItemIngredient;
import mods.qmd.ore_leacher;
import mods.magneticraft.Sieve;
import mods.magneticraft.Grinder;
var baseCrusherEnergy = 2048 as int;


RockCrusher.removeAllRecipes();


//remove crusher recipes
Crusher.removeRecipe(<minecraft:gravel>);




//---conversion to chisel blocks---
recipes.addShapeless(<chisel:marble2:7>*2, [<undergroundbiomes:metamorphic_stone:2>,<undergroundbiomes:metamorphic_stone:2>]);
recipes.addShapeless(<undergroundbiomes:metamorphic_stone:2>*2, [<chisel:marble2:7>,<chisel:marble2:7>]);
recipes.addShapeless(<chisel:basalt2:7>*2, [<undergroundbiomes:igneous_stone:5>,<undergroundbiomes:igneous_stone:5>]);
recipes.addShapeless(<undergroundbiomes:igneous_stone:5>*2, [<chisel:basalt2:7>,<chisel:basalt2:7>]);
recipes.addShapeless(<chisel:limestone2:7>*2, [<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_stone>]);
recipes.addShapeless(<undergroundbiomes:sedimentary_stone>*2, [<chisel:limestone2:7>,<chisel:limestone2:7>]);
recipes.addShapeless(<undergroundbiomes:igneous_brick:5>, [<chisel:basalt2>,<chisel:basalt2>]);
recipes.addShapeless(<chisel:basalt2>, [<undergroundbiomes:igneous_brick:5>,<undergroundbiomes:igneous_brick:5>]);
recipes.addShapeless(<undergroundbiomes:metamorphic_brick:2>, [<chisel:marble2>,<chisel:marble2>]);
recipes.addShapeless(<chisel:marble2>, [<undergroundbiomes:metamorphic_brick:2>,<undergroundbiomes:metamorphic_brick:2>]);
recipes.addShaped(<chisel:limestone2> * 4, [[<undergroundbiomes:sedimentary_stone>, <undergroundbiomes:sedimentary_stone>, null],[<undergroundbiomes:sedimentary_stone>, <undergroundbiomes:sedimentary_stone>, null], [null, null, null]]);





//---Crushing---
Crusher.addRecipe(<undergroundbiomes:igneous_gravel>, <undergroundbiomes:igneous_cobble>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:igneous_gravel:1>, <undergroundbiomes:igneous_cobble:1>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:igneous_gravel:2>, <undergroundbiomes:igneous_cobble:2>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:igneous_gravel:3>, <undergroundbiomes:igneous_cobble:3>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:igneous_gravel:4>, <undergroundbiomes:igneous_cobble:4>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:igneous_gravel:5>, <undergroundbiomes:igneous_cobble:5>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:igneous_gravel:6>, <undergroundbiomes:igneous_cobble:6>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:igneous_gravel:7>, <undergroundbiomes:igneous_cobble:7>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:metamorphic_gravel>, <undergroundbiomes:metamorphic_cobble>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:metamorphic_gravel:1>, <undergroundbiomes:metamorphic_cobble:1>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:metamorphic_gravel:2>, <undergroundbiomes:metamorphic_cobble:2>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:metamorphic_gravel:3>, <undergroundbiomes:metamorphic_cobble:3>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:metamorphic_gravel:4>, <undergroundbiomes:metamorphic_cobble:4>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:metamorphic_gravel:5>, <undergroundbiomes:metamorphic_cobble:5>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:metamorphic_gravel:6>, <undergroundbiomes:metamorphic_cobble:6>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:metamorphic_gravel:7>, <undergroundbiomes:metamorphic_cobble:7>, baseCrusherEnergy,<minecraft:sand>,0.1);

Grinder.addRecipe(<undergroundbiomes:igneous_cobble>,<undergroundbiomes:igneous_gravel>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:igneous_cobble:1>,<undergroundbiomes:igneous_gravel:1>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:igneous_cobble:2>,<undergroundbiomes:igneous_gravel:2>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:igneous_cobble:3>,<undergroundbiomes:igneous_gravel:3>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:igneous_cobble:4>, <undergroundbiomes:igneous_gravel:4>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:igneous_cobble:5>, <undergroundbiomes:igneous_gravel:5>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:igneous_cobble:6>, <undergroundbiomes:igneous_gravel:6>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:igneous_cobble:7>, <undergroundbiomes:igneous_gravel:7>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:metamorphic_cobble>, <undergroundbiomes:metamorphic_gravel>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:metamorphic_cobble:1>,<undergroundbiomes:metamorphic_gravel:1>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:metamorphic_cobble:2>,<undergroundbiomes:metamorphic_gravel:2>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:metamorphic_cobble:3>, <undergroundbiomes:metamorphic_gravel:3>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:metamorphic_cobble:4>,<undergroundbiomes:metamorphic_gravel:4>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:metamorphic_cobble:5>, <undergroundbiomes:metamorphic_gravel:5>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:metamorphic_cobble:6>,<undergroundbiomes:metamorphic_gravel:6>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:metamorphic_cobble:7>,<undergroundbiomes:metamorphic_gravel:7>, <minecraft:sand>,0.1, 40, false);



Crusher.addRecipe(<undergroundbiomes:sedimentary_gravel>, <undergroundbiomes:sedimentary_stone>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:sedimentary_gravel:1>, <undergroundbiomes:sedimentary_stone:1>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:sedimentary_gravel:2>, <undergroundbiomes:sedimentary_stone:2>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:sedimentary_gravel:3>, <undergroundbiomes:sedimentary_stone:3>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:sedimentary_gravel:4>, <undergroundbiomes:sedimentary_stone:4>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:sedimentary_gravel:5>, <undergroundbiomes:sedimentary_stone:5>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:sedimentary_gravel:6>, <undergroundbiomes:sedimentary_stone:6>, baseCrusherEnergy,<minecraft:sand>,0.1);
Crusher.addRecipe(<undergroundbiomes:sedimentary_gravel:7>, <undergroundbiomes:sedimentary_stone:7>, baseCrusherEnergy,<minecraft:sand>,0.1);

Grinder.addRecipe(<undergroundbiomes:sedimentary_stone>,<undergroundbiomes:sedimentary_gravel>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:sedimentary_stone:1>,<undergroundbiomes:sedimentary_gravel:1>,<minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:sedimentary_stone:2>,<undergroundbiomes:sedimentary_gravel:2>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:sedimentary_stone:3>,<undergroundbiomes:sedimentary_gravel:3>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:sedimentary_stone:4>, <undergroundbiomes:sedimentary_gravel:4>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:sedimentary_stone:5>, <undergroundbiomes:sedimentary_gravel:5>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:sedimentary_stone:6>, <undergroundbiomes:sedimentary_gravel:6>, <minecraft:sand>,0.1, 40, false);
Grinder.addRecipe(<undergroundbiomes:sedimentary_stone:7>, <undergroundbiomes:sedimentary_gravel:7>, <minecraft:sand>,0.1, 40, false);




Crusher.addRecipe(<undergroundbiomes:igneous_sand>*4, <undergroundbiomes:igneous_sandstone>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:igneous_sand:1>*4, <undergroundbiomes:igneous_sandstone:1>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:igneous_sand:2>*4, <undergroundbiomes:igneous_sandstone:2>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:igneous_sand:3>*4, <undergroundbiomes:igneous_sandstone:3>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:igneous_sand:4>*4, <undergroundbiomes:igneous_sandstone:4>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:igneous_sand:5>*4, <undergroundbiomes:igneous_sandstone:5>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:igneous_sand:6>*4, <undergroundbiomes:igneous_sandstone:6>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:igneous_sand:7>*4, <undergroundbiomes:igneous_sandstone:7>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:metamorphic_sand>*4, <undergroundbiomes:metamorphic_sandstone>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:metamorphic_sand:1>*4, <undergroundbiomes:metamorphic_sandstone:1>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:metamorphic_sand:2>*4, <undergroundbiomes:metamorphic_sandstone:2>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:metamorphic_sand:3>*4, <undergroundbiomes:metamorphic_sandstone:3>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:metamorphic_sand:4>*4, <undergroundbiomes:metamorphic_sandstone:4>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:metamorphic_sand:5>*4, <undergroundbiomes:metamorphic_sandstone:5>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:metamorphic_sand:6>*4, <undergroundbiomes:metamorphic_sandstone:6>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:metamorphic_sand:7>*4, <undergroundbiomes:metamorphic_sandstone:7>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:sedimentary_sand>*4, <undergroundbiomes:sedimentary_sandstone>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:sedimentary_sand:1>*4, <undergroundbiomes:sedimentary_sandstone:1>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:sedimentary_sand:2>*4, <undergroundbiomes:sedimentary_sandstone:2>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:sedimentary_sand:3>*4, <undergroundbiomes:sedimentary_sandstone:3>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:sedimentary_sand:4>*4, <undergroundbiomes:sedimentary_sandstone:4>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:sedimentary_sand:5>*4, <undergroundbiomes:sedimentary_sandstone:5>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:sedimentary_sand:6>*4, <undergroundbiomes:sedimentary_sandstone:6>, baseCrusherEnergy);
Crusher.addRecipe(<undergroundbiomes:sedimentary_sand:7>*4, <undergroundbiomes:sedimentary_sandstone:7>, baseCrusherEnergy);
// Magma->Slime
Crusher.addRecipe(<minecraft:slime>*4,<minecraft:magma>, baseCrusherEnergy,<minecraft:blaze_rod>, 0.1);



//---Gravel Processing---

//red granite
Sieve.addRecipe(<undergroundbiomes:igneous_gravel>, <contenttweaker:feldspar>, 0.55, <minecraft:quartz>, 0.25, <contenttweaker:mica>, 0.15, 100, false);

//black granite
Sieve.addRecipe(<undergroundbiomes:igneous_gravel:1>, <contenttweaker:feldspar>, 0.55, <minecraft:quartz>, 0.25, <contenttweaker:mica>, 0.15, 100, false);


//Rhyolite
Sieve.addRecipe(<undergroundbiomes:igneous_gravel:2>, <contenttweaker:feldspar>, 0.55, <minecraft:quartz>, 0.25, <contenttweaker:mica>, 0.15, 100, false);

//Andesite
Sieve.addRecipe(<undergroundbiomes:igneous_gravel:3>, <contenttweaker:feldspar>, 0.70, <contenttweaker:amphibole>, 0.2, <contenttweaker:mica>, 0.05, 100, false);


//Gabbro
Sieve.addRecipe(<undergroundbiomes:igneous_gravel:4>, <contenttweaker:pyroxene>, 0.75, <contenttweaker:feldspar>, 0.15, <contenttweaker:olivine>, 0.10, 100, false);

//Basalt
Sieve.addRecipe(<undergroundbiomes:igneous_gravel:5>, <contenttweaker:pyroxene>, 0.75, <contenttweaker:feldspar>, 0.15, <contenttweaker:olivine>, 0.10, 100, false);

//Komatiite
Sieve.addRecipe(<undergroundbiomes:igneous_gravel:6>, <contenttweaker:pyroxene>, 0.5, <contenttweaker:olivine>, 0.5, <minecraft:dirt>, 0.0, 100, false);

//Dacite
Sieve.addRecipe(<undergroundbiomes:igneous_gravel:7>, <contenttweaker:feldspar>, 0.4, <contenttweaker:amphibole>, 0.15, <contenttweaker:mica>, 0.15, 100, false);

//Gneiss
Sieve.addRecipe(<undergroundbiomes:metamorphic_gravel>, <contenttweaker:feldspar>, 0.70, <contenttweaker:amphibole>, 0.2, <contenttweaker:mica>, 0.05, 100, false);

//Eclogite
Sieve.addRecipe(<undergroundbiomes:metamorphic_gravel:1>, <contenttweaker:pyroxene>, 0.5, <contenttweaker:garnet>, 0.50, <minecraft:dirt>, 0.0, 100, false);

//Marble
Sieve.addRecipe(<undergroundbiomes:metamorphic_gravel:2>, <contenttweaker:calcite>, 0.50, <contenttweaker:dolomite>, 0.50, <minecraft:dirt>, 0.0, 100, false);


//Quartzite
Sieve.addRecipe(<undergroundbiomes:metamorphic_gravel:3>, <minecraft:quartz>, 0.95, <contenttweaker:dust_iron_oxide>, 0.05, <minecraft:dirt>, 0.0, 100, false);


//blue Schist
Sieve.addRecipe(<undergroundbiomes:metamorphic_gravel:4>, <contenttweaker:pyroxene>, 0.75, <contenttweaker:feldspar>, 0.15, <contenttweaker:olivine>, 0.10, 100, false);

//green Schist
Sieve.addRecipe(<undergroundbiomes:metamorphic_gravel:5>, <contenttweaker:pyroxene>, 0.75, <contenttweaker:feldspar>, 0.15, <contenttweaker:olivine>, 0.10, 100, false);

//soapstone
Sieve.addRecipe(<undergroundbiomes:metamorphic_gravel:6>, <contenttweaker:talc>, 0.95, <contenttweaker:amphibole>, 0.05, <minecraft:dirt>, 0.0, 100, false);


//migmatite
Sieve.addRecipe(<undergroundbiomes:metamorphic_gravel:7>, <contenttweaker:feldspar>, 0.55, <minecraft:quartz>, 0.25, <contenttweaker:mica>, 0.15, 100, false);

//limestone
Sieve.addRecipe(<undergroundbiomes:sedimentary_gravel>, <contenttweaker:calcite>, 1.0, <nuclearcraft:gem>, 0.10, <contenttweaker:phosphorite>, 0.05, 100, false);



//chalk
Sieve.addRecipe(<undergroundbiomes:sedimentary_gravel:1>, <contenttweaker:calcite>, 1.0, <contenttweaker:phosphorite>, 0.05, <trinity:gem_witherite>, 0.10, 100, false);


//shale
Sieve.addRecipe(<undergroundbiomes:sedimentary_gravel:2>, <contenttweaker:mica>, 0.65, <minecraft:quartz>, 0.45, <minecraft:dirt>, 0.00, 100, false);

//siltstone
Sieve.addRecipe(<undergroundbiomes:sedimentary_gravel:3>, <minecraft:quartz>, 0.70, <contenttweaker:feldspar>, 0.30, <contenttweaker:phosphorite>, 0.05, 100, false);

//Dolomite
Sieve.addRecipe(<undergroundbiomes:sedimentary_gravel:5>, <contenttweaker:dolomite>, 1.0, <nuclearcraft:gem>, 0.1, <trinity:gem_witherite>, 0.10, 100, false);


//greywacke
Sieve.addRecipe(<undergroundbiomes:sedimentary_gravel:6>, <contenttweaker:feldspar>, 0.5, <minecraft:quartz>, 0.4, <contenttweaker:calcite>, 0.1, 100, false);

//chert
Sieve.addRecipe(<undergroundbiomes:sedimentary_gravel:6>, <minecraft:quartz>, 0.95, <contenttweaker:dust_iron_oxide>, 0.05, <minecraft:dirt>, 0.0, 100, false);


//---Mineral Processing---

RockCrusher.addRecipe(<contenttweaker:feldspar>,ChanceItemIngredient.create(<ore:dustFluorite>,30),ChanceItemIngredient.create(<ore:dustCarobbiite>,30),ChanceItemIngredient.create(<ore:dustVilliaumite>,30),1,1);

Crusher.addRecipe(<nuclearcraft:gem_dust:5>, <contenttweaker:feldspar>, baseCrusherEnergy);
Grinder.addRecipe(<contenttweaker:feldspar>,<nuclearcraft:gem_dust:5>, <minecraft:dirt>,0.0, 40, false);

Crusher.addRecipe(<contenttweaker:spodumene>, <contenttweaker:pyroxene>, baseCrusherEnergy);
Grinder.addRecipe( <contenttweaker:pyroxene>,<contenttweaker:spodumene>, <minecraft:dirt>,0.0, 40, false);
RockCrusher.addRecipe(<contenttweaker:pyroxene>,<contenttweaker:spodumene>,null,null,1,1);

RockCrusher.addRecipe(<contenttweaker:mica>,<quark:biotite>,ChanceItemIngredient.create(<ore:dustGraphite>,50),null,1,1);
Crusher.addRecipe(<quark:biotite>, <contenttweaker:mica>, baseCrusherEnergy,<nuclearcraft:dust:8>,0.5);
Grinder.addRecipe(<contenttweaker:mica>,<quark:biotite>, <minecraft:dirt>,0.0, 40, false);

furnace.addRecipe(<contenttweaker:dust_calcium_oxide>,<contenttweaker:calcite>);
furnace.addRecipe(<contenttweaker:dust_magnesium_oxide>,<contenttweaker:dolomite>);
furnace.addRecipe(<contenttweaker:dust_magnesium_oxide>,<contenttweaker:talc>);
furnace.addRecipe(<trinity:compound_barium_oxide>,<ore:dustWitherite>);

furnace.addRecipe(<contenttweaker:dust_magnesium_oxide>,<contenttweaker:dust_magnesium_carbonate>);
furnace.addRecipe(<contenttweaker:dust_iron_oxide>,<contenttweaker:dust_iron_carbonate>);


recipes.addShapeless(<minecraft:sand> * 4, [<ore:dustQuartz>,<ore:dustQuartz>,<ore:dustQuartz>,<ore:dustQuartz>]);

recipes.addShapeless(<minecraft:clay_ball> * 4, [<ore:sand>,<contenttweaker:talc>,<contenttweaker:talc>,<ore:sand>]);
recipes.addShapeless(<minecraft:clay_ball> * 4, [<ore:sand>,<contenttweaker:mica>,<contenttweaker:mica>,<ore:sand>]);


