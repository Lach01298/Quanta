import mods.jei.JEI;
import mods.immersiveintelligence.PrecissionAssembler;

// silicon removal
<ore:plateSilicon>.remove(<immersiveintelligence:material_plate:5>);
<ore:plateSilicon>.add(<qmd:semiconductor:3>);
<ore:boulSilicon>.remove(<immersiveintelligence:material_boule>);
JEI.removeAndHide(<immersiveintelligence:material_ingot:6>);
JEI.removeAndHide(<immersiveintelligence:material_boule>);
PrecissionAssembler.removeRecipe(<immersiveengineering:material:26>);

// salt removal
JEI.removeAndHide(<liquid:brine>);
mods.jei.JEI.hideCategory("ii.electrolyzer");
mods.immersiveengineering.Mixer.remove(<liquid:brine>);
mods.nuclearcraft.Melter.removeRecipeWithOutput(<liquid:brine>);

// circuit removal
JEI.removeAndHide(<immersiveintelligence:material:11>);
JEI.removeAndHide(<immersiveintelligence:material:10>);
JEI.removeAndHide(<immersiveintelligence:material:2>);
JEI.removeAndHide(<immersiveintelligence:material:3>);
JEI.removeAndHide(<immersiveintelligence:material:5>);
JEI.removeAndHide(<immersiveintelligence:material:6>);

// flourite removal
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveintelligence:material:18>);
<ore:dustWhitePhosphorus>.add(<contenttweaker:dust_white_phosphorus>);
<ore:whitePhosphorus>.add(<contenttweaker:dust_white_phosphorus>);
<ore:gemPhosphorus>.add(<immersiveintelligence:material_gem:1>);
<ore:gemPhosphorus>.remove(<immersiveintelligence:material_gem:1>);

// rubber add sapling
recipes.addShapeless(<immersiveintelligence:rubber_sapling>,[<ore:sapling>]);

// II circuits from AR circuits
recipes.addShapeless(<immersiveintelligence:material:7>*2,[<advancedrocketry:ic>,<advancedrocketry:ic>]);
recipes.addShapeless(<immersiveintelligence:material:12>*2,[<advancedrocketry:ic:2>,<advancedrocketry:ic:2>]);

// vacum tube better
PrecissionAssembler.addRecipe(<immersiveengineering:material:26>*5, null,
 [<ore:wireCopper>*2,<ore:blockGlass>,<ore:plateNickel>,<ore:dustBariumOxide>], 
 ["inserter","solderer","drill"], ["inserter pick first","drill work main","inserter drop main","solderer work main"], 10000, 50);
