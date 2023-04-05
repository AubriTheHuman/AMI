import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.SmithingManager;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.TagManagerItem;
import mods.artisanworktables.Recipe;
import mods.artisanworktables.Type;

#fuel definitions
<recipetype:tconstruct:fuel>.addFuel("liquid_starlight", <fluid:astralsorcery:liquid_starlight> * 50, 500, 3200);
<recipetype:tconstruct:fuel>.addFuel("hydroxide_fuel", <fluid:amicore:hydroxide_fuel> * 50, 500, 2200);
<recipetype:tconstruct:fuel>.addFuel("plant_oil", <tag:fluids:forge:plantoil> * 50, 500, 340);

#hide tools from JEI
mods.jei.JEI.hideItem(<item:tconstruct:pickaxe>);
mods.jei.JEI.hideItem(<item:tconstruct:sledge_hammer>);
mods.jei.JEI.hideItem(<item:tconstruct:vein_hammer>);
mods.jei.JEI.hideItem(<item:tconstruct:mattock>);
mods.jei.JEI.hideItem(<item:tconstruct:excavator>);
mods.jei.JEI.hideItem(<item:tconstruct:hand_axe>);
mods.jei.JEI.hideItem(<item:tconstruct:broad_axe>);
mods.jei.JEI.hideItem(<item:tconstruct:kama>);
mods.jei.JEI.hideItem(<item:tconstruct:scythe>);
mods.jei.JEI.hideItem(<item:tconstruct:dagger>);
mods.jei.JEI.hideItem(<item:tconstruct:sword>);
mods.jei.JEI.hideItem(<item:tconstruct:cleaver>);

#remove all entity melting
<recipetype:tconstruct:entity_melting>.removeAll();

#steel melt temp dfix
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/steel/block");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/steel/dust");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/steel/ingot");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/steel/nugget");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/steel/plates");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/steel/rod");
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/steel/sheetmetal");
// <recipetype:tconstruct:melting>.addMeltingRecipe("steel_block_melting", <tag:items:forge:storage_blocks/steel>, <fluid:tconstruct:molten_steel> * 1296, 1600, 45);
// <recipetype:tconstruct:melting>.addMeltingRecipe("steel_dust_melting", <tag:items:forge:dusts/steel>, <fluid:tconstruct:molten_steel> * 144, 1600, 16);
// <recipetype:tconstruct:melting>.addMeltingRecipe("steel_ingot_melting", <tag:items:forge:ingots/steel>, <fluid:tconstruct:molten_steel> * 144, 1600, 16);
// <recipetype:tconstruct:melting>.addMeltingRecipe("steel_nugget_melting", <tag:items:forge:nuggets/steel>, <fluid:tconstruct:molten_steel> * 16, 1600, 4);
// <recipetype:tconstruct:melting>.addMeltingRecipe("steel_plates_melting", <tag:items:forge:plates/steel>, <fluid:tconstruct:molten_steel> * 144, 1600, 16);
// <recipetype:tconstruct:melting>.addMeltingRecipe("steel_rod_melting", <tag:items:forge:rods/steel>, <fluid:tconstruct:molten_steel> * 72, 1600, 12);
<recipetype:tconstruct:melting>.addMeltingRecipe("steel_sheetmetal_melting", <tag:items:forge:sheetmetals/steel>, <fluid:tconstruct:molten_steel> * 144, 1600, 16);

#raw nugget melting
#<recipetype:tconstruct:melting>.addMeltingRecipe("raw_nugget_iron_melting", <item:amicore:raw_nugget_iron>, <fluid:tconstruct:molten_iron> * 16, 1100, 4);


#tinkers anvil
craftingTable.removeRecipe(<item:tconstruct:tinkers_anvil>);
var metal_blocks = <tag:items:tconstruct:anvil_metal>.getElements();
for metal in metal_blocks {
  Recipe.type(Type.ENGINEER)
    .shaped([[<tag:items:forge:rounded_sheets/silicon_brass>,<tag:items:forge:large_sheets/silicon_brass>,<tag:items:forge:rounded_sheets/silicon_brass>],
    [metal.getDefaultInstance(),<item:minecraft:anvil>,metal.getDefaultInstance()],
    [<tag:items:tconstruct:seared_blocks>,<item:minecraft:air>,<tag:items:tconstruct:seared_blocks>]])
    .output(<item:tconstruct:tinkers_anvil>.withTag({texture: metal.registryName as string}))
    .tool(<tag:items:artisantools:type/chisel>, 1)
    .register();
}


#tinkers melter parts
craftingTable.removeRecipe(<item:tconstruct:seared_melter>);
craftingTable.removeRecipe(<item:tconstruct:seared_heater>);
craftingTable.removeRecipe(<item:tconstruct:seared_faucet>);
craftingTable.removeRecipe(<item:tconstruct:seared_basin>);
craftingTable.removeRecipe(<item:tconstruct:seared_table>);
craftingTable.removeRecipe(<item:tconstruct:seared_fuel_tank>);
craftingTable.removeRecipe(<item:tconstruct:seared_fuel_gauge>);
craftingTable.removeRecipe(<item:tconstruct:seared_ingot_tank>);
craftingTable.removeRecipe(<item:tconstruct:seared_ingot_gauge>);
craftingTable.removeRecipe(<item:tconstruct:seared_chute>);
craftingTable.removeRecipe(<item:tconstruct:seared_duct>);
craftingTable.removeRecipe(<item:tconstruct:seared_drain>);
craftingTable.removeRecipe(<item:tconstruct:seared_glass>);
craftingTable.removeRecipe(<item:tconstruct:seared_glass_pane>);
craftingTable.removeRecipe(<item:tconstruct:seared_channel>);
craftingTable.removeRecipe(<item:tconstruct:seared_bricks>);
craftingTable.removeRecipe(<item:tconstruct:seared_ladder>);
craftingTable.removeRecipe(<item:tconstruct:seared_lantern>);
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:tconstruct:seared_fuel_gauge>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_melter>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:tconstruct:seared_ingot_gauge>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_melter>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<tag:items:forge:glass>,<item:tconstruct:seared_brick>],
  [<tag:items:forge:glass>,<tag:items:forge:glass>,<tag:items:forge:glass>],
  [<item:tconstruct:seared_brick>,<tag:items:forge:glass>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_fuel_gauge>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:minecraft:smoker>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_heater>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>],
  [<item:minecraft:air>,<item:tconstruct:seared_brick>,<item:minecraft:air>]])
  .output(<item:tconstruct:seared_faucet>*2)
  .tool(<tag:items:artisantools:type/chisel>, 2)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_basin>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_table>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<tag:items:forge:glass>,<item:tconstruct:seared_brick>,<tag:items:forge:glass>],
  [<item:tconstruct:seared_brick>,<tag:items:forge:glass>,<item:tconstruct:seared_brick>],
  [<tag:items:forge:glass>,<item:tconstruct:seared_brick>,<tag:items:forge:glass>]])
  .output(<item:tconstruct:seared_ingot_gauge>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<tag:items:forge:glass>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_fuel_tank>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<tag:items:forge:glass>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<tag:items:forge:glass>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<tag:items:forge:glass>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_ingot_tank>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:tconstruct:seared_brick>,<item:minecraft:air>],
  [<item:tconstruct:seared_brick>,<tag:items:forge:glass>,<item:tconstruct:seared_brick>],
  [<item:minecraft:air>,<item:tconstruct:seared_brick>,<item:minecraft:air>]])
  .output(<item:tconstruct:seared_glass>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_glass>,<item:tconstruct:seared_glass>,<item:tconstruct:seared_glass>],
  [<item:tconstruct:seared_glass>,<item:tconstruct:seared_glass>,<item:tconstruct:seared_glass>]])
  .output(<item:tconstruct:seared_glass_pane>*16)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>],
  [<tag:items:forge:rounded_sheets/copper>,<item:minecraft:air>,<tag:items:forge:rounded_sheets/copper>],
  [<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_drain>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>],
  [<tag:items:forge:rounded_sheets/zinc>,<item:minecraft:air>,<tag:items:forge:rounded_sheets/zinc>],
  [<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_duct>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<tag:items:forge:rounded_sheets/copper>,<item:tconstruct:seared_brick>],
  [<item:minecraft:air>,<item:minecraft:air>,<item:minecraft:air>],
  [<item:tconstruct:seared_brick>,<tag:items:forge:rounded_sheets/copper>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_chute>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_channel>*2)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_bricks>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:minecraft:air>,<item:tconstruct:seared_brick>],
  [<tag:items:tconstruct:seared_bricks>,<tag:items:tconstruct:seared_bricks>,<tag:items:tconstruct:seared_bricks>]])
  .output(<item:tconstruct:seared_ladder>*4)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<tag:items:forge:rods/iron>,<item:minecraft:air>],
  [<item:tconstruct:seared_glass_pane>,<item:tconstruct:seared_glass_pane>,<item:tconstruct:seared_glass_pane>],
  [<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:seared_ladder>*4)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();

<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/cobalt/seared_duct");

#tinkers foundry parts
craftingTable.removeRecipe(<item:tconstruct:scorched_alloyer>);
craftingTable.removeRecipe(<item:tconstruct:scorched_faucet>);
craftingTable.removeRecipe(<item:tconstruct:scorched_basin>);
craftingTable.removeRecipe(<item:tconstruct:scorched_table>);
craftingTable.removeRecipe(<item:tconstruct:scorched_fuel_tank>);
craftingTable.removeRecipe(<item:tconstruct:scorched_fuel_gauge>);
craftingTable.removeRecipe(<item:tconstruct:scorched_ingot_tank>);
craftingTable.removeRecipe(<item:tconstruct:scorched_ingot_gauge>);
craftingTable.removeRecipe(<item:tconstruct:scorched_chute>);
craftingTable.removeRecipe(<item:tconstruct:scorched_duct>);
craftingTable.removeRecipe(<item:tconstruct:scorched_drain>);
craftingTable.removeRecipe(<item:tconstruct:scorched_glass>);
craftingTable.removeRecipe(<item:tconstruct:scorched_glass_pane>);
craftingTable.removeRecipe(<item:tconstruct:scorched_channel>);
craftingTable.removeRecipe(<item:tconstruct:scorched_bricks>);
craftingTable.removeRecipe(<item:tconstruct:scorched_ladder>);
craftingTable.removeRecipe(<item:tconstruct:scorched_lantern>);
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_fuel_gauge>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<tag:items:forge:plates/steel_crafting>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_alloyer>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_ingot_gauge>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<tag:items:forge:plates/steel_crafting>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_alloyer>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<tag:items:forge:glass>,<item:tconstruct:scorched_brick>],
  [<tag:items:forge:glass>,<tag:items:forge:glass>,<tag:items:forge:glass>],
  [<item:tconstruct:scorched_brick>,<tag:items:forge:glass>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_fuel_gauge>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>],
  [<item:minecraft:air>,<item:tconstruct:scorched_brick>,<item:minecraft:air>]])
  .output(<item:tconstruct:scorched_faucet>*2)
  .tool(<tag:items:artisantools:type/chisel>, 2)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_basin>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_table>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<tag:items:forge:glass>,<item:tconstruct:scorched_brick>,<tag:items:forge:glass>],
  [<item:tconstruct:scorched_brick>,<tag:items:forge:glass>,<item:tconstruct:scorched_brick>],
  [<tag:items:forge:glass>,<item:tconstruct:scorched_brick>,<tag:items:forge:glass>]])
  .output(<item:tconstruct:scorched_ingot_gauge>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<tag:items:forge:glass>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_fuel_tank>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<tag:items:forge:glass>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<tag:items:forge:glass>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<tag:items:forge:glass>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_ingot_tank>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:tconstruct:scorched_brick>,<item:minecraft:air>],
  [<item:tconstruct:scorched_brick>,<tag:items:forge:glass>,<item:tconstruct:scorched_brick>],
  [<item:minecraft:air>,<item:tconstruct:scorched_brick>,<item:minecraft:air>]])
  .output(<item:tconstruct:scorched_glass>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_glass>,<item:tconstruct:scorched_glass>,<item:tconstruct:scorched_glass>],
  [<item:tconstruct:scorched_glass>,<item:tconstruct:scorched_glass>,<item:tconstruct:scorched_glass>]])
  .output(<item:tconstruct:scorched_glass_pane>*16)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>],
  [<tag:items:forge:rounded_sheets/bronze>,<item:minecraft:air>,<tag:items:forge:rounded_sheets/bronze>],
  [<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_drain>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>],
  [<tag:items:forge:rounded_sheets/sterling_silver>,<item:minecraft:air>,<tag:items:forge:rounded_sheets/sterling_silver>],
  [<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_duct>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<tag:items:forge:rounded_sheets/bronze>,<item:tconstruct:scorched_brick>],
  [<item:minecraft:air>,<item:minecraft:air>,<item:minecraft:air>],
  [<item:tconstruct:scorched_brick>,<tag:items:forge:rounded_sheets/bronze>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_chute>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_channel>*2)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_bricks>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<item:minecraft:air>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_bricks>,<item:tconstruct:scorched_bricks>,<item:tconstruct:scorched_bricks>]])
  .output(<item:tconstruct:scorched_ladder>*4)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<tag:items:forge:rods/iron>,<item:minecraft:air>],
  [<item:tconstruct:scorched_glass_pane>,<item:tconstruct:scorched_glass_pane>,<item:tconstruct:scorched_glass_pane>],
  [<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>,<item:tconstruct:scorched_brick>]])
  .output(<item:tconstruct:scorched_ladder>*4)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
<recipetype:tconstruct:melting>.removeByName("tconstruct:smeltery/melting/metal/cobalt/scorched_duct");


craftingTable.removeRecipe(<item:tconstruct:copper_can>);
Recipe.type(Type.BLACKSMITH)
  .shaped([[<item:minecraft:air>,<tag:items:forge:rods/copper>,<item:minecraft:air>],
  [<tag:items:forge:rounded_sheets/copper>,<item:minecraft:air>,<tag:items:forge:rounded_sheets/copper>],
  [<item:minecraft:air>,<tag:items:forge:rounded_sheets/copper>,<item:minecraft:air>]])
  .output(<item:tconstruct:copper_can>*8)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:copper_bolt>*3])
  .register();
<recipetype:tconstruct:casting_basin>.removeByName("tconstruct:smeltery/casting/seared/smeltery_controller");
<recipetype:tconstruct:casting_basin>.removeByName("tconstruct:smeltery/casting/scorched/foundry_controller");
<recipetype:tconstruct:casting_table>.removeByName("tconstruct:smeltery/casting/scorched/brick_composite");
Recipe.type(Type.BASIC)
  .shaped([[<item:tconstruct:seared_brick>,<item:tconstruct:seared_fuel_gauge>,<item:tconstruct:seared_brick>],
  [<tag:items:forge:large_sheets/copper>,<item:tconstruct:seared_heater>,<tag:items:forge:large_sheets/zinc>]])
  .output(<item:amicore:assembled_smeltery_controller>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
<recipetype:create:pressing>.addRecipe("smeltery_controller", [<item:tconstruct:smeltery_controller>], <item:amicore:assembled_smeltery_controller>);
Recipe.type(Type.CHEMIST)
  .shaped([[<item:tconstruct:scorched_brick>,<item:tconstruct:seared_fuel_gauge>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<item:tconstruct:seared_heater>,<item:tconstruct:scorched_brick>],
  [<item:tconstruct:scorched_brick>,<tag:items:forge:large_sheets/steel_crafting>,<item:tconstruct:scorched_brick>]])
  .output(<item:amicore:assembled_foundry_controller>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("foundry_controller_casting", <item:amicore:assembled_foundry_controller>, <fluid:tconstruct:molten_obsidian> * 1000, <item:tconstruct:foundry_controller>, 400, true, true);


craftingTable.removeRecipe(<item:tconstruct:tinkers_chest>);
craftingTable.removeRecipe(<item:tconstruct:part_chest>);
craftingTable.removeRecipe(<item:tconstruct:cast_chest>);
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:tconstruct:pattern>,<item:minecraft:air>],
  [<item:minecraft:stick>,<tag:items:forge:chests/wooden>,<item:minecraft:stick>],
  [<item:minecraft:stick>,<tag:items:minecraft:planks>,<item:minecraft:stick>]])
  .output(<item:tconstruct:part_chest>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<tag:items:tconstruct:casts/multi_use>,<item:minecraft:air>],
  [<item:tconstruct:seared_brick>,<tag:items:forge:chests/wooden>,<item:tconstruct:seared_brick>],
  [<item:tconstruct:seared_brick>,<item:tconstruct:seared_bricks>,<item:tconstruct:seared_brick>]])
  .output(<item:tconstruct:cast_chest>)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
   .shaped([[<item:minecraft:air>,<item:tconstruct:pattern>,<item:minecraft:air>],
  [<item:minecraft:lapis_lazuli>,<tag:items:forge:chests/wooden>,<item:minecraft:lapis_lazuli>],
  [<item:minecraft:lapis_lazuli>,<tag:items:minecraft:planks>,<item:minecraft:lapis_lazuli>]])
  .output(<item:tconstruct:tinkers_chest>)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();