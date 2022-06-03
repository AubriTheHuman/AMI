import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.SmithingManager;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.TagManagerItem;
import mods.artisanworktables.Recipe;
import mods.artisanworktables.Type;
import crafttweaker.api.ILogger;

var crushing = <recipetype:create:crushing>;
var mixing = <recipetype:create:mixing>;
var pressing = <recipetype:create:pressing>;
var washing = <recipetype:create:splashing>;
var milling = <recipetype:create:milling>;
var filling = <recipetype:create:filling>;
var deploying = <recipetype:create:deploying>;
var sequence = <recipetype:create:sequenced_assembly>;
var draining = <recipetype:create:emptying>;

#0 = advanced (triples)
#1 = basic (doubles)
#2 = basic gem (doubles)
#3 = coal (mined)
#4 = advanced gem (doubles or triples)
#5 = lead/silver exception (no single only double +)
#6 = expert processings (specifics)

var oretypes = [
	[["geothite", "Geothite"], ["forge:ores/iron", "forge:ores/iron_sulfide"], ["1"], ["iron"], ["tconstruct:molten_iron"], ["amicore:iron_ingot"]],
	[["hematite", "Hematite"], ["forge:ores/iron", "forge:ores/iron_oxide"], ["1"], ["iron"], ["tconstruct:molten_iron"], ["amicore:iron_ingot"]],
	[["limonite", "Limonite"], ["forge:ores/iron", "forge:ores/iron_oxide", "forge:ores/nickel", "forge:ores/nickel_oxide"], ["1"], ["iron", "nickel"], ["tconstruct:molten_iron", "tconstruct:molten_nickel"], ["amicore:iron_ingot"]],
	[["magnetite", "Magnetite"], ["forge:ores/iron", "forge:ores/iron_oxide"], ["1"], ["iron"], ["tconstruct:molten_iron"], ["amicore:iron_ingot"]],
	[["pyrite", "Pyrite"], ["forge:ores/iron", "forge:ores/iron_sulfide"], ["1"], ["iron"], ["tconstruct:molten_iron"], ["amicore:iron_ingot"]],
	[["chalcopyrite", "Chalcopyrite"], ["forge:ores/copper", "forge:ores/copper_sulfide"], ["1"], ["copper"], ["tconstruct:molten_copper"], ["amicore:copper_ingot"]],
	[["sphalerite", "Sphalerite"], ["forge:ores/zinc", "forge:ores/zinc_sulfide"], ["1"], ["zinc"], ["tconstruct:molten_zinc"], ["amicore:zinc_ingot"]],
	[["quartzite", "Quartzite Rich Ore"], ["forge:ores/quartz"], ["2"], ["quartz"], ["tconstruct:molten_quartz"], ["minecraft:quartz", "2"]],
	[["malachite", "Malachite"], ["forge:ores/copper", "forge:ores/copper_oxide"], ["1"], ["copper"], ["tconstruct:molten_copper"], ["amicore:copper_ingot"]],
	[["azurite", "Azurite"], ["forge:ores/copper", "forge:ores/copper_oxide"], ["1"], ["copper"], ["tconstruct:molten_copper"], ["amicore:copper_ingot"]],
	[["osmiridium", "Osmiridium"], ["forge:ores/osmium", "forge:ores/osmium_silicate", "forge:ores/iridium", "forge:ores/iridium_silicate"], ["6"], ["osmium", "iridium"], ["tconstruct:molten_osmium", "amicore:molten_iridium"], ["amicore:osmium_ingot"]],
	[["cassiterite", "Cassiterite"], ["forge:ores/tin", "forge:ores/tin_oxide"], ["5"], ["tin"], ["tconstruct:molten_tin"], ["amicore:tin_ingot"]],
	[["wolframite", "Wolframite"], ["forge:ores/tungsten", "forge:ores/tungsten_oxide"], ["6"], ["tungsten"], ["tconstruct:molten_tungsten"], ["amicore:tungsten_ingot"]],
	[["silvery_galena", "Silvery Galena"], ["forge:ores/silver", "forge:ores/silver_silicate"], ["5"], ["silver", "lead"], ["tconstruct:molten_silver", "tconstruct:molten_lead"], ["amicore:silver_ingot"]],
	[["leaded_galena", "Leaded Galena"], ["forge:ores/lead", "forge:ores/lead_silicate"], ["1"], ["lead", "silver"], ["tconstruct:molten_lead", "tconstruct:molten_silver"], ["amicore:lead_ingot"]],
	[["sulfur", "Sulfur Rich Ore"], ["forge:ores/sulfur"], ["2"], ["sulfur"], [""], ["amicore:sulfur_crystal", "2"]],
	[["teallite", "Teallite"], ["forge:ores/tin", "forge:ores/tin_sulfide"], ["5"], ["tin"], ["tconstruct:molten_tin"], ["amicore:tin_ingot"]],
	[["bauxite", "Bauxite"], ["forge:ores/aluminum", "forge:ores/aluminum_oxide"],["6"], ["aluminum"], ["tconstruct:molten_aluminum"], ["amicore:aluminum_ingot"]],
	[["sperrylite", "Sperrylite"], ["forge:ores/platinum", "forge:ores/platinum_arsenide"], ["6"], ["platinum"], ["tconstruct:molten_platinum"], ["amicore:platinum_ingot"]],
	[["cooperite", "Cooperite"], ["forge:ores/platinum", "forge:ores/platinum_sulfide"], ["6"], ["platinum"], ["tconstruct:molten_platinum"], ["amicore:platinum_ingot"]],
	[["uraninite", "Uraninite"], ["forge:ores/uranium", "forge:ores/uranium_oxide"], ["6"], ["uranium"], ["tconstruct:molten_uranium"], ["amicore:uranium_ingot"]],
	[["autunite", "Autunite"], ["forge:ores/uranium", "forge:ores/uranium_phosphate"], ["6"], ["uranium"], ["tconstruct:molten_uranium"], ["amicore:uranium_ingot"]],
	[["apatite", "Apatite"], ["forge:ores/calcium_phosphate"], ["2"], ["apatite"], [""], ["amicore:apatite_gem", "2"]],
	[["marmatite", "Marmatite"], ["forge:ores/zinc", "forge:ores/zinc_sulfide"], ["1"], ["zinc"], ["tconstruct:molten_zinc"], ["amicore:zinc_ingot"]],
	[["brucite", "Brucite"], ["forge:ores/magnesium", "forge:ores/magnesium_oxide"], ["0"], ["magnesium"], ["amicore:molten_magnesium"], ["amicore:magnesium_ingot"]],
	[["rutile", "Rutile"], ["forge:ores/titanium", "forge:ores/titanium_oxide"], ["6"], ["titanium"], ["amicore:molten_titanium"], ["amicore:titanium_ingot"]],
	[["certus", "Certus Rich Ore"], ["forge:ores/certus"], ["2"], ["certus"], [""], ["appliedenergistics2:certus_quartz_crystal", "2"]],
	[["beryl", "Beryl Rich Ore"], ["forge:ores/beryl"], ["2"], ["beryl"], ["tconstruct:molten_emerald"], ["minecraft:emerald", "2"]],
	[["red_beryl", "Red Beryl Rich Ore"], ["forge:ores/red_beryl"], ["2"], ["red_beryl"], ["tconstruct:molten_emerald"], ["minecraft:emerald", "2"]],
	[["aquamarine", "Aquamarine Rich Ore"], ["forge:ores/aquamarine"], ["2"], ["aquamarine"], [""], ["astralsorcery:aquamarine", "2"]],
	[["kimberlite", "Kimberlite Rich Ore"], ["forge:ores/kimberlite"], ["2"], ["klimberlite"], ["tconstruct:molten_diamond"], ["minecraft:diamond", "2"]],
	[["lapis_lazuli", "Lapis-Lazuli Rich Ore"], ["forge:ores/lapis_lazuli"], ["2"], ["lapis_lazuli"], [""], ["minecraft:lapis_lazuli", "16"]],
	[["gold", "Gold Ore"], ["forge:ores/gold"], ["1"], ["gold"], ["tconstruct:molten_gold"], ["amicore:gold_ingot"]],
	[["calaverite", "Calaverite"], ["forge:ores/gold", "forge:ores/gold_telluride"], ["1"], ["gold"], ["tconstruct:molten_gold"], ["amicore:gold_ingot"]],
	[["redstone", "Redstone Rich Ore"], ["forge:ores/redstone"], ["2"], ["redstone"], ["amicore:molten_redstone"], ["minecraft:redstone", "8"]],
	[["chromite", "Chromite"], ["forge:ores/chromium"], ["6"], ["chromium", "iron"], ["amicore:molten_chromium"], ["amicore:chromium_ingot"]],
	[["magnesiochromite", "Magnesiochromite"], ["forge:ores/chromium","forge:ores/magnesium"], ["6"], ["chromium", "magnesium"], ["amicore:molten_chromium", "amicore:molten_magnesium"], ["amicore:chromium_ingot", "amicore:magnesium_ingot"]],
	[["hercynite", "Hercynite"], ["forge:ores/aluminum","forge:ores/iron"], ["6"], ["aluminum", "iron"], ["amicore:molten_aluminum", "amicore:molten_iron"]],
	[["pentlandite", "Pentlandite"], ["forge:ores/nickel","forge:ores/iron"], ["0"], ["nickel", "iron"], ["amicore:molten_nickel", "amicore:molten_iron"], ["amicore:nickel_ingot", "amicore:iron_ingot"]],
	[["millerite", "Millerite"], ["forge:ores/nickel"], ["0"], ["nickel"], ["amicore:molten_nickel"], ["amicore:nickel_ingot"]],
	[["coal", "Coal Ore"], ["forge:ores/coal"], ["3"], ["coal", "minecraft:coal"]],
	[["lignite", "Lignite Ore"], ["forge:ores/lignite"], ["3"], ["lignite"], ["geolosys:lignite_coal"]],
	[["bitumen", "Bitumen Ore"], ["forge:ores/bitumen"], ["3"], ["bitumen"], ["geolosys:bituminous_coal"]],
	[["anthracite", "Anthracite Ore"], ["forge:ores/anthracite"], ["3"], ["anthracite"], ["geolosys:anthracite_coal"]],
	[["nether_anthracite", "Anthracite Ore"], ["forge:ores/anthracite"], ["3"], ["anthracite"], ["geolosys:anthracite_coal"]],
	[["ender_anthracite", "Anthracite Ore"], ["forge:ores/anthracite"], ["3"], ["anthracite"], ["geolosys:anthracite_coal"]],
	[["nether_gold", "Tainted Gold Ore"], ["forge:ores/gold", "forge:ores/gold_tainted"], ["1"], ["gold"], ["tconstruct:molten_gold"], ["amicore:gold_ingot"]],
	[["nether_debris", "Tainted Ancient Debris Streaked Ore"], ["forge:ores/netherite", "forge:ores/netherite_tainted"], ["6"], ["netherite"], ["tconstruct:molten_debris"], [""]],
	[["nether_cobaltite", "Tainted Cobaltite"], ["forge:ores/cobalt", "forge:ores/cobalt_tainted"], ["6"], ["cobalt"], ["tconstruct:molten_cobalt"], ["amicore:cobalt_ingot"]],
	[["nether_quartz", "Tainted Quartzite Rich Ore"], ["forge:ores/quartz", "forge:ores/quartz_tainted"], ["4"], ["quartz"], ["tconstruct:molten_quartz"], [""]],
	[["nether_blazing_quartz", "Tainted Blazing Quartzite Rich Ore"], ["forge:ores/blazing_quartz", "forge:ores/blazing_quartz_tainted"], ["4"], ["blazing_quartz"], ["amicore:molten_blazing_quartz"], [""]],
	[["ender_thallasium", "Thallasium Ore"], ["forge:ores/thallasium", "forge:ores/thallasium_ender"],["6"], ["thallsium"], ["amicore:molten_thallasium"], ["amicore:thallasium_ingot"]],
	[["ender_pendorite", "Pendorite Streaked Ore"], ["forge:ores/pendorite", "forge:ores/pendorite_ender"], ["6"], ["pendorite"], ["amicore:molten_pendorite_scrap"], [""]],
	[["ender_amber", "Amber Rich Ore"], ["forge:ores/amber", "forge:ores/amber_ender"], ["4"], ["amber"], [""], ["betterendforge:raw_amber"]],
	[["ender_ametrine", "Ametrine Rich Ore"], ["forge:ores/ametrine", "forge:ores/ametrine_ender"], ["4"], ["ametrine"], [""], ["byg:ametrine"]],
	[["ender_biotite", "Ender Biotite Rich Ore"], ["forge:ores/biotite", "forge:ores/biotite_ender"], ["4"], ["biotite"], ["quark:biotite"]]
] as string[][][];


#ore processing
for i, item in oretypes {
	//Simple Metals
	if(item[2][0] == "1") {
		furnace.addRecipe("" + item[0][0] + "_cluster_smelting", BracketHandlers.getItem(item[5][0]), BracketHandlers.getItem("amicore:" + item[0][0] + "_cluster"), 1.0, 200);
		blastFurnace.addRecipe("" + item[0][0] + "_cluster_blasting", BracketHandlers.getItem(item[5][0]), BracketHandlers.getItem("amicore:" + item[0][0] + "_cluster"), 1.0, 100);
		crushing.addRecipe("" + item[0][0] + "_ore_crushing", [BracketHandlers.getItem("amicore:crushed_" + item[0][0]), BracketHandlers.getItem("amicore:crushed_" + item[0][0]) % 50], BracketHandlers.getItem("amicore:" + item[0][0] + "_cluster"));
		washing.addRecipe("crushed_" + item[0][0] + "_ore_washing", [BracketHandlers.getItem("amicore:raw_" + item[0][0] + "_nugget") * 10, BracketHandlers.getItem("amicore:raw_" + item[0][0] + "_nugget") * 5 % 50], BracketHandlers.getItem("amicore:crushed_" + item[0][0]));
		<recipetype:tconstruct:melting>.addMeltingRecipe("raw_nugget_" + item[0][0] + "_melting", BracketHandlers.getItem("amicore:raw_" + item[0][0] + "_nugget"), BracketHandlers.getFluidStack(item[4][0]) * 16, 1100, 4);
	}
	//Gemstones
	if(item[2][0] == "2") {
		Recipe.type(Type.BLACKSMITH)
			.shapeless([BracketHandlers.getItem("amicore:" + item[0][0] + "_cluster")])
			.output(BracketHandlers.getItem(item[5][0]) * ((item[5][1] as int) / 2))
			.tool(<tag:items:artisantools:type/mortar>, 4)
			.tool(<tag:items:artisantools:type/hammer>, 4)
		  .fluid(<fluid:minecraft:water> * 250)
			.register();
		crushing.addRecipe("" + item[0][0] + "_gem_ore_crushing", [BracketHandlers.getItem("amicore:crushed_" + item[0][0] + "_gravel")], BracketHandlers.getItem("amicore:" + item[0][0] + "_cluster"));
    	washing.addRecipe("crushed_" + item[0][0] + "_gem_ore_washing", [BracketHandlers.getItem(item[5][0]) * (item[5][1] as int), BracketHandlers.getItem(item[5][0]) * ((item[5][1] as int) / 2) % 10], BracketHandlers.getItem("amicore:crushed_" + item[0][0] + "_gravel"));

	}
  	//silver
	if(item[2][0] == "5") {
		crushing.addRecipe("" + item[0][0] + "_ore_crushing", [BracketHandlers.getItem("amicore:crushed_" + item[0][0]), BracketHandlers.getItem("amicore:crushed_" + item[0][0]) % 50], BracketHandlers.getItem("amicore:" + item[0][0] + "_cluster"));
		washing.addRecipe("crushed_" + item[0][0] + "_ore_washing", [BracketHandlers.getItem("amicore:raw_" + item[0][0] + "_nugget") * 10, BracketHandlers.getItem("amicore:raw_" + item[0][0] + "_nugget") * 5 % 50], BracketHandlers.getItem("amicore:crushed_" + item[0][0]));
		<recipetype:tconstruct:melting>.addOreMeltingRecipe("raw_nugget_" + item[0][0] + "_melting", BracketHandlers.getItem("amicore:raw_" + item[0][0] + "_nugget"), BracketHandlers.getFluidStack(item[4][0]) * 16, 950, 4);
	} 

	//advanced metals
	if(item[2][0] == "0" || item[2][0] == "1" || item[2][0] == "5") {
		mixing.addRecipe(item[0][0] + "_slurry_mixing", "heated", BracketHandlers.getFluidStack("amicore:" + item[0][0] + "_slurry") * 100, [BracketHandlers.getItem("amicore:crushed_" + item[0][0])], [<fluid:amicore:soulfuric_acid> * 50]);
		mixing.addRecipe(item[0][0] + "_slurry_flux_mixing", "heated", BracketHandlers.getFluidStack("amicore:" + item[0][0] + "_fluxed_slurry") * 100, [<item:amicore:limestone_dust>], [BracketHandlers.getFluidStack("amicore:" + item[0][0] + "_slurry") * 100]);
		mixing.addRecipe(item[0][0] + "_slurry_flux_mixing_create", "heated", BracketHandlers.getFluidStack("amicore:" + item[0][0] + "_fluxed_slurry") * 100, [<item:create:limesand>], [BracketHandlers.getFluidStack("amicore:" + item[0][0] + "_slurry") * 100]);
		blastFurnace.addRecipe(item[0][0] + "_powder_blasting", BracketHandlers.getItem("amicore:" + item[0][0] + "_blast"), BracketHandlers.getItem("amicore:" + item[0][0] + "_powder"), 1.0, 600);
		if(item[4].length > 1) {
			<recipetype:tconstruct:melting>.addOreMeltingRecipe(item[0][0] + "_blast_melting", BracketHandlers.getItem("amicore:" + item[0][0] + "_blast"), BracketHandlers.getFluidStack(item[4][0]) * 144, 1100, 4, [BracketHandlers.getFluidStack(item[4][1]) * 72]);
		} else {
			<recipetype:tconstruct:melting>.addOreMeltingRecipe(item[0][0] + "_blast_melting", BracketHandlers.getItem("amicore:" + item[0][0] + "_blast"), BracketHandlers.getFluidStack(item[4][0]) * 216, 1100, 4);
		}
	}
}



#specifics
<recipetype:tconstruct:melting>.addMeltingRecipe("ae2silicon_melting",<tag:items:forge:silicon>, <fluid:amicore:molten_silicon> * 24, 990, 20);
	


