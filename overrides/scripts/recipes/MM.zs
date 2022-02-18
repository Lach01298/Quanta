import crafttweaker.item.IItemStack;

//---remove content---


var removeItems= [
<modularmachinery:itemmodularium>,
<modularmachinery:blockinputbus>,
<modularmachinery:blockinputbus:1>,
<modularmachinery:blockinputbus:3>,
<modularmachinery:blockinputbus:4>,
<modularmachinery:blockinputbus:5>,
<modularmachinery:blockinputbus:6>,
<modularmachinery:blockoutputbus>,
<modularmachinery:blockoutputbus:1>,
<modularmachinery:blockoutputbus:3>,
<modularmachinery:blockoutputbus:4>,
<modularmachinery:blockoutputbus:5>,
<modularmachinery:blockoutputbus:6>,
<modularmachinery:blockfluidinputhatch>,
<modularmachinery:blockfluidinputhatch:1>,
<modularmachinery:blockfluidinputhatch:4>,
<modularmachinery:blockfluidinputhatch:5>,
<modularmachinery:blockfluidinputhatch:6>,
<modularmachinery:blockfluidinputhatch:7>,
<modularmachinery:blockfluidoutputhatch>,
<modularmachinery:blockfluidoutputhatch:1>,
<modularmachinery:blockfluidoutputhatch:4>,
<modularmachinery:blockfluidoutputhatch:5>,
<modularmachinery:blockfluidoutputhatch:6>,
<modularmachinery:blockfluidoutputhatch:7>,
<modularmachinery:blockenergyinputhatch>,
<modularmachinery:blockenergyinputhatch:1>,
<modularmachinery:blockenergyinputhatch:4>,
<modularmachinery:blockenergyinputhatch:5>,
<modularmachinery:blockenergyinputhatch:6>,
<modularmachinery:blockenergyinputhatch:7>,
<modularmachinery:blockenergyoutputhatch>,
<modularmachinery:blockenergyoutputhatch:1>,
<modularmachinery:blockenergyoutputhatch:4>,
<modularmachinery:blockenergyoutputhatch:5>,
<modularmachinery:blockenergyoutputhatch:6>,
<modularmachinery:blockenergyoutputhatch:7>,
<modularmachinery:blockcasing:4>
] as  IItemStack[];

for i,item in removeItems{
	recipes.remove(item);
	mods.jei.JEI.hide(item);
}



//---change recipes---

recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [[<ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>],[<ore:ingotStainlessSteel>, <immersiveengineering:material:9>, <ore:ingotStainlessSteel>], [<ore:ingotStainlessSteel>, <immersiveengineering:material:27>, <ore:ingotStainlessSteel>]]);

recipes.remove(<modularmachinery:blockcasing>);
recipes.addShaped(<modularmachinery:blockcasing>, [[null, <ore:ingotStainlessSteel>, null],[<ore:ingotStainlessSteel>, <immersiveengineering:material:9>, <ore:ingotStainlessSteel>], [null, <ore:ingotStainlessSteel>, null]]);

//---add recipes---

recipes.addShaped(<modularmachinery:itemblueprint>, [[<ore:ingotNickel>, <ore:ingotPlatinum>, <ore:ingotNickel>],[<ore:ingotNichrome>, <immersiveengineering:material:27>, <ore:ingotNichrome>], [<ore:ingotNickel>, <immersiveengineering:material:9>, <ore:ingotNickel>]]);

recipes.addShaped(<modularmachinery:blockinputbus:2>, [[null, <ore:chest>, null],[null, <modularmachinery:blockcasing>, null], [null, <immersiveengineering:material:27>, null]]);

recipes.addShaped(<modularmachinery:blockoutputbus:2>, [[null, <immersiveengineering:material:27>, null],[null, <modularmachinery:blockcasing>, null], [null, <ore:chest>, null]]);

recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>, [[null, <immersiveengineering:material:27>, null],[null, <modularmachinery:blockcasing>, null], [null, <immersiveengineering:metal_device0:4>, null]]);

recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [[null, <immersiveengineering:metal_device0:4>, null],[null, <modularmachinery:blockcasing>, null], [null, <immersiveengineering:material:27>, null]]);

recipes.addShaped(<modularmachinery:blockenergyinputhatch:2>, [[null, <ore:coilElectrum>, null],[null, <modularmachinery:blockcasing>, null], [null, <immersiveengineering:material:27>, null]]);

recipes.addShaped(<modularmachinery:blockenergyoutputhatch:2>, [[null, <immersiveengineering:material:27>, null],[null, <modularmachinery:blockcasing>, null], [null, <ore:coilElectrum>, null]]);



