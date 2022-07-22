val n = null;

var t0=<vanillasatchels:satchel:0>;#Base
t0.displayName="Commoners' Backpack (1x9)"; # Hemp + Treated wood
var t1=<vanillasatchels:satchel:1>;#Iron
t1.displayName="Sturdy Backpack (2x9)"; # Iron + Bronze
var t2=<vanillasatchels:satchel:2>;#Gold
t2.displayName="Light Backpack (3x9)"; # Aluminum + 
var t3=<vanillasatchels:satchel:3>;#Diamond
t3.displayName="Militarygrade Backpack (4x9)"; # Graphit + Aluminum
var t4=<vanillasatchels:satchel:4>;#Emerald
t4.displayName="Cosmosers' Backpack (5x9)";
var tv=<vanillasatchels:satchel:100>;
tv.displayName="$0>/dev/null (Void Backpack 1x1)";tv.addTooltip(format.red("Try #rm -rf / --no-preserve-root"));
// each backpack has 1 slot extra
recipes.removeShaped(<vanillasatchels:satchel:*>);
<vanillasatchels:satchel:*>.addTooltip(format.green("Also Try Engineers ToolBox!"));
<immersiveengineering:toolbox>.addTooltip(format.green("Also Try Satchel's Backpacks!"));
<immersiveengineering:toolbox>.addTooltip(format.green("You Can place this on the ground! It also has specialized slots for wires tools and food!"));
recipes.addShaped(t0,[
    [<immersiveengineering:wooden_decoration:1>,<immersiveengineering:wooden_decoration:1>,<immersiveengineering:wooden_decoration:1>],
    [<ore:fabricHemp>,<immersiveengineering:wooden_decoration:1>,<ore:fabricHemp>],
    [<ore:fabricHemp>,<ore:fabricHemp>,<ore:fabricHemp>]]);
recipes.addShaped(t1,[
    [<ore:fabricHemp>,<immersiveengineering:material:8>,<ore:fabricHemp>],
    [<ore:plateIron>,t0,<ore:plateIron>],
    [<ore:fabricHemp>,<ore:plateIron>,<ore:fabricHemp>]]);
recipes.addShaped(t2,[
    [<ore:plateAluminum>,<immersiveengineering:material:9>,<ore:plateAluminum>],
    [<ore:plateGold>,t1,<ore:plateGold>],
    [<ore:plateAluminum>,<ore:plateGold>,<ore:plateAluminum>]]);
recipes.addShaped(t3,[
    [<ore:ingotHardCarbon>,<ore:gemDiamond>,<ore:ingotHardCarbon>],
    [<ore:sheetPlastic>,t2,<ore:sheetPlastic>],
    [<ore:sheetPlastic>,<ore:sheetPlastic>,<ore:sheetPlastic>]]);
recipes.addShaped(t4,[
    [<ore:plateTitaniumAluminide>,<ore:gemEmerald>,<ore:plateTitaniumAluminide>],
    [<ore:bioplastic>,t3,<ore:bioplastic>],
    [<ore:bioplastic>,<ore:bioplastic>,<ore:bioplastic>]]);
recipes.addShaped(tv,[
    [<ore:ingotGraphite>,<magneticraft:crafting:5>,<ore:ingotGraphite>],
    [<ore:fabricHemp>,<immersivetech:metal_trash>,<ore:fabricHemp>],
    [<ore:ingotGraphite>,<ore:fabricHemp>,<ore:ingotGraphite>]]);

