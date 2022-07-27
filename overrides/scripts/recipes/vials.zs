var v1=<vials:vial_16>;
var v2=<vials:vial_144>;
var v3=<vials:vial_288>;
var v4=<vials:vial_432>;
var v5=<vials:vial_576>;
var v6=<vials:vial_1296>;

v1.displayName = "Nugget Container (16mb Vial)"; v1.addTooltip(format.green("Most Nuggets work"));
v2.displayName = "Dust Container (100mb Vial)"; v2.addTooltip(format.green("Redstone coal and etc are 100mb each"));
v3.displayName = "Ingot Container (144mb Vial)";v3.addTooltip(format.green("Ingots Pallets etc"));
v4.displayName = "Gem Container (250mb Vial)"; v4.addTooltip(format.green("Ender Pearl and Glowstone are 250mb each"));
v5.displayName = "Salt Solution Container (666mb Vial)"; v5.addTooltip(format.green("also molten diamond for some reason is 666mb"));
v6.displayName = "Block Container (1296mb Vial)"; v6.addTooltip(format.green("9 ingots, 9x144"));

recipes.remove(v1);
recipes.remove(v2);
recipes.remove(v3);
recipes.remove(v4);
recipes.remove(v5);
recipes.remove(v6);

recipes.addShaped(v1*2,[[<ore:paneGlass>],[<ore:paneGlass>]]);
recipes.addShaped(v2*5,[[<ore:plateIron>],[<ore:blockGlass>],[<ore:blockGlass>]]);
recipes.addShaped(v3*5,[[null,<ore:plateIron>],[<ore:blockGlass>,null,<ore:blockGlass>],[null,<ore:blockGlass>,null]]);
recipes.addShapeless(v4*2,[v2,v2,v2,v2,v2]);
recipes.addShaped(v5*2,[[<ore:plateIron>,<ore:blockGlass>,<ore:blockGlass>],[<ore:blockGlass>],[<ore:blockGlass>]]);
recipes.addShapeless(v6,[v3,v3,v3,v3,v3,v3,v3,v3,v3]);
recipes.addShapeless(v6,[v4,v4,v4,v4,v4]); //if you want to craft this without having left overs of v3

// ez recipes for endgame
//mods.nuclearcraft.Manufactory.addRecipe(itemInput, itemOutput, @Optional double timeMultiplier, @Optional double powerMultiplier, @Optional double processRadiation);
mods.nuclearcraft.Manufactory.addRecipe(<minecraft:glass_pane>, v1*4, 0.1, 1);
mods.nuclearcraft.Manufactory.addRecipe(v1*25, v2*4, 0.1, 5);
mods.nuclearcraft.Manufactory.addRecipe(v2*6, v5, 0.1, 5);
mods.nuclearcraft.Manufactory.addRecipe(<minecraft:glass>, v3*2, 0.1, 5);
