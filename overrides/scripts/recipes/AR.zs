import mods.jei.JEI;
import crafttweaker.item.IItemStack;


//remove content
mods.jei.JEI.hideCategory("zmaster587.AR.platePresser");
mods.jei.JEI.hideCategory("zmaster587.AR.lathe");
mods.jei.JEI.hideCategory("zmaster587.AR.rollingMachine");
mods.jei.JEI.hideCategory("zmaster587.AR.electrolyzer");
mods.jei.JEI.hideCategory("zmaster587.AR.arcFurnace");
mods.jei.JEI.hideCategory("zmaster587.AR.chemicalReactor");

var removeItems= [<advancedrocketry:platepress>,
<advancedrocketry:electrolyser>,
<advancedrocketry:lathe>,
<advancedrocketry:rollingmachine>,
<advancedrocketry:arcfurnace>,
<advancedrocketry:blastbrick>,
<libvulpes:coalgenerator>,
<advancedrocketry:chemicalreactor>,
<libvulpes:productdust>,
<libvulpes:ore0>,
<libvulpes:productgem>,
<advancedrocketry:hovercraft>,
<advancedrocketry:wafer>,
<advancedrocketry:itemcircuitplate>,
<advancedrocketry:itemcircuitplate:1>,
<advancedrocketry:terraformer>,
<advancedrocketry:forcefieldprojector>,
<advancedrocketry:warpmonitor>,
<libvulpes:productdust:3>, #Si dust
<libvulpes:productrod:6>, #steel rod
<libvulpes:productnugget:3>, #Si nugget
<libvulpes:productplate:3>, #Si plate
<libvulpes:productsheet:4> #copper sheet with neither recipe nor use
] as  IItemStack[];

for i,item in removeItems{
	recipes.remove(item);
	mods.jei.JEI.hide(item);
}




//---change recipes---


recipes.remove(<libvulpes:structuremachine> * 16);
recipes.addShaped(<libvulpes:structuremachine> * 8, [[<ore:plateSteel>, <ore:ingotStainlessSteel>, <ore:plateSteel>],[<ore:ingotStainlessSteel>, <immersiveengineering:material:9>, <ore:ingotStainlessSteel>], [<ore:plateSteel>, <ore:ingotStainlessSteel>, <ore:plateSteel>]]);

//power plug
recipes.remove(<libvulpes:forgepowerinput>);
recipes.remove(<libvulpes:advancedmotor>);
recipes.addShaped(<libvulpes:forgepowerinput>, [[null, <immersiveengineering:metal_decoration0:1>, null],[null, <libvulpes:structuremachine>, null], [null, <immersiveengineering:material:27>, null]]);

//input hatch
recipes.remove(<libvulpes:hatch>);
recipes.addShaped(<libvulpes:hatch>, [[null, <ore:chest>, null],[null, <libvulpes:structuremachine>, null], [null, <immersiveengineering:material:27>, null]]);

//output hatch
recipes.remove(<libvulpes:hatch:1>);
recipes.addShaped(<libvulpes:hatch:1>, [[null, <immersiveengineering:material:27>, null],[null, <libvulpes:structuremachine>, null], [null, <ore:chest>, null]]);

//input fluid hatch
recipes.remove(<libvulpes:hatch:2>);
recipes.addShaped(<libvulpes:hatch:2>, [[null, <immersiveengineering:metal_device0:4>, null],[null, <libvulpes:structuremachine>, null], [null, <immersiveengineering:material:27>, null]]);

//output fluid hatch
recipes.remove(<libvulpes:hatch:3>);
recipes.addShaped(<libvulpes:hatch:3>, [[null, <immersiveengineering:material:27>, null],[null, <libvulpes:structuremachine>, null], [null, <immersiveengineering:metal_device0:4>, null]]);

recipes.remove(<libvulpes:advancedmotor>);
recipes.addShaped(<libvulpes:advancedmotor>, [[null, <immersiveengineering:metal_decoration0:2>, <ore:plateTitanium>],[<ore:stickTitanium>, <ore:stickTitanium>, <ore:plateTitanium>], [null, <immersiveengineering:metal_decoration0:2>, <ore:plateTitanium>]]);

recipes.remove(<libvulpes:enhancedmotor>);
recipes.addShaped(<libvulpes:enhancedmotor>, [[null, <immersiveengineering:metal_decoration0:2>, <ore:plateTitaniumIridium>],[<ore:stickTitaniumIridium>, <ore:stickTitaniumIridium>, <ore:plateTitaniumIridium>], [null, <immersiveengineering:metal_decoration0:2>, <ore:plateTitaniumIridium>]]);

recipes.remove(<libvulpes:elitemotor>);
recipes.addShaped(<libvulpes:elitemotor>, [[null, <qmd:accelerator_magnet:4>, <ore:plateTitaniumAluminide>],[<ore:stickTitaniumAluminide>, <ore:stickTitaniumAluminide>, <ore:plateTitaniumAluminide>], [null, <qmd:accelerator_magnet:4>, <ore:plateTitaniumAluminide>]]);




recipes.remove(<advancedrocketry:crystallizer>);
recipes.addShaped(<advancedrocketry:crystallizer>, [[<immersiveengineering:material:9>, <immersiveengineering:material:9>, <immersiveengineering:material:9>],[<ore:ingotStainlessSteel>, <libvulpes:structuremachine>, <ore:ingotStainlessSteel>], [<ore:ingotStainlessSteel>, <immersiveengineering:material:27>, <ore:ingotStainlessSteel>]]);

recipes.remove(<advancedrocketry:cuttingmachine>);
recipes.addShaped(<advancedrocketry:cuttingmachine>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],[<ore:ingotStainlessSteel>, <libvulpes:structuremachine>, <ore:ingotStainlessSteel>], [<ore:ingotStainlessSteel>, <immersiveengineering:material:27>, <ore:ingotStainlessSteel>]]);

recipes.remove(<advancedrocketry:sawbladeiron>);
recipes.addShaped(<advancedrocketry:sawbladeiron>, [[null, <ore:dustDiamond>, null],[<ore:dustDiamond>, <ore:plateSteel>, <ore:dustDiamond>], [null, <ore:dustDiamond>, null]]);


recipes.remove(<libvulpes:coil0:4>);
recipes.addShaped(<libvulpes:coil0:4>, [[<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],[<ore:ingotCopper>, <ore:stickSteel>, <ore:ingotCopper>], [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>]]);

recipes.remove(<libvulpes:coil0:2>);
recipes.addShaped(<libvulpes:coil0:2>, [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],[<ore:ingotGold>, <ore:stickSteel>, <ore:ingotGold>], [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);

recipes.remove(<libvulpes:coil0:7>);
recipes.addShaped(<libvulpes:coil0:7>, [[<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>],[<ore:ingotTitanium>, <ore:stickSteel>, <ore:ingotTitanium>], [<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>]]);

recipes.remove(<libvulpes:coil0:9>);
recipes.addShaped(<libvulpes:coil0:9>, [[<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>],[<ore:ingotAluminum>, <ore:stickSteel>, <ore:ingotAluminum>], [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>]]);

recipes.remove(<libvulpes:coil0:10>);
recipes.addShaped(<libvulpes:coil0:10>, [[<ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>],[<ore:ingotIridium>, <ore:stickSteel>, <ore:ingotIridium>], [<ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>]]);

recipes.remove(<advancedrocketry:rocketbuilder>);
recipes.addShaped(<advancedrocketry:rocketbuilder>, [[<libvulpes:productplate:7>, <libvulpes:productrod:7>, <libvulpes:productplate:7>],[<libvulpes:productrod:7>, <nuclearcraft:part:10>, <libvulpes:productrod:7>], [<libvulpes:productplate:7>, <libvulpes:productrod:7>, <libvulpes:productplate:7>]]);


recipes.remove(<advancedrocketry:ic:5>);
recipes.remove(<advancedrocketry:ic:4>);
recipes.remove(<advancedrocketry:ic:3>);

recipes.remove(<advancedrocketry:spacehelmet>);
recipes.remove(<advancedrocketry:spacechestplate>);
recipes.remove(<advancedrocketry:spaceleggings>);
recipes.remove(<advancedrocketry:spaceboots>);


recipes.addShaped(<advancedrocketry:pressuretank>, [[<ore:plateAluminum>, <immersiveengineering:material:9>, <ore:plateAluminum>],[<ore:plateAluminum>, null, <ore:plateAluminum>], [<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>]]);

recipes.addShaped(<advancedrocketry:pressuretank:1>, [[null, <ore:ingotStainlessSteel>, null],[<ore:ingotStainlessSteel>, <advancedrocketry:pressuretank>, <ore:ingotStainlessSteel>], [null, <ore:ingotStainlessSteel>, null]]);

recipes.addShaped(<advancedrocketry:pressuretank:2>, [[null, <ore:plateTitaniumAluminide>, null],[<ore:plateTitaniumAluminide>, <advancedrocketry:pressuretank:1>, <ore:plateTitaniumAluminide>], [null, <ore:plateTitaniumAluminide>, null]]);

recipes.addShaped(<advancedrocketry:pressuretank:3>, [[null, <ore:plateTitaniumIridium>, null],[<ore:plateTitaniumIridium>, <advancedrocketry:pressuretank:2>, <ore:plateTitaniumIridium>], [null, <ore:plateTitaniumIridium>, null]]);

recipes.remove(<advancedrocketry:bipropellantrocketmotor>);
recipes.addShaped(<advancedrocketry:bipropellantrocketmotor>, [[<ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel>],[null, <ore:ingotSuperAlloy>, null], [<ore:ingotSuperAlloy>, null, <ore:ingotSuperAlloy>]]);

recipes.remove(<advancedrocketry:bipropellantfueltank>);
recipes.addShaped(<advancedrocketry:bipropellantfueltank>, [[<ore:stickAluminum>, <ore:plateAluminum>, <ore:stickAluminum>],[<ore:plateAluminum>, null, <ore:plateAluminum>], [<ore:stickAluminum>, <ore:plateAluminum>, <ore:stickAluminum>]]);

recipes.remove(<advancedrocketry:guidancecomputer>);
recipes.addShaped(<advancedrocketry:guidancecomputer>, [[<ore:plateAluminum>, <advancedrocketry:ic>, <ore:plateAluminum>],[<advancedrocketry:ic>, <libvulpes:structuremachine>, <advancedrocketry:ic>], [<ore:plateAluminum>, <advancedrocketry:ic>, <ore:plateAluminum>]]);

recipes.remove(<advancedrocketry:precisionassemblingmachine>);
recipes.addShaped(<advancedrocketry:precisionassemblingmachine>, [[<qmd:ingot_alloy:2>, <qmd:ingot_alloy:2>, <qmd:ingot_alloy:2>],[<magneticraft:inserter>, <libvulpes:structuremachine>, <magneticraft:inserter>], [<qmd:ingot_alloy:2>, <qmd:ingot_alloy:2>, <qmd:ingot_alloy:2>]]);



recipes.addShaped(<advancedrocketry:dataunit>, [[null, <minecraft:gold_ingot>, null],[null, <advancedrocketry:ic>, null], [null, null, null]]);




recipes.addShaped(<advancedrocketry:ic:1>, [[null, <minecraft:redstone>, null],[<minecraft:redstone>, <advancedrocketry:ic>, <minecraft:redstone>], [null, <minecraft:redstone>, null]]);

recipes.remove(<advancedrocketry:jetpack>);
recipes.addShaped(<advancedrocketry:jetpack>, [[<advancedrocketry:pressuretank:2>, <advancedrocketry:ic>, <advancedrocketry:pressuretank:2>],[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>], [<ore:ingotSuperAlloy>, null, <ore:ingotSuperAlloy>]]);

recipes.remove(<advancedrocketry:misc>);
recipes.addShaped(<advancedrocketry:misc>, [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],[<ore:dustGlowstone>, <ore:dustGlowstone>, <ore:dustGlowstone>], [null, <advancedrocketry:ic>, null]]);

recipes.remove(<advancedrocketry:thermite> * 3);
recipes.addShapeless(<advancedrocketry:thermite> * 3, [<ore:dustAluminum>,<contenttweaker:dust_iron_oxide>,<contenttweaker:dust_iron_oxide>]);

recipes.remove(<advancedrocketry:rocketmotor>);
recipes.addShapeless(<advancedrocketry:rocketmotor>, [<advancedrocketry:bipropellantrocketmotor>]);
recipes.addShapeless(<advancedrocketry:bipropellantrocketmotor>, [<advancedrocketry:rocketmotor>]);

recipes.remove(<advancedrocketry:advrocketmotor>);
recipes.addShapeless(<advancedrocketry:advrocketmotor>, [<advancedrocketry:advbipropellantrocketmotor>]);


recipes.remove(<advancedrocketry:advbipropellantrocketmotor>);
recipes.addShaped(<advancedrocketry:advbipropellantrocketmotor>, [[<advancedrocketry:productplate:1>, <advancedrocketry:productplate:1>, <advancedrocketry:productplate:1>],[null, <advancedrocketry:productingot:1>, null], [<advancedrocketry:productingot:1>, null, <advancedrocketry:productingot:1>]]);
recipes.addShapeless(<advancedrocketry:advbipropellantrocketmotor>, [<advancedrocketry:advrocketmotor>]);

recipes.addShaped(<advancedrocketry:nuclearcore>, [[<ore:ingotSuperAlloy>, <ore:ingotSuperAlloy>, <ore:ingotSuperAlloy>],[<qmd:fission_reflector>, <ore:ingotHEU235Oxide>, <qmd:fission_reflector>], [<ore:ingotSuperAlloy>, <ore:ingotSuperAlloy>, <ore:ingotSuperAlloy>]]);

recipes.remove(<advancedrocketry:fueltank>);
recipes.addShapeless(<advancedrocketry:fueltank>, [<advancedrocketry:bipropellantfueltank>]);
recipes.addShapeless(<advancedrocketry:bipropellantfueltank>, [<advancedrocketry:fueltank>]);

recipes.remove(<advancedrocketry:oxidizerfueltank>);
recipes.addShaped(<advancedrocketry:oxidizerfueltank>, [[null, <contenttweaker:plastic_sheet>, null],[<contenttweaker:plastic_sheet>, <advancedrocketry:bipropellantfueltank>, <contenttweaker:plastic_sheet>], [null, <contenttweaker:plastic_sheet>, null]]);

recipes.remove(<advancedrocketry:nuclearfueltank>);
recipes.addShaped(<advancedrocketry:nuclearfueltank>, [[<libvulpes:productrod:7>, <contenttweaker:plastic_sheet>, <libvulpes:productrod:7>],[<contenttweaker:plastic_sheet>, <advancedrocketry:oxidizerfueltank>, <contenttweaker:plastic_sheet>], [<libvulpes:productrod:7>, <contenttweaker:plastic_sheet>, <libvulpes:productrod:7>]]);

recipes.remove(<advancedrocketry:nuclearrocketmotor>);
recipes.addShaped(<advancedrocketry:nuclearrocketmotor>, [[<ore:plateTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:plateTitaniumIridium>],[null, <ore:ingotSuperAlloy>, null], [<ore:ingotSuperAlloy>, null, <ore:ingotSuperAlloy>]]);

recipes.remove(<advancedrocketry:drill>);
recipes.addShaped(<advancedrocketry:drill>, [[null, <ore:ingotTungstenCarbide>, null],[<ore:ingotTungstenCarbide>, <libvulpes:structuremachine>, <ore:ingotTungstenCarbide>], [<ore:ingotTungstenCarbide>, <libvulpes:advancedmotor>, <ore:ingotTungstenCarbide>]]);



recipes.remove(<advancedrocketry:solarpanel>);
recipes.addShaped(<advancedrocketry:solarpanel>, [[null, <ore:blockGlassColorless>, null],[null, <advancedrocketry:ic>, null], [null, <ore:scaffoldingAluminum>, null]]);

recipes.remove(<advancedrocketry:satellitepowersource>);
recipes.addShaped(<advancedrocketry:satellitepowersource>, [[null, null, <advancedrocketry:solarpanel>],[<ore:stickAluminum>, <ore:stickAluminum>, <ore:stickAluminum>], [null, null, <advancedrocketry:solarpanel>]]);

recipes.remove(<advancedrocketry:solargenerator>);
recipes.addShapeless(<advancedrocketry:solarpanel>, [<advancedrocketry:solargenerator>]);
recipes.addShapeless(<advancedrocketry:solargenerator>, [<advancedrocketry:solarpanel>]);

recipes.remove(<advancedrocketry:carbonscrubbercartridge>);
recipes.addShaped(<advancedrocketry:carbonscrubbercartridge>, [[null, <ore:plateIron>, null],[<ore:plateIron>, <contenttweaker:dust_lithium_hydroxide>, <ore:plateIron>], [<ore:plateIron>, <contenttweaker:dust_lithium_hydroxide>, <ore:plateIron>]]);

recipes.remove(<advancedrocketry:circlelight>);
recipes.addShaped(<advancedrocketry:circlelight>, [[null, null, null],[<ore:plateAluminum>, <ore:glowstone>, <ore:plateAluminum>], [null, null, null]]);

recipes.remove(<advancedrocketry:beacon>);
recipes.addShaped(<advancedrocketry:beacon>, [[null, <ore:coilCopper>, null],[<advancedrocketry:ic:3>, <libvulpes:structuremachine>, <advancedrocketry:ic:1>], [<ore:plateIron>, <immersiveengineering:metal_decoration0>, <ore:plateIron>]]);
recipes.addShaped(<advancedrocketry:satellite>, [[<ore:plateAluminum>, <ore:plateAluminum>, <ore:plateAluminum>],[<ore:stickTitanium>, <advancedrocketry:ic:3>, <ore:stickTitanium>], [<ore:plateAluminum>, <immersiveengineering:metal:31>, <ore:plateAluminum>]]);


recipes.addShaped(<advancedrocketry:atmanalyser>, [[null, <immersiveengineering:metal:31>, <immersiveengineering:metal:31>],[null, <advancedrocketry:ic>, <advancedrocketry:pressuretank>], [null, <immersiveengineering:metal:31>, <immersiveengineering:metal:31>]]);


recipes.addShaped(<advancedrocketry:itemupgrade:5>, [[<minecraft:glowstone_dust>, <advancedrocketry:ic>, <minecraft:glowstone_dust>],[<advancedrocketry:lens>, <ore:plateAluminum>, <advancedrocketry:lens>], [null, null, null]]);

recipes.addShaped(<advancedrocketry:itemupgrade:4>, [[<minecraft:redstone>, <advancedrocketry:ic>, <minecraft:redstone>],[<advancedrocketry:lens>, <ore:plateAluminum>, <advancedrocketry:lens>], [null, null, null]]);

recipes.addShaped(<advancedrocketry:beaconfinder>, [[<ore:plateAluminum>, <advancedrocketry:ic>, <ore:plateAluminum>],[<advancedrocketry:lens>, <ore:plateAluminum>, <advancedrocketry:lens>], [null, null, null]]);

recipes.remove(<libvulpes:battery>);
recipes.addShaped(<libvulpes:battery>, [[null, <ore:plateAluminum>, null],[<ore:plateAluminum>, <nuclearcraft:lithium_ion_cell>, <ore:plateAluminum>], [null, <ore:plateAluminum>, null]]);

recipes.addShaped(<libvulpes:battery:1>, [[null, null, null],[<ore:itemBattery>, <libvulpes:productplate:7>, <ore:itemBattery>], [null, null, null]]);

recipes.addShaped(<libvulpes:battery:1>, [[null, null, null],[<ore:itemBattery>, <ore:plateTitanium>, <ore:itemBattery>], [null, null, null]]);

recipes.addShaped(<advancedrocketry:biomechanger>, [[null, <ore:dustRedstone>, null],[null, <advancedrocketry:ic:2>, null], [null, <ore:ingotHardCarbon>, null]]);

recipes.addShapeless(<advancedrocketry:elevatorchip>, [<advancedrocketry:ic:2>]);

recipes.addShaped(<advancedrocketry:biomechanger>, [[null, <ore:dustRedstone>, null],[null, <advancedrocketry:ic:2>, null], [null, <ore:ingotHardCarbon>, null]]);


recipes.remove(<libvulpes:holoprojector>);
recipes.addShaped(<libvulpes:holoprojector>, [[null, null, null],[null, <ore:dustGlowstone>, null], [<magneticraft:light_plates>, <immersiveengineering:material:27>, <magneticraft:light_plates>]]);

recipes.remove(<advancedrocketry:lens>);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:0>);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:1>);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:2>);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:3>);
recipes.remove(<advancedrocketry:satelliteprimaryfunction:4>);

recipes.addShaped(<advancedrocketry:blocklens>, [[<ore:stickAluminum>, <ore:itemLens>, <ore:stickAluminum>],[<ore:stickAluminum>, null, <ore:stickAluminum>], [<ore:stickAluminum>, <ore:itemLens>, <ore:stickAluminum>]]);

recipes.remove(<advancedrocketry:deployablerocketbuilder>);
recipes.addShaped(<advancedrocketry:deployablerocketbuilder>, [[<ore:plateTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:plateTitaniumIridium>],[<advancedrocketry:ic:2>, <advancedrocketry:rocketbuilder>, <advancedrocketry:ic:2>], [<ore:plateTitaniumIridium>, <ore:plateTitaniumIridium>, <ore:plateTitaniumIridium>]]);

recipes.remove(<advancedrocketry:stationbuilder>);
recipes.addShaped(<advancedrocketry:stationbuilder>, [[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>],[<advancedrocketry:ic:2>, <advancedrocketry:rocketbuilder>, <advancedrocketry:ic:2>], [<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);

recipes.remove(<advancedrocketry:vacuumlaser>);
recipes.addShaped(<advancedrocketry:vacuumlaser>, [[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>],[<ore:rodNdYAG>, <ore:rodNdYAG>, <ore:rodNdYAG>], [<ore:ingotSilver>, <qmd:part:10>, <ore:ingotSilver>]]);

recipes.remove(<advancedrocketry:spacelaser>);
recipes.addShaped(<advancedrocketry:spacelaser>, [[<ore:ingotSuperAlloy>, <libvulpes:advstructuremachine>, <ore:ingotSuperAlloy>],[<ore:ingotSuperAlloy>, <qmd:part:10>, <ore:ingotSuperAlloy>], [<ore:ingotSuperAlloy>, <advancedrocketry:lens>, <ore:ingotSuperAlloy>]]);
