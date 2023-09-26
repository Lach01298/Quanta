import mods.immersiveengineering.Excavator;


//Excavator.addMineral(String name, int mineralWeight, double failChance, String[] ores, double[] chances, @Optional int[] dimensionWhitelist, @Optional boolean blacklist);



Excavator.removeMineral("Bauxite");
Excavator.removeMineral("Cassiterite");
Excavator.removeMineral("Coal");
Excavator.removeMineral("Copper");
Excavator.removeMineral("Cinnabar");
Excavator.removeMineral("Silt");
Excavator.removeMineral("Galena");
Excavator.removeMineral("Gold");
Excavator.removeMineral("Iron");
Excavator.removeMineral("Lapis");
Excavator.removeMineral("Lead");
Excavator.removeMineral("Magnetite");
Excavator.removeMineral("Nickel");
Excavator.removeMineral("Pyrite");
Excavator.removeMineral("Quarzite");
Excavator.removeMineral("Silver");
Excavator.removeMineral("Uranium");
// remove immersive Intelegence Ores
Excavator.removeMineral("Ferberite");
Excavator.removeMineral("Fluorite");
Excavator.removeMineral("Ferberite");
Excavator.removeMineral("Phosphorite");
Excavator.removeMineral("Platinum"); // this one has Iridium Lmao
Excavator.removeMineral("Wolframite");

Excavator.addMineral("Aluminium", 64, 0.1, ["oreAluminum"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Borax", 36, 0.1, ["oreBoron"], [1],  [0,140,152]);
Excavator.addMineral("Coal", 340, 0.1, ["oreCoal"], [1],  [0]);
Excavator.addMineral("Copper", 80, 0.1, ["oreCopper"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Diamond", 8, 0.8, ["oreDiamond"], [1],  [0,120]);
Excavator.addMineral("Emerald", 18, 0.5, ["oreEmerald"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Gold", 18, 0.1, ["oreGold"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Iron", 180, 0.1, ["oreIron"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Lapis", 14, 0.1, ["oreLapis"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Lead", 48, 0.1, ["oreLead"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Nickel", 12, 0.1, ["oreNickel"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Redstone", 64, 0.1, ["oreRedstone"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Silver", 24, 0.1, ["oreSilver"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Thorium", 36, 0.1, ["oreThorium"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Tin", 72, 0.1, ["oreTin"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Titanium", 36, 0.1, ["oreTitanium"], [1],  [0,110,120,131,140,151,152]);
Excavator.addMineral("Uranium", 36, 0.1, ["oreUranium"], [1],  [0,110,120,131,140,151,152]);


Excavator.addMineral("Clay", 100, 0.005, ["blockClay","sand","gravel"],[0.5,0.3,0.2],  [0,152]);
Excavator.addMineral("Limestone", 100, 0.005, ["stoneLimestone"], [1],  [0]);
Excavator.addMineral("Dolomite", 100, 0.005, ["stoneDolomite"], [1],  [0,110,120,131,140]);
