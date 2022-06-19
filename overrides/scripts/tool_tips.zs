<magneticraft:iron_pipe>.addTooltip(format.green("2000 mB/t"));
<immersiveengineering:metal_device1:6>.addTooltip(format.green("500 mB/t unpressurised, 10000 mb/t pressurised"));

<immersiveengineering:connector:0>.addTooltip(format.green("512 RF/t"));
<immersiveengineering:connector:2>.addTooltip(format.green("2048 RF/t"));
<immersiveengineering:connector:4>.addTooltip(format.green("8192 RF/t"));
<immersiveengineering:wirecoil:0>.addTooltip(format.green("2048 RF/t"));
<immersiveengineering:wirecoil:6>.addTooltip(format.green("2048 RF/t"));
<immersiveengineering:wirecoil:1>.addTooltip(format.green("8192 RF/t"));
<immersiveengineering:wirecoil:7>.addTooltip(format.green("8192 RF/t"));
<immersiveengineering:wirecoil:2>.addTooltip(format.green("32768 RF/t"));
<alternatingflux:wirecoil>.addTooltip(format.green("1048576 RF/t"));
<immersivetech:stone_decoration>.addTooltip(format.green("Decoration only"));

var chemicalDusts = [
"aluminium_oxide",
"ammonium_diuranate",
"ammonium_fluoride",
"ammonium_sulfate",
"beryllium_chloride",
"beryllium_oxide",
"boric_acid",
"boron_trioxide",
"calcium_chloride",
"calcium_hydroxide",
"calcium_oxide",
"calcium_sulfide",
"chromium_oxide",
"hafnium_tetrachloride",
"iron_carbonate",
"iron_oxide",
"lithium_carbonate",
"lithium_chloride",
"lithium_fluoride",
"lithium_hydride",
"lithium_hydroxide",
"lithium_sulfate",
"magnesium_carbonate",
"magnesium_oxide",
"niobium_pentoxide",
"sodium_bicarbonate",
"sodium_carbonate",
"sodium_hypophosphite",
"sodium_sulfate",
"thorium_dioxide",
"thorium_tetrafluoride",
"titanium_dioxide",
"uranium_dioxide",
"uranium_tetrafluoride",
"uranium_trioxide",
"white_phosphorus",
"zirconium_dioxide",
"zirconium_tetrachloride",
"soda_lime"
] as string[];

#₀₁₂₃₄₅₆₇₈₉
var chemicalDustsTooltips = [
"Al₂O₃",
"(NH₄)₂U₂O₇",
"NH₄F",
"(NH₄)₂SO₄",
"BeCl₂",
"BeO",
"B(OH)₃",
"B₂O₃",
"CaCl₂",
"Ca(OH)₂",
"CaO",
"CaS",
"Cr₂O₃",
"HfCl₄",
"FeCO₃",
"FeO",
"Li₂CO₃",
"LiCl",
"LiF",
"LiH",
"LiOH",
"Li₂SO₄",
"MgCO₃",
"MgO",
"Nb₂O₅",
"NaHCO₃",
"Na₂CO₃",
"NaPO₂H₂",
"Na₂SO₄",
"ThO₂",
"ThF₄",
"TiO₂",
"UO₂",
"UF₄",
"UO₃",
"P",
"ZiO₂",
"ZiCl₄",
"CaO·H₂O"
] as string[];

for i, name in chemicalDusts
{
	itemUtils.getItem("contenttweaker:dust_" + name).addTooltip(format.green(chemicalDustsTooltips[i]));
}
