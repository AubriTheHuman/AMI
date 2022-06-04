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



//Delete other processing methods
craftingTable.removeByName("pedestals:upgrades/rfcrusher");
craftingTable.removeByName("pedestals:upgrades/crusher");
craftingTable.removeByName("advancedrocketry:platepress");
<recipetype:immersiveengineering:arc_furnace>.removeAll();
<recipetype:immersiveengineering:crusher>.removeByModid("immersive_geology");
<recipetype:appliedenergistics2:grinder>.removeAll();
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_quartz");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_cobalt");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_gold");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_osmium");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_lead");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_redstone");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_aluminum");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_lapis");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_iron");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_emerald");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_uranium");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_nickel");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_platinum");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_coal");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/nether_gold");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_copper");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_zinc");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_silver");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_tungsten");
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/ore_diamond");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/quartz/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/aluminum/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/cobalt/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/copper/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/gold/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/iron/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/lead/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/molten_debris/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/nickel/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/osmium/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/platinum/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/silver/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/tin/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/tungsten/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/uranium/ore");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/zinc/ore");


//remove non-amicore ingots and nuggets
var ironIngots = ["minecraft:iron_ingot", "immersive_geology:ingot_iron"] as string[];
var goldIngots = ["minecraft:gold_ingot", "immersive_geology:ingot_gold"] as string[];
var copperIngots = ["create:copper_ingot", "immersiveengineering:ingot_copper", "tconstruct:copper_ingot", "libvulpes:ingotcopper", "geolosys:copper_ingot", "immersive_geology:ingot_copper"] as string[];
var tinIngots = ["libvulpes:ingottin", "geolosys:tin_ingot", "immersive_geology:ingot_tin"] as string[];
var silverIngots = ["immersiveengineering:ingot_silver", "geolosys:silver_ingot"] as string[];
var leadIngots = ["immersiveengineering:ingot_lead", "geolosys:lead_ingot"] as string[];
var aluminumIngots = ["immersiveengineering:ingot_aluminum", "libvulpes:ingotaluminum", "geolosys:aluminum_ingot"] as string[];
var nickelIngots = ["immersiveengineering:ingot_nickel", "immersive_geology:ingot_nickel", "geolosys:nickel_ingot"] as string[];
var platinumIngots = ["immersive_geology:ingot_platinum", "geolosys:platinum_ingot"] as string[];
var uraniumIngots = ["immersive_geology:ingot_uranium", "immersiveengineering:ingot_uranium"] as string[];
var zincIngots = ["create:zinc_ingot", "geolosys:zinc_ingot"] as string[];
var titaniumIngots = ["libvulpes:ingottitanium", "immersive_geology:ingot_titanium"] as string[];
var chromiumIngots = ["immersive_geology:ingot_chromium"] as string[];
var cobaltIngots = ["tconstruct:cobalt_ingot", "immersive_geology:ingot_cobalt"] as string[];
var tungstenIngots = ["immersive_geology:ingot_tungsten"] as string[];
var iridiumIngots = ["libvulpes:ingotiridium"] as string[];
var siliconIngots = ["libvulpes:ingotsilicon"] as string[];


for i, item in ironIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/iron>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in goldIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/gold>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in copperIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/copper>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in tinIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/tin>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in silverIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/silver>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in leadIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/lead>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in aluminumIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/aluminum>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in nickelIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/nickel>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in platinumIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/platinum>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in uraniumIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/uranium>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in zincIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/zinc>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in titaniumIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/titanium>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in chromiumIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/chromium>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in cobaltIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/cobalt>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in tungstenIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/tungsten>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in iridiumIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/iridium>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
for i, item in siliconIngots {
  <tag:items:forge:ingots>.remove(BracketHandlers.getItem(item));
  <tag:items:forge:ingots/silicon>.remove(BracketHandlers.getItem(item));
  mods.jei.JEI.hideItem(BracketHandlers.getItem(item));
}
