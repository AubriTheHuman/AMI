import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import mods.artisanworktables.Recipe;
import mods.artisanworktables.Type;

<recipetype:immersiveengineering:blast_furnace>.removeByName("immersiveengineering:blastfurnace/steel");
<recipetype:immersiveengineering:blast_furnace>.removeByName("immersiveengineering:blastfurnace/steel_block");

#<recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arcfurnace/steel");
#<recipetype:immersiveengineering:arc_furnace>.removeByName("immersivepetroleum:arcfurnace/steel");
#<recipetype:immersiveengineering:arc_furnace>.removeByName("immersiveengineering:arcfurnace/dust_steel");

#make coke

#for Iron processing
#carbon_cake
// <recipetype:immersiveengineering:squeezer>.addRecipe("carbon_cake_from_coke", <item:immersiveengineering:coal_coke>, 6400, <item:amicore:carbon_cake>);

// #carbon_dust
// <recipetype:immersiveengineering:crusher>.addRecipe("carbon_dust_from_cake", <item:amicore:carbon_cake>, 2400, <item:amicore:carbon_dust> * 4);

#lime/flux
<recipetype:immersiveengineering:blast_furnace>.addRecipe("lime_from_dust", <item:amicore:limestone_dust>, 200, <item:amicore:lime>*4, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace>.addRecipe("lime_from_dust_create", <item:create:limesand>, 200, <item:amicore:lime>*4, <item:immersiveengineering:slag>);
<recipetype:immersiveengineering:blast_furnace_fuel>.addFuel("lignite_coal_coke", <item:geolosys:lignite_coal_coke>, 1800);
<recipetype:immersiveengineering:blast_furnace_fuel>.addFuel("bituminous_coal_coke", <item:geolosys:bituminous_coal_coke>, 3000);

#crush sintered iron ore
#<recipetype:immersiveengineering:crusher>.addRecipe("high_crushed_iron_ore", <item:amicore:iron_ore_sinter>, 4800, <item:amicore:high_crushed_iron_ore>, <item:amicore:high_crushed_iron_ore> % 60, <item:immersiveengineering:dust_nickel> % 20);

#make pig iron grit in blast furnace from pure ore (see create.zs)
#<recipetype:immersiveengineering:blast_furnace>.addRecipe("pig_iron_from_pure_ore", <item:amicore:pure_crushed_iron_ore>, 600, <item:tconstruct:pig_iron_ingot>, <item:immersiveengineering:slag>);

#crush pig iron
#<recipetype:immersiveengineering:crusher>.addRecipe("pig_iron_dust", <item:tconstruct:pig_iron_ingot>, 2400, <item:amicore:pig_iron_dust>);

#melt pig iron for tinkers (see more in tinkersconstruct.zs)
#<recipetype:tconstruct:alloying>.removeRecipe(<fluid:tconstruct:molten_pig_iron>);
#<recipetype:tconstruct:alloying>.addRecipe("iron_from_molten_pig_iron", [<fluid:tconstruct:molten_pig_iron> * 8], <fluid:tconstruct:molten_iron> * 8, 2000);

#hydroxide fuel production
<recipetype:immersiveengineering:crusher>.addRecipe("zinc_dust", <tag:items:forge:ingots/zinc>, 2400, <item:amicore:zinc_dust>);
<tag:items:forge:dusts/tiny/brass>.add(<item:amicore:brass_tiny_dust>);
<tag:fluids:forge:water>.add(<fluid:minecraft:water>);
<tag:fluids:forge:water/pure>.add(<fluid:amicore:purified_water>);
<tag:fluids:forge:water/electrolytic>.add(<fluid:amicore:electrolytic_water>);
<tag:items:forge:water/pure>.add(<item:amicore:purified_water_bucket>);
<tag:items:forge:water/electrolytic>.add(<item:amicore:electrolytic_water_bucket>);
craftingTable.addShapeless("tiny_brass_dust", <item:amicore:brass_tiny_dust> * 9, [<item:amicore:brass_dust>]);
craftingTable.addShapeless("brass_dust_from_tiny", <item:amicore:brass_dust>, [<item:amicore:brass_tiny_dust>,<item:amicore:brass_tiny_dust>,<item:amicore:brass_tiny_dust>,<item:amicore:brass_tiny_dust>,<item:amicore:brass_tiny_dust>,<item:amicore:brass_tiny_dust>,<item:amicore:brass_tiny_dust>,<item:amicore:brass_tiny_dust>,<item:amicore:brass_tiny_dust>]);
<recipetype:immersiveengineering:mixer>.addRecipe("electrolytic_water", <tag:fluids:forge:water/pure>, [<tag:items:forge:dusts/tiny/brass>], 4000, <fluid:amicore:electrolytic_water>, 500);


#steel ingot from pig_iron
<recipetype:immersiveengineering:blast_furnace>.addRecipe("steel_grit_from_pig_iron", <item:amicore:oxygenated_pig_iron_dust>, 300, <item:immersiveengineering:dust_steel>, <item:immersiveengineering:slag>);

#treated wood
craftingTable.removeByName("immersiveengineering:crafting/treated_wood_horizontal");
craftingTable.removeByName("immersiveengineering:crafting/hammer");
Recipe.type(Type.BLACKSMITH)
  .shaped([[<item:minecraft:air>, <tag:items:forge:heated_ingots/iron>, <tag:items:forge:string>],
  [<item:minecraft:air>, <item:minecraft:stick>, <tag:items:forge:heated_ingots/iron>],
  [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]])
  .output(<item:immersiveengineering:hammer>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
