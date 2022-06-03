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

#recipe tweaks
<recipetype:create:cutting>.removeRecipe(<item:create:shaft>);
<recipetype:create:cutting>.addRecipe("shaft_tweaks", <item:create:shaft>*2, <item:create:andesite_alloy>);
craftingTable.removeRecipe(<item:create:shaft>);
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:andesite_alloy>],
  [<tag:items:forge:rods/iron>],
  [<item:create:andesite_alloy>]])
  .output(<item:create:shaft>*4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

craftingTable.removeRecipe(<item:create:cogwheel>);
craftingTable.removeRecipe(<item:create:large_cogwheel>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:planks>, <tag:items:minecraft:wooden_buttons>],
  [<tag:items:minecraft:planks>,<item:create:shaft>,<tag:items:minecraft:planks>],
  [<tag:items:minecraft:wooden_buttons>, <tag:items:minecraft:planks>, <tag:items:minecraft:wooden_buttons>]])
  .output(<item:create:large_cogwheel>*2)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:minecraft:wooden_buttons>, <item:minecraft:air>],
  [<tag:items:minecraft:wooden_buttons>,<item:create:shaft>,<tag:items:minecraft:wooden_buttons>],
  [<item:minecraft:air>, <tag:items:minecraft:wooden_buttons>, <item:minecraft:air>]])
  .output(<item:create:cogwheel>*4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

craftingTable.removeRecipe(<item:create:goggles>);
craftingTable.removeRecipe(<item:create:wrench>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/gold>, <item:minecraft:string>, <tag:items:forge:bolts/gold>],
  [<item:minecraft:stick>, <tag:items:forge:plates/gold>, <item:minecraft:stick>]])
  .output(<item:create:goggles>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/gold>, <tag:items:forge:plates/gold>],
  [<tag:items:forge:plates/gold>, <item:create:cogwheel>],
  [<tag:items:forge:bolts/gold>, <item:minecraft:stick>]])
  .output(<item:create:wrench>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();

craftingTable.removeRecipe(<item:create:andesite_casing>);
craftingTable.removeRecipe(<item:create:gearbox>);
craftingTable.removeRecipe(<item:create:speedometer>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
  [<item:create:andesite_alloy>,<tag:items:minecraft:logs>,<item:create:andesite_alloy>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]])
  .output(<item:create:andesite_casing>*2)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:amicore:wooden_bolt>, <item:create:cogwheel>, <item:amicore:wooden_bolt>],
  [<item:create:cogwheel>,<item:create:shaft>,<item:create:cogwheel>],
  [<item:amicore:wooden_bolt>, <item:create:cogwheel>, <item:amicore:wooden_bolt>]])
  .output(<item:amicore:simple_gearbox>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shapeless([<item:amicore:wooden_bolt>, <item:amicore:simple_gearbox>, <item:create:andesite_casing>])
  .output(<item:create:gearbox>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>,<item:minecraft:compass>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:amicore:simple_gearbox>,<item:minecraft:air>],
  [<item:create:shaft>, <item:create:andesite_casing>, <item:create:shaft>]])
  .output(<item:create:speedometer>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

#early power
craftingTable.removeRecipe(<item:create:windmill_bearing>);
craftingTable.removeRecipe(<item:create:water_wheel>);
craftingTable.removeRecipe(<item:create:turntable>);
craftingTable.removeRecipe(<item:create:radial_chassis>);
craftingTable.removeRecipe(<item:create:linear_chassis>);
craftingTable.removeRecipe(<item:create:sail_frame>);
craftingTable.removeRecipe(<item:create:white_sail>);
craftingTable.removeRecipe(<item:create:hand_crank>);
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:turntable>],
  [<item:amicore:simple_gearbox>],
  [<item:create:shaft>]])
  .output(<item:create:windmill_bearing>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:minecraft:wooden_slabs>],
  [<item:create:shaft>]])
  .output(<item:create:turntable>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:minecraft:wooden_slabs>,<tag:items:minecraft:wooden_slabs>,<tag:items:minecraft:wooden_slabs>],
  [<tag:items:minecraft:wooden_slabs>,<item:create:large_cogwheel>,<tag:items:minecraft:wooden_slabs>],
  [<tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:water_wheel>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/wooden>,<tag:items:minecraft:logs>,<tag:items:forge:bolts/wooden>],
  [<item:create:andesite_alloy>,<tag:items:minecraft:logs>,<item:create:andesite_alloy>],
  [<tag:items:forge:bolts/wooden>, <tag:items:minecraft:logs>, <tag:items:forge:bolts/wooden>]])
  .output(<item:create:radial_chassis>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/wooden>, <item:create:andesite_alloy>, <tag:items:forge:bolts/wooden>],
  [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
  [<tag:items:forge:bolts/wooden>, <item:create:andesite_alloy>, <tag:items:forge:bolts/wooden>]])
  .output(<item:create:linear_chassis>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shapeless([<item:create:sail_frame>,<tag:items:minecraft:carpets>,<tag:items:forge:bolts/wooden>,<tag:items:forge:bolts/wooden>])
  .output(<item:create:white_sail>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:air>],
  [<item:minecraft:stick>,<item:create:andesite_alloy>,<item:minecraft:stick>],
  [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]])
  .output(<item:create:sail_frame>)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:stick>,<item:minecraft:stick>, <tag:items:forge:bolts/iron>],
  [<item:minecraft:air>, <tag:items:forge:bolts/iron>,<item:create:andesite_alloy>],
  [<item:minecraft:air>, <item:minecraft:air>, <item:create:shaft>]])
  .output(<item:create:hand_crank>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

#andesite alloy fix iron
<recipetype:tconstruct:casting_basin>.removeByName("tconstruct:compat/create/andesite_alloy_iron");
<recipetype:tconstruct:casting_basin>.addItemCastingRecipe("andesite_alloy_iron", <item:minecraft:andesite>, <fluid:tconstruct:molten_iron> * 32, <item:create:andesite_alloy>, 20, true, true);

#crafting machines
craftingTable.removeRecipe(<item:create:depot>);
craftingTable.removeRecipe(<item:create:basin>);
craftingTable.removeRecipe(<item:createaddition:rolling_mill>);
craftingTable.removeRecipe(<item:create:mechanical_press>);
craftingTable.removeRecipe(<item:create:mechanical_mixer>);
craftingTable.removeRecipe(<item:create:millstone>);
craftingTable.removeRecipe(<item:create:whisk>);

Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:andesite_alloy>,<item:minecraft:air>,<item:create:andesite_alloy>],
  [<item:create:andesite_alloy>,<tag:items:forge:large_sheets/iron>,<item:create:andesite_alloy>]])
  .output(<item:create:basin>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:large_sheets/iron>],
  [<item:create:andesite_casing>]])
  .output(<item:create:depot>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/iron>,<item:create:shaft>,<tag:items:forge:plates/iron>],
  [<item:create:andesite_alloy>,<item:create:shaft>,<item:create:andesite_alloy>],
  [<item:create:andesite_alloy>,<item:amicore:simple_gearbox>,<item:create:andesite_alloy>]])
  .output(<item:createaddition:rolling_mill>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:shaft>,<item:amicore:simple_gearbox>,<item:create:shaft>],
  [<item:create:cogwheel>,<tag:items:forge:rods/iron>,<item:create:cogwheel>],
  [<item:create:andesite_alloy>,<tag:items:forge:large_sheets/iron>,<item:create:andesite_alloy>]])
  .output(<item:create:mechanical_press>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:shaft>,<item:amicore:simple_gearbox>,<item:create:shaft>],
  [<item:create:cogwheel>,<tag:items:forge:coils/iron>,<item:create:cogwheel>],
  [<item:create:andesite_alloy>,<item:create:whisk>,<item:create:andesite_alloy>]])
  .output(<item:create:mechanical_mixer>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/iron>,<item:create:shaft>,<tag:items:forge:plates/iron>],
  [<item:create:andesite_alloy>,<item:amicore:simple_gearbox>,<item:create:andesite_alloy>],
  [<tag:items:minecraft:stone_crafting_materials>,<tag:items:minecraft:stone_crafting_materials>,<tag:items:minecraft:stone_crafting_materials>]])
  .output(<item:create:millstone>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/iron>,<item:create:shaft>,<tag:items:forge:bolts/iron>],
  [<tag:items:forge:rods/iron>,<item:minecraft:air>,<tag:items:forge:rods/iron>],
  [<tag:items:forge:rods/iron>,<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:rods/iron>]])
  .output(<item:create:whisk>)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .register();

#logistics machines
craftingTable.removeRecipe(<item:create:belt_connector>);
craftingTable.removeRecipe(<item:create:chute>);
craftingTable.removeRecipe(<item:create:andesite_funnel>);
craftingTable.removeRecipe(<item:create:andesite_tunnel>);
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:dried_kelp>,<item:amicore:soul_soil_clay>,<item:minecraft:dried_kelp>]])
  .output(<item:create:belt_connector>)
  .tool(<tag:items:artisantools:type/knife>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:andesite_alloy>,<item:minecraft:air>,<item:create:andesite_alloy>],
  [<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:rounded_sheets/iron>]])
  .output(<item:create:chute>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:andesite_alloy>,<item:minecraft:dried_kelp>,<item:create:andesite_alloy>],
  [<tag:items:forge:rods/iron>,<item:minecraft:dried_kelp>,<tag:items:forge:rods/iron>]])
  .output(<item:create:andesite_funnel>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:andesite_alloy>,<item:minecraft:dried_kelp>,<item:create:andesite_alloy>],
  [<tag:items:forge:rods/zinc>,<item:minecraft:dried_kelp>,<tag:items:forge:rods/zinc>]])
  .output(<item:create:andesite_tunnel>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

#fluid items
craftingTable.removeRecipe(<item:create:fluid_pipe>);
craftingTable.removeRecipe(<item:create:fluid_tank>);
craftingTable.removeRecipe(<item:create:fluid_valve>);
craftingTable.removeRecipe(<item:create:copper_valve_handle>);
craftingTable.removeRecipe(<item:create:mechanical_pump>);
craftingTable.removeRecipe(<item:create:hose_pulley>);
craftingTable.removeRecipe(<item:create:wooden_bracket>);
craftingTable.removeRecipe(<item:create:metal_bracket>);
craftingTable.removeRecipe(<item:create:copper_casing>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/iron_brass>,<tag:items:forge:rounded_sheets/iron_brass>,<tag:items:forge:rounded_sheets/iron_brass>]])
  .output(<item:create:fluid_pipe>*3)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:coils/iron_brass>,<tag:items:forge:coils/iron_brass>,<tag:items:forge:coils/iron_brass>]])
  .output(<item:create:fluid_pipe>*12)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:minecraft:planks>,<tag:items:minecraft:planks>,<tag:items:minecraft:planks>],
  [<tag:items:forge:plates/iron_brass>,<tag:items:minecraft:logs>,<tag:items:forge:plates/iron_brass>],
  [<tag:items:minecraft:planks>,<tag:items:minecraft:planks>,<tag:items:minecraft:planks>]])
  .output(<item:create:copper_casing> * 2)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/iron_brass>,<tag:items:forge:plates/iron_brass>,<tag:items:forge:bolts/iron_brass>],
  [<tag:items:forge:plates/iron_brass>,<item:create:copper_casing>,<tag:items:forge:plates/iron_brass>],
  [<tag:items:forge:bolts/iron_brass>,<tag:items:forge:glass>,<tag:items:forge:bolts/iron_brass>]])
  .output(<item:create:fluid_tank>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rods/iron>,<item:create:shaft>,<item:minecraft:air>],
  [<tag:items:forge:plates/iron_brass>,<item:amicore:simple_gearbox>,<tag:items:forge:plates/iron_brass>],
  [<tag:items:forge:bolts/iron_brass>,<item:create:fluid_pipe>,<tag:items:forge:bolts/iron_brass>]])
  .output(<item:create:fluid_valve>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rods/iron_brass>,<tag:items:forge:plates/iron_brass>,<tag:items:forge:rods/iron_brass>],
  [<tag:items:forge:bolts/iron_brass>,<item:create:shaft>,<tag:items:forge:bolts/iron_brass>]])
  .output(<item:create:copper_valve_handle>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>,<item:create:cogwheel>,<item:minecraft:air>],
  [<tag:items:forge:plates/iron_brass>,<item:amicore:simple_gearbox>,<tag:items:forge:plates/iron_brass>],
  [<tag:items:forge:bolts/iron_brass>,<item:create:fluid_pipe>,<tag:items:forge:bolts/iron_brass>]])
  .output(<item:create:mechanical_pump>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rods/crude_steel>,<item:amicore:multicyl_engine>,<item:create:shaft>],
  [<item:create:mechanical_pump>,<item:create:fluid_tank>,<item:create:fluid_pipe>],
  [<item:steampowered:cast_iron_cogwheel>,<item:amicore:pliable_hose>,<item:steampowered:cast_iron_cogwheel>]])
  .output(<item:create:hose_pulley>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:dried_kelp>,<item:amicore:soul_soil_clay>,<item:minecraft:dried_kelp>],
  [<item:minecraft:dried_kelp>,<item:amicore:soul_soil_clay>,<item:minecraft:dried_kelp>],
  [<item:minecraft:dried_kelp>,<item:amicore:soul_soil_clay>,<item:minecraft:dried_kelp>]])
  .output(<item:amicore:pliable_hose>)
  .tool(<tag:items:artisantools:type/knife>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>],
  [<tag:items:minecraft:planks>,<item:create:andesite_alloy>,<tag:items:minecraft:planks>]])
  .output(<item:create:wooden_bracket>*4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/iron>,<tag:items:forge:rods/iron>,<tag:items:forge:bolts/iron>],
  [<tag:items:forge:rounded_sheets/iron>,<item:create:andesite_alloy>,<tag:items:forge:rounded_sheets/iron>]])
  .output(<item:create:metal_bracket>*4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

#simple engine items
craftingTable.removeRecipe(<item:create:mechanical_drill>);
craftingTable.removeRecipe(<item:create:mechanical_saw>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:crushing_wheel>);
craftingTable.removeRecipe(<item:create:encased_fan>);
craftingTable.removeRecipe(<item:create:propeller>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/lead_brass>, <tag:items:forge:plates/lead_brass>, <tag:items:forge:rounded_sheets/lead_brass>],
  [<item:create:shaft>,<item:create:copper_casing>,<item:create:shaft>],
  [<item:create:andesite_alloy>, <item:amicore:simple_gearbox>, <item:create:andesite_alloy>]])
  .output(<item:amicore:simple_engine>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/lead_brass>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/lead_brass>],
  [<item:create:shaft>,<item:amicore:simple_engine>,<item:create:shaft>],
  [<tag:items:minecraft:logs>, <item:create:andesite_casing>, <tag:items:minecraft:logs>]])
  .output(<item:create:mechanical_saw>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/lead_brass>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/lead_brass>],
  [<item:create:shaft>,<item:amicore:simple_engine>,<item:create:shaft>],
  [<item:create:andesite_alloy>, <item:create:andesite_casing>, <item:create:andesite_alloy>]])
  .output(<item:create:mechanical_drill>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:large_cogwheel>, <tag:items:forge:large_sheets/iron>, <item:create:andesite_alloy>],
  [<tag:items:forge:large_sheets/lead_brass>,<item:amicore:simple_engine>,<tag:items:forge:large_sheets/lead_brass>],
  [<item:create:andesite_alloy>, <tag:items:forge:large_sheets/iron>, <item:create:large_cogwheel>]])
  .output(<item:create:crushing_wheel>*2)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:plates/iron>, <item:create:andesite_alloy>],
  [<tag:items:forge:plates/iron>,<item:create:shaft>,<tag:items:forge:plates/iron>],
  [<item:create:andesite_alloy>, <tag:items:forge:plates/iron>, <item:minecraft:air>]])
  .output(<item:create:propeller>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/lead_brass>, <item:create:propeller>, <tag:items:forge:plates/lead_brass>],
  [<item:create:shaft>,<item:amicore:simple_engine>,<item:create:shaft>],
  [<tag:items:forge:plates/lead_brass>, <item:create:andesite_casing>, <tag:items:forge:plates/lead_brass>]])
  .output(<item:create:encased_fan>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

#shaft changers
craftingTable.removeRecipe(<item:create:gearshift>);
craftingTable.removeRecipe(<item:create:clutch>);
craftingTable.removeRecipe(<item:create:encased_chain_drive>);
craftingTable.removeRecipe(<item:create:adjustable_chain_gearshift>);
craftingTable.removeRecipe(<item:create:sequenced_gearshift>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/lead_brass>, <item:minecraft:redstone>, <tag:items:forge:bolts/lead_brass>],
  [<item:create:shaft>,<item:amicore:simple_gearbox>,<item:create:shaft>],
  [<tag:items:forge:bolts/lead_brass>, <item:create:andesite_casing>, <tag:items:forge:bolts/lead_brass>]])
  .output(<item:create:clutch>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/lead_brass>, <item:minecraft:redstone>, <tag:items:forge:bolts/lead_brass>],
  [<item:create:shaft>,<item:amicore:simple_engine>,<item:create:shaft>],
  [<tag:items:forge:bolts/lead_brass>, <item:create:andesite_casing>, <tag:items:forge:bolts/lead_brass>]])
  .output(<item:create:gearshift>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:bolts/lead_brass>, <item:minecraft:air>],
  [<item:create:shaft>,<item:create:andesite_casing>,<item:create:shaft>],
  [<item:minecraft:air>, <tag:items:forge:bolts/lead_brass>, <item:minecraft:air>]])
  .output(<item:create:encased_chain_drive>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/lead_brass>, <item:minecraft:redstone>, <tag:items:forge:bolts/lead_brass>],
  [<item:create:shaft>,<item:amicore:simple_engine>,<item:create:shaft>],
  [<item:create:large_cogwheel>, <item:create:andesite_casing>, <item:create:large_cogwheel>]])
  .output(<item:create:adjustable_chain_gearshift>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/lead_brass>, <item:minecraft:redstone>, <tag:items:forge:bolts/lead_brass>],
  [<item:create:large_cogwheel>,<tag:items:forge:large_sheets/sterling_silver>,<item:create:large_cogwheel>],
  [<tag:items:forge:bolts/lead_brass>, <item:create:rotation_speed_controller>, <tag:items:forge:bolts/lead_brass>]])
  .output(<item:create:sequenced_gearshift>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

#storage components
craftingTable.removeRecipe(<item:create:content_observer>);
craftingTable.removeRecipe(<item:create:stockpile_switch>);
craftingTable.removeRecipe(<item:create:adjustable_crate>);
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:brass_casing>, <item:create:brass_casing>, <item:create:brass_casing>],
  [<item:create:brass_casing>,<item:minecraft:comparator>,<item:create:brass_casing>],
  [<item:create:brass_casing>, <item:create:brass_casing>, <item:create:brass_casing>]])
  .output(<item:create:adjustable_crate> * 2)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <item:create:speedometer>, <item:minecraft:air>],
  [<item:minecraft:redstone>,<item:minecraft:observer>,<tag:items:forge:plates/sterling_silver>],
  [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>]])
  .output(<item:create:content_observer>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:sterling_silver_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <item:create:speedometer>, <item:minecraft:air>],
  [<item:minecraft:redstone>,<item:minecraft:comparator>,<tag:items:forge:plates/sterling_silver>],
  [<item:minecraft:air>, <item:create:brass_casing>, <item:minecraft:air>]])
  .output(<item:create:stockpile_switch>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:sterling_silver_bolt>*4])
  .register();

// #redstone components
craftingTable.removeRecipe(<item:create:controller_rail>);
// craftingTable.removeRecipe(<item:create:powered_latch>);
// craftingTable.removeRecipe(<item:create:powered_toggle_latch>);
// craftingTable.removeRecipe(<item:create:pulse_repeater>);
// craftingTable.removeRecipe(<item:create:adjustable_repeater>);
// craftingTable.removeRecipe(<item:create:adjustable_pulse_repeater>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rods/bronze>, <item:steampowered:bronze_cogwheel>, <tag:items:forge:rods/bronze>],
  [<tag:items:forge:rods/bronze>,<tag:items:forge:rods/wooden>,<tag:items:forge:rods/bronze>],
  [<tag:items:forge:rods/bronze>, <item:amicore:simple_gearbox>, <tag:items:forge:rods/bronze>]])
  .output(<item:create:controller_rail> * 3)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*6])
  .register();


#potato cannon
craftingTable.removeRecipe(<item:create:potato_cannon>);
craftingTable.removeRecipe(<item:create:copper_backtank>);
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:andesite_alloy>, <item:create:shaft>, <item:create:andesite_alloy>],
  [<tag:items:forge:rounded_sheets/iron_brass>,<item:create:fluid_tank>,<tag:items:forge:rounded_sheets/iron_brass>],
  [<item:minecraft:air>, <tag:items:forge:rounded_sheets/iron_brass>, <item:minecraft:air>]])
  .output(<item:create:copper_backtank>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_brass_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:fluid_pipe>, <item:create:fluid_pipe>, <item:create:fluid_pipe>],
  [<item:amicore:simple_engine>,<item:create:fluid_tank>,<tag:items:forge:rounded_sheets/iron_brass>],
  [<tag:items:forge:rounded_sheets/iron_brass>, <tag:items:forge:rounded_sheets/iron_brass>, <item:create:andesite_alloy>]])
  .output(<item:create:potato_cannon>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_brass_bolt>*4])
  .register();

#toolbox
craftingTable.removeRecipe(<item:create:brown_toolbox>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:bolts/zinc>, <item:create:cogwheel>, <tag:items:forge:bolts/zinc>],
  [<tag:items:forge:plates/gold>,<item:minecraft:chest>,<tag:items:forge:plates/gold>],
  [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>]])
  .output(<item:create:brown_toolbox>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();


#bronze cog
craftingTable.removeRecipe(<item:steampowered:bronze_cogwheel>);
craftingTable.removeRecipe(<item:steampowered:bronze_large_cogwheel>);
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:plates/bronze>, <item:minecraft:air>],
  [<tag:items:forge:plates/bronze>,<item:create:shaft>,<tag:items:forge:plates/bronze>],
  [<item:minecraft:air>, <tag:items:forge:plates/bronze>, <item:minecraft:air>]])
  .output(<item:steampowered:bronze_cogwheel> * 4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/bronze>, <tag:items:forge:plates/bronze>, <tag:items:forge:rounded_sheets/bronze>],
  [<tag:items:forge:plates/bronze>,<item:create:shaft>,<tag:items:forge:plates/bronze>],
  [<tag:items:forge:rounded_sheets/bronze>, <tag:items:forge:plates/bronze>, <tag:items:forge:rounded_sheets/bronze>]])
  .output(<item:steampowered:bronze_large_cogwheel> * 4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*4])
  .register();

#kinetic applianced
craftingTable.removeRecipe(<item:create:rope_pulley>);
craftingTable.removeRecipe(<item:create:clockwork_bearing>);
craftingTable.removeRecipe(<item:create:portable_fluid_interface>);
craftingTable.removeRecipe(<item:create:portable_storage_interface>);
craftingTable.removeRecipe(<item:create:redstone_contact>);
craftingTable.removeRecipe(<item:create:gantry_carriage>);
craftingTable.removeRecipe(<item:create:gantry_shaft>);
craftingTable.removeRecipe(<item:create:sticker>);
craftingTable.removeRecipe(<item:create:mechanical_bearing>);
craftingTable.removeRecipe(<item:create:piston_extension_pole>);
craftingTable.removeRecipe(<item:create:mechanical_piston>);
craftingTable.removeRecipe(<item:create:sticky_mechanical_piston>);
craftingTable.removeRecipe(<item:create:cart_assembler>);
craftingTable.removeRecipe(<item:create:minecart_coupling>);
craftingTable.removeRecipe(<item:create:super_glue>);
craftingTable.removeRecipe(<item:create:mechanical_plough>);
craftingTable.removeRecipe(<item:create:mechanical_harvester>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/bronze>, <item:amicore:simple_engine>, <tag:items:forge:rounded_sheets/bronze>],
  [<item:create:shaft>,<item:steampowered:bronze_large_cogwheel>,<item:create:shaft>],
  [<tag:items:forge:rounded_sheets/bronze>, <tag:items:minecraft:wool>, <tag:items:forge:rounded_sheets/bronze>]])
  .output(<item:create:rope_pulley>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:electron_tube>, <item:create:turntable>, <item:create:electron_tube>],
  [<item:create:shaft>,<item:amicore:simple_engine>,<item:steampowered:bronze_large_cogwheel>],
  [<tag:items:forge:rounded_sheets/bronze>, <item:minecraft:clock>, <tag:items:forge:rounded_sheets/bronze>]])
  .output(<item:create:clockwork_bearing>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/bronze>,<tag:items:forge:chests>,<tag:items:forge:plates/bronze>],
  [<tag:items:forge:rounded_sheets/bronze>, <item:steampowered:bronze_cogwheel>, <tag:items:forge:rounded_sheets/bronze>]])
  .output(<item:create:portable_storage_interface>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/iron_brass>,<item:create:fluid_tank>,<tag:items:forge:plates/iron_brass>],
  [<tag:items:forge:rounded_sheets/iron_brass>, <item:steampowered:bronze_cogwheel>, <tag:items:forge:rounded_sheets/iron_brass>]])
  .output(<item:create:portable_fluid_interface>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/bronze>,  <item:create:andesite_alloy>, <tag:items:forge:plates/bronze>],
  [<item:create:andesite_alloy>, <item:minecraft:redstone>, <item:create:andesite_alloy>]])
  .output(<item:create:redstone_contact>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:plates/bronze>, <item:minecraft:air>],
  [<item:create:shaft>,<item:amicore:simple_engine>,<item:create:shaft>],
  [<item:steampowered:bronze_cogwheel>, <item:minecraft:redstone>, <item:steampowered:bronze_cogwheel>]])
  .output(<item:create:gantry_carriage>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/bronze>],
  [<item:minecraft:redstone>],
  [<item:create:andesite_alloy>]])
  .output(<item:create:gantry_shaft> * 8)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*1])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:slime_block>, <item:minecraft:air>],
  [<tag:items:forge:rounded_sheets/bronze>, <item:minecraft:sticky_piston>, <tag:items:forge:rounded_sheets/bronze>],
  [<item:minecraft:air>, <item:minecraft:redstone>, <item:minecraft:air>]])
  .output(<item:create:sticker>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/bronze>, <item:create:turntable>, <tag:items:forge:rounded_sheets/bronze>],
  [<tag:items:forge:rounded_sheets/bronze>,<item:amicore:simple_engine>,<tag:items:forge:rounded_sheets/bronze>],
  [<item:minecraft:air>, <item:create:shaft>, <item:minecraft:air>]])
  .output(<item:create:mechanical_bearing>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:plates/bronze>, <item:minecraft:air>],
  [<item:steampowered:bronze_cogwheel>, <item:create:shaft>, <item:steampowered:bronze_cogwheel>],
  [<item:create:andesite_alloy>, <item:amicore:simple_engine>, <item:create:andesite_alloy>]])
  .output(<item:create:mechanical_piston>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*1])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:slimeballs>],
  [<item:create:mechanical_piston>]])
  .output(<item:create:sticky_mechanical_piston>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/bronze>],
  [<tag:items:minecraft:planks>],
  [<item:create:andesite_alloy>]])
  .output(<item:create:piston_extension_pole> * 8)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*1])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:minecraft:logs>, <tag:items:forge:large_sheets/bronze>, <tag:items:minecraft:logs>],
  [<item:steampowered:bronze_cogwheel>, <tag:items:minecraft:logs>, <item:steampowered:bronze_cogwheel>],
  [<item:create:andesite_alloy>, <tag:items:minecraft:logs>, <item:create:andesite_alloy>]])
  .output(<item:create:cart_assembler>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/iron>, <tag:items:forge:rods/iron>, <tag:items:forge:plates/iron>]])
  .output(<item:create:minecart_coupling>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:slimeballs>, <tag:items:forge:plates/bronze>],
  [<tag:items:forge:rods/zinc>, <tag:items:forge:slimeballs>]])
  .output(<item:create:super_glue>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>],
  [<item:create:andesite_alloy>, <tag:items:minecraft:logs>, <item:create:andesite_alloy>],
  [<item:create:andesite_alloy>, <item:amicore:simple_engine>, <item:create:andesite_alloy>]])
  .output(<item:create:mechanical_plough>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*3])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/iron>, <item:tconstruct:small_blade>.withTag({Material: "tconstruct:bronze" as string}), <tag:items:forge:plates/iron>],
  [<tag:items:forge:plates/iron>, <item:tconstruct:small_blade>.withTag({Material: "tconstruct:bronze" as string}), <tag:items:forge:plates/iron>],
  [<item:create:andesite_alloy>, <item:amicore:simple_engine>, <item:create:andesite_alloy>]])
  .output(<item:create:mechanical_harvester>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*4])
  .register();

#seats
craftingTable.removeByName("create:crafting/kinetics/white_seat");
craftingTable.removeByName("create:crafting/kinetics/orange_seat");
craftingTable.removeByName("create:crafting/kinetics/magenta_seat");
craftingTable.removeByName("create:crafting/kinetics/light_blue_seat");
craftingTable.removeByName("create:crafting/kinetics/yellow_seat");
craftingTable.removeByName("create:crafting/kinetics/lime_seat");
craftingTable.removeByName("create:crafting/kinetics/pink_seat");
craftingTable.removeByName("create:crafting/kinetics/gray_seat");
craftingTable.removeByName("create:crafting/kinetics/light_gray_seat");
craftingTable.removeByName("create:crafting/kinetics/cyan_seat");
craftingTable.removeByName("create:crafting/kinetics/purple_seat");
craftingTable.removeByName("create:crafting/kinetics/blue_seat");
craftingTable.removeByName("create:crafting/kinetics/brown_seat");
craftingTable.removeByName("create:crafting/kinetics/green_seat");
craftingTable.removeByName("create:crafting/kinetics/red_seat");
craftingTable.removeByName("create:crafting/kinetics/black_seat");
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/white>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:white_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/orange>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:orange_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/magenta>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:magenta_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/light_blue>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:light_blue_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/yellow>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:yellow_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/lime>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:lime_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/pink>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:pink_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/gray>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:gray_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/light_gray>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:light_gray_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/cyan>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:cyan_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/purple>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:purple_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/blue>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:blue_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/brown>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:brown_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/green>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:green_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/green>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:red_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wool/black>],
  [<tag:items:minecraft:wooden_slabs>]])
  .output(<item:create:black_seat>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();

#high torque box
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <item:create:shaft>, <tag:items:forge:plates/sterling_silver>],
  [<item:steampowered:bronze_cogwheel>, <item:amicore:simple_gearbox>, <item:steampowered:bronze_cogwheel>],
  [<tag:items:forge:plates/sterling_silver>, <item:create:shaft>, <item:minecraft:air>]])
  .output(<item:amicore:high_torque_gearbox>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();


#advanced create parts
craftingTable.removeRecipe(<item:create:brass_casing>);
craftingTable.removeRecipe(<item:create:rotation_speed_controller>);
craftingTable.removeRecipe(<item:create:weighted_ejector>);
craftingTable.removeRecipe(<item:create:mechanical_crafter>);
craftingTable.removeRecipe(<item:create:crafter_slot_cover>);
craftingTable.removeRecipe(<item:create:brass_hand>);
craftingTable.removeRecipe(<item:create:brass_funnel>);
craftingTable.removeRecipe(<item:create:brass_tunnel>);
craftingTable.removeRecipe(<item:create:smart_chute>);
craftingTable.removeRecipe(<item:create:deployer>);

Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:minecraft:planks>,<tag:items:forge:plates/lead_brass>,<tag:items:minecraft:planks>],
  [<tag:items:forge:plates/sterling_silver>,<tag:items:minecraft:logs>,<tag:items:forge:plates/sterling_silver>],
  [<tag:items:minecraft:planks>,<tag:items:forge:plates/lead_brass>,<tag:items:minecraft:planks>]])
  .output(<item:create:brass_casing> * 4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:lead_brass_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:plates/iron>, <item:minecraft:air>],
  [<tag:items:forge:plates/sterling_silver>, <item:amicore:high_torque_gearbox>, <tag:items:forge:plates/sterling_silver>],
  [<item:create:shaft>, <item:create:brass_casing>, <item:create:shaft>]])
  .output(<item:create:rotation_speed_controller>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*3])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/sterling_silver>, <item:amicore:high_torque_gearbox>, <tag:items:forge:rounded_sheets/sterling_silver>],
  [<item:create:cogwheel>, <item:create:depot>, <item:create:cogwheel>]])
  .output(<item:create:weighted_ejector>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:workbenches>, <item:minecraft:air>],
  [<tag:items:forge:plates/sterling_silver>, <item:amicore:high_torque_gearbox>, <tag:items:forge:plates/sterling_silver>],
  [<item:create:cogwheel>, <item:create:brass_casing>, <item:create:cogwheel>]])
  .output(<item:create:mechanical_crafter> * 2)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:nuggets/sterling_silver>, <tag:items:forge:plates/sterling_silver>, <tag:items:forge:nuggets/sterling_silver>]])
  .output(<item:create:crafter_slot_cover> * 4)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();
// Recipe.type(Type.ENGINEER)
//   .shaped([[<item:minecraft:string>, <item:create:andesite_alloy>, <item:minecraft:string>],
//   [<item:minecraft:air>, <tag:items:forge:plates/sterling_silver>, <item:minecraft:air>],
//   [<tag:items:forge:rods/sterling_silver>, <item:minecraft:air>, <tag:items:forge:rods/sterling_silver>]])
//   .output(<item:create:brass_hand> * 2)
//   .tool(<tag:items:artisantools:type/hammer>, 1)
//   .tool(<tag:items:artisantools:type/cutters>, 1)
//   .secondary([<item:amicore:iron_bolt>*12])
//   .register();
  <recipetype:create:mechanical_crafting>.addRecipe("brass_hand_ami", <item:create:brass_hand> * 2, [
    [<item:minecraft:string>, <item:create:andesite_alloy>, <item:minecraft:string>],
    [<item:minecraft:air>, <tag:items:forge:plates/sterling_silver>, <item:minecraft:air>],
    [<tag:items:forge:rods/sterling_silver>, <item:minecraft:air>, <tag:items:forge:rods/sterling_silver>]]);
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <item:amicore:high_torque_gearbox>, <item:minecraft:air>],
  [<tag:items:forge:plates/sterling_silver>, <item:create:brass_hand>, <tag:items:forge:plates/sterling_silver>],
  [<tag:items:forge:rods/sterling_silver>, <item:minecraft:dried_kelp>, <tag:items:forge:rods/sterling_silver>]])
  .output(<item:create:brass_funnel> * 2)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/sterling_silver>, <item:amicore:high_torque_gearbox>, <tag:items:forge:plates/sterling_silver>],
  [<tag:items:forge:rods/sterling_silver>, <item:create:brass_hand>, <tag:items:forge:rods/sterling_silver>]])
  .output(<item:create:brass_tunnel> * 2)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <item:amicore:high_torque_gearbox>, <item:minecraft:air>],
  [<tag:items:forge:plates/sterling_silver>, <item:create:chute>, <tag:items:forge:plates/sterling_silver>],
  [<item:minecraft:air>, <item:create:brass_hand>, <item:minecraft:air>]])
  .output(<item:create:smart_chute>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:steampowered:bronze_cogwheel>, <item:amicore:high_torque_gearbox>, <item:create:shaft>],
  [<tag:items:forge:plates/sterling_silver>, <item:create:brass_casing>, <tag:items:forge:plates/sterling_silver>],
  [<item:minecraft:air>, <item:create:brass_hand>, <item:minecraft:air>]])
  .output(<item:create:deployer>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();


#early engines
craftingTable.removeRecipe(<item:create:furnace_engine>);
craftingTable.removeRecipe(<item:create:flywheel>);
craftingTable.removeRecipe(<item:steampowered:bronze_steam_engine>);
craftingTable.removeRecipe(<item:steampowered:bronze_flywheel>);
craftingTable.removeRecipe(<item:steampowered:bronze_burner>);
craftingTable.removeRecipe(<item:steampowered:bronze_boiler>);
<recipetype:create:mechanical_crafting>.removeByName("steampowered:bronze_steam_engine");
<recipetype:create:mechanical_crafting>.removeByName("steampowered:bronze_flywheel");
<recipetype:create:mechanical_crafting>.removeByName("create:mechanical_crafting/flywheel");
<recipetype:create:mechanical_crafting>.removeByName("create:mechanical_crafting/furnace_engine");

<recipetype:create:mechanical_crafting>.addRecipe("bronze_steam_engine_ami", <item:steampowered:bronze_steam_engine>, [
  [<tag:items:forge:rounded_sheets/bronze>, <tag:items:forge:plates/bronze>, <item:amicore:high_torque_gearbox>],
  [<tag:items:forge:rounded_sheets/bronze>, <item:create:fluid_pipe>, <item:minecraft:piston>],
  [<item:create:shaft>, <item:create:shaft>, <tag:items:forge:large_sheets/bronze>]]);
<recipetype:create:mechanical_crafting>.addRecipe("bronze_flywheel_ami", <item:steampowered:bronze_flywheel>, [
  [<item:minecraft:air>, <tag:items:forge:bar_stocks/bronze>, <tag:items:forge:coils/bronze>, <tag:items:forge:bar_stocks/bronze>, <item:minecraft:air>],
  [<tag:items:forge:bar_stocks/bronze>, <tag:items:forge:rods/bronze>, <tag:items:forge:rods/bronze>, <item:steampowered:bronze_cogwheel>, <tag:items:forge:bar_stocks/bronze>],
  [<tag:items:forge:bar_stocks/bronze>, <tag:items:forge:rods/bronze>, <item:amicore:high_torque_gearbox>, <tag:items:forge:rods/bronze>, <tag:items:forge:bar_stocks/bronze>],
  [<tag:items:forge:bar_stocks/bronze>, <item:steampowered:bronze_cogwheel>, <tag:items:forge:rods/bronze>, <tag:items:forge:rods/bronze>, <tag:items:forge:bar_stocks/bronze>],
  [<item:minecraft:air>, <tag:items:forge:bar_stocks/bronze>, <tag:items:forge:bar_stocks/bronze>, <tag:items:forge:bar_stocks/bronze>, <item:minecraft:air>]]);
<recipetype:create:mechanical_crafting>.addRecipe("furnace_engine_ami", <item:create:furnace_engine>, [
  [<tag:items:forge:rounded_sheets/lead_brass>, <tag:items:forge:plates/lead_brass>, <item:amicore:high_torque_gearbox>],
  [<tag:items:forge:rounded_sheets/lead_brass>, <item:create:fluid_pipe>, <item:minecraft:piston>],
  [<item:create:shaft>, <item:create:shaft>, <tag:items:forge:large_sheets/lead_brass>]]);
<recipetype:create:mechanical_crafting>.addRecipe("flywheel_ami", <item:create:flywheel>, [
  [<item:minecraft:air>, <tag:items:forge:bar_stocks/lead_brass>, <tag:items:forge:coils/lead_brass>, <tag:items:forge:bar_stocks/lead_brass>, <item:minecraft:air>],
  [<tag:items:forge:bar_stocks/lead_brass>, <tag:items:forge:rods/lead_brass>, <tag:items:forge:rods/lead_brass>, <item:create:cogwheel>, <tag:items:forge:bar_stocks/lead_brass>],
  [<tag:items:forge:bar_stocks/lead_brass>, <tag:items:forge:rods/lead_brass>, <item:amicore:high_torque_gearbox>, <tag:items:forge:rods/lead_brass>, <tag:items:forge:bar_stocks/lead_brass>],
  [<tag:items:forge:bar_stocks/lead_brass>, <item:create:cogwheel>, <tag:items:forge:rods/lead_brass>, <tag:items:forge:rods/lead_brass>, <tag:items:forge:bar_stocks/lead_brass>],
  [<item:minecraft:air>, <tag:items:forge:bar_stocks/lead_brass>, <tag:items:forge:bar_stocks/lead_brass>, <tag:items:forge:bar_stocks/lead_brass>, <item:minecraft:air>]]);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/bronze>, <tag:items:forge:plates/bronze>, <tag:items:forge:plates/bronze>],
  [<tag:items:forge:plates/bronze>, <item:minecraft:furnace>, <tag:items:forge:plates/bronze>],
  [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>]])
  .output(<item:steampowered:bronze_burner>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*5])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/bronze>, <tag:items:forge:plates/bronze>, <tag:items:forge:rounded_sheets/bronze>],
  [<tag:items:forge:plates/bronze>, <item:create:fluid_tank>, <tag:items:forge:plates/bronze>],
  [<item:minecraft:air>, <item:create:fluid_pipe>, <item:minecraft:air>]])
  .output(<item:steampowered:bronze_boiler>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*5])
  .register();


#fluid crafting parts
craftingTable.removeRecipe(<item:create:spout>);
craftingTable.removeRecipe(<item:create:item_drain>);
craftingTable.removeRecipe(<item:create:smart_fluid_pipe>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/bronze>, <item:amicore:high_torque_gearbox>, <tag:items:forge:rounded_sheets/bronze>],
  [<tag:items:forge:plates/iron_brass>, <item:create:fluid_tank>, <tag:items:forge:plates/iron_brass>],
  [<item:minecraft:air>, <item:create:fluid_pipe>, <item:minecraft:air>]])
  .output(<item:create:spout>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/bronze>, <item:minecraft:iron_bars>, <tag:items:forge:rounded_sheets/bronze>],
  [<tag:items:forge:plates/iron_brass>, <item:create:fluid_tank>, <tag:items:forge:plates/iron_brass>],
  [<item:minecraft:air>, <item:amicore:high_torque_gearbox>, <item:create:fluid_pipe>]])
  .output(<item:create:item_drain>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <item:create:filter>, <item:minecraft:air>],
  [<tag:items:forge:rounded_sheets/bronze>, <item:create:fluid_valve>, <tag:items:forge:rounded_sheets/bronze>],
  [<item:minecraft:air>, <item:create:brass_hand>, <item:minecraft:air>]])
  .output(<item:create:smart_fluid_pipe>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();

#filters
craftingTable.removeRecipe(<item:create:filter>);
craftingTable.removeRecipe(<item:create:attribute_filter>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:nuggets/bronze>, <item:create:filter>, <tag:items:forge:nuggets/bronze>]])
  .output(<item:create:attribute_filter>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:bamboo>, <tag:items:forge:string>, <item:minecraft:bamboo>]])
  .output(<item:create:filter>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();


#blaze burner
craftingTable.removeRecipe(<item:create:empty_blaze_burner>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/iron>, <item:minecraft:iron_bars>, <tag:items:forge:plates/iron>],
  [<tag:items:forge:rounded_sheets/bronze>, <item:tconstruct:copper_can>.withTag({fluid: "tconstruct:blazing_blood" as string}), <tag:items:forge:rounded_sheets/bronze>]])
  .output(<item:create:empty_blaze_burner>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:bronze_bolt>*2])
  .register();

#tools and gear
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:extendo_grip>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create_stuff_additions:encased_jet_chestplate>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create_stuff_additions:andesite_encased_jet_chestplate>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create_stuff_additions:andesite_exoskeleton_chestplate>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create_stuff_additions:copper_exoskeleton_chestplate>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create_stuff_additions:exoskeleton_chestplate>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create_stuff_additions:refined_radiance_exoskeleton_chestplate>);
craftingTable.removeRecipe(<item:create:refined_radiance_casing>);
mods.jei.JEI.hideItem(<item:create_stuff_additions:andesite_encased_jet_chestplate>);
mods.jei.JEI.hideItem(<item:create_stuff_additions:andesite_exoskeleton_chestplate>);
mods.jei.JEI.hideItem(<item:create_stuff_additions:copper_exoskeleton_chestplate>);
mods.jei.JEI.hideItem(<item:create_stuff_additions:exoskeleton_chestplate>);

<recipetype:create:mechanical_crafting>.addRecipe("extendo_ami", <item:create:extendo_grip>, [
  [<item:minecraft:air>, <item:create:brass_hand>, <item:minecraft:air>],
  [<tag:items:forge:rods/bronze>, <tag:items:forge:rods/bronze>, <tag:items:forge:rods/bronze>],
  [<tag:items:forge:rods/bronze>, <tag:items:forge:rods/bronze>, <tag:items:forge:rods/bronze>],
  [<item:minecraft:air>, <item:amicore:multicyl_engine>, <item:minecraft:air>],
  [<item:minecraft:air>, <tag:items:forge:large_sheets/sterling_silver>, <item:minecraft:air>]]);
<recipetype:create:mechanical_crafting>.addRecipe("refined_radiance_exosk", <item:create_stuff_additions:refined_radiance_exoskeleton_chestplate>, [
  [<item:steampowered:cast_iron_cogwheel>, <tag:items:forge:rounded_sheets/refined_radiance>, <tag:items:forge:rods/bronze>, <tag:items:forge:rounded_sheets/refined_radiance>, <item:steampowered:cast_iron_cogwheel>],
  [<tag:items:forge:plates/refined_radiance>, <item:create:brass_casing>, <item:amicore:multicyl_engine>, <item:create:brass_casing>, <tag:items:forge:plates/refined_radiance>],
  [<tag:items:forge:plates/refined_radiance>, <item:create:refined_radiance_casing>, <item:create:brass_casing>, <item:create:refined_radiance_casing>, <tag:items:forge:plates/refined_radiance>]]);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:minecraft:planks>,<tag:items:forge:plates/crude_steel>,<tag:items:minecraft:planks>],
  [<tag:items:forge:plates/refined_radiance>,<tag:items:minecraft:logs>,<tag:items:forge:plates/refined_radiance>],
  [<tag:items:minecraft:planks>,<tag:items:forge:plates/crude_steel>,<tag:items:minecraft:planks>]])
  .output(<item:create:refined_radiance_casing> * 4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*4])
  .register();

#cast iron cog
craftingTable.removeRecipe(<item:steampowered:cast_iron_cogwheel>);
craftingTable.removeRecipe(<item:steampowered:cast_iron_large_cogwheel>);
craftingTable.removeRecipe(<item:create:nozzle>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create_stuff_additions:brass_moped_item>);
craftingTable.removeRecipe(<item:createaddition:furnace_burner>);
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:plates/crude_steel>, <item:minecraft:air>],
  [<tag:items:forge:plates/crude_steel>,<item:create:shaft>,<tag:items:forge:plates/crude_steel>],
  [<item:minecraft:air>, <tag:items:forge:plates/crude_steel>, <item:minecraft:air>]])
  .output(<item:steampowered:cast_iron_cogwheel> * 4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/crude_steel>, <tag:items:forge:plates/crude_steel>, <tag:items:forge:rounded_sheets/crude_steel>],
  [<tag:items:forge:plates/crude_steel>,<item:create:shaft>,<tag:items:forge:plates/crude_steel>],
  [<tag:items:forge:rounded_sheets/crude_steel>, <tag:items:forge:plates/crude_steel>, <tag:items:forge:rounded_sheets/crude_steel>]])
  .output(<item:steampowered:cast_iron_large_cogwheel> * 4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:plates/crude_steel>, <item:minecraft:air>],
  [<tag:items:forge:plates/crude_steel>,<tag:items:minecraft:wool>,<tag:items:forge:plates/crude_steel>]])
  .output(<item:create:nozzle> * 3)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*3])
  .register();
<recipetype:create:mechanical_crafting>.addRecipe("moped_ami", <item:create_stuff_additions:brass_moped_item>, [
  [<tag:items:forge:rods/crude_steel>, <item:minecraft:air>, <item:minecraft:air>],
  [<item:create:brass_casing>, <item:amicore:multicyl_engine>, <item:create:brass_casing>],
  [<item:steampowered:cast_iron_cogwheel>, <item:create:furnace_engine>, <item:steampowered:cast_iron_cogwheel>],
  [<item:create:belt_connector>, <item:create:belt_connector>, <item:create:belt_connector>]]);
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:furnace>, <tag:items:forge:plates/crude_steel>]])
  .output(<item:createaddition:furnace_burner>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*2])
  .register();

#schematicannon
craftingTable.removeRecipe(<item:create:schematicannon>);
craftingTable.removeRecipe(<item:create:schematic_table>);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/crude_steel>, <item:minecraft:cauldron>, <tag:items:forge:rounded_sheets/crude_steel>],
  [<tag:items:forge:large_sheets/crude_steel>,<item:amicore:multicyl_engine>,<tag:items:forge:large_sheets/crude_steel>],
  [<item:minecraft:smooth_stone>, <item:create:deployer>, <item:steampowered:cast_iron_large_cogwheel>]])
  .output(<item:create:schematicannon>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*6])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/crude_steel>, <tag:items:forge:large_sheets/crude_steel>, <tag:items:forge:plates/crude_steel>],
  [<item:minecraft:air>,<item:minecraft:smooth_stone>,<item:minecraft:air>],
  [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]])
  .output(<item:create:schematic_table>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*4])
  .register();


#cast iron engine
craftingTable.removeRecipe(<item:steampowered:cast_iron_steam_engine>);
craftingTable.removeRecipe(<item:steampowered:cast_iron_flywheel>);
craftingTable.removeRecipe(<item:steampowered:cast_iron_burner>);
craftingTable.removeRecipe(<item:steampowered:cast_iron_boiler>);
<recipetype:create:mechanical_crafting>.removeByName("steampowered:cast_iron_steam_engine");
<recipetype:create:mechanical_crafting>.removeByName("steampowered:cast_iron_flywheel");

<recipetype:create:mechanical_crafting>.addRecipe("cast_iron_steam_engine_ami", <item:steampowered:cast_iron_steam_engine>, [
  [<tag:items:forge:rounded_sheets/crude_steel>, <tag:items:forge:plates/crude_steel>, <item:steampowered:bronze_steam_engine>],
  [<tag:items:forge:rounded_sheets/crude_steel>, <item:create:fluid_pipe>, <item:minecraft:piston>],
  [<item:create:shaft>, <item:create:shaft>, <tag:items:forge:large_sheets/crude_steel>]]);
<recipetype:create:mechanical_crafting>.addRecipe("cast_iron_flywheel_ami", <item:steampowered:cast_iron_flywheel>, [
  [<item:minecraft:air>, <tag:items:forge:bar_stocks/crude_steel>, <tag:items:forge:coils/crude_steel>, <tag:items:forge:bar_stocks/crude_steel>, <item:minecraft:air>],
  [<tag:items:forge:bar_stocks/crude_steel>, <tag:items:forge:rods/crude_steel>, <tag:items:forge:rods/crude_steel>, <item:steampowered:cast_iron_cogwheel>, <tag:items:forge:bar_stocks/crude_steel>],
  [<tag:items:forge:bar_stocks/crude_steel>, <tag:items:forge:rods/crude_steel>, <item:steampowered:bronze_flywheel>, <tag:items:forge:rods/crude_steel>, <tag:items:forge:bar_stocks/crude_steel>],
  [<tag:items:forge:bar_stocks/crude_steel>, <item:steampowered:cast_iron_cogwheel>, <tag:items:forge:rods/crude_steel>, <tag:items:forge:rods/crude_steel>, <tag:items:forge:bar_stocks/crude_steel>],
  [<item:minecraft:air>, <tag:items:forge:bar_stocks/crude_steel>, <tag:items:forge:bar_stocks/crude_steel>, <tag:items:forge:bar_stocks/crude_steel>, <item:minecraft:air>]]);
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/crude_steel>, <tag:items:forge:plates/crude_steel>, <tag:items:forge:plates/crude_steel>],
  [<tag:items:forge:plates/crude_steel>, <item:steampowered:bronze_burner>, <tag:items:forge:plates/crude_steel>],
  [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>]])
  .output(<item:steampowered:cast_iron_burner>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*5])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rounded_sheets/crude_steel>, <tag:items:forge:plates/crude_steel>, <tag:items:forge:rounded_sheets/crude_steel>],
  [<tag:items:forge:plates/crude_steel>, <item:steampowered:bronze_boiler>, <tag:items:forge:plates/crude_steel>],
  [<item:minecraft:air>, <item:create:fluid_pipe>, <item:minecraft:air>]])
  .output(<item:steampowered:cast_iron_boiler>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*5])
  .register();

#unify limestone
<tag:items:forge:stone/limestone>.add([<item:create:limestone>,<item:create:limestone_cobblestone>,<item:create:limestone_cobblestone_wall>,
  <item:create:polished_limestone>,<item:create:polished_limestone_wall>,<item:create:limestone_bricks>,<item:create:limestone_bricks_wall>,
  <item:create:fancy_limestone_bricks>,<item:create:fancy_limestone_bricks_wall>,<item:create:limestone_pillar>,<item:create:paved_limestone>,
  <item:create:paved_limestone_wall>,<item:create:layered_limestone>,<item:create:chiseled_limestone>,
  <item:quark:limestone>,<item:quark:limestone>,<item:quark:limestone_bricks>,<item:quark:chiseled_limestone_bricks>,<item:quark:limestone_pavement>,
  <item:quark:limestone_pillar>,<item:quark:polished_limestone>,<item:quark:limestone_bricks_wall>,<item:quark:limestone_wall>]);

#steam fix
<tag:fluids:forge:steam>.add(<fluid:amicore:steam>);

#limestone dust
crushing.addRecipe("limestone_dust", [<item:amicore:limestone_dust>], <tag:items:forge:stone/limestone>);

#ore sintering (mixing with hot blaze)
#mixing.addRecipe("iron_ore_sintering", "heated", <item:amicore:iron_ore_sinter>, [<item:amicore:lime>, <item:amicore:carbon_dust>, <item:amicore:medium_crushed_iron_ore>]);

#Strong washing (mix with strength 2 potion blend)
#mixing.addRecipe("stong_wash", "heated", <fluid:amicore:strong_alc_wash> * 200, [], [<fluid:create:potion>.withTag({Potion: "minecraft:strong_strength" as string}) * 100, <fluid:create:potion>.withTag({Potion: "minecraft:strong_harming" as string}) * 100]);
#mixing.addRecipe("iron_ore_strong_wash", "heated", <item:amicore:pure_crushed_iron_ore>, [<item:amicore:high_crushed_iron_ore>], [<fluid:amicore:strong_alc_wash> * 50]);

#brass dusts
#<tag:items:forge:dusts/zinc>.add(<item:amicore:zinc_dust>);
#mixing.addRecipe("brass_dust", "none", <item:amicore:brass_dust> * 2, [<tag:items:forge:dusts/zinc>, <tag:items:forge:dusts/copper>]);

#hydroxide mixing
mixing.addRecipe("hydroxide_fuel", "heated", <fluid:amicore:hydroxide_fuel> * 100, [], [<fluid:amicore:oxygen_gas> * 50,<fluid:amicore:hydrogen_gas> * 50]);

#oxygenated_pig_iron_dust
#mixing.addRecipe("oxygenated_pig_iron_dust", "heated", <item:amicore:oxygenated_pig_iron_dust>, [<item:amicore:pig_iron_dust>], [<fluid:amicore:oxygen_gas>*50]);

#diamond plates
<tag:items:forge:plates/diamond>.add(<item:amicore:diamond_plate>);
<tag:items:forge:plates/crying_obsidian>.add(<item:amicore:crying_obsidian_plate>);
<tag:items:forge:plates/dirt>.add(<item:amicore:dirt_plate>);
pressing.addRecipe("diamond_plate", [<item:amicore:diamond_plate>], <item:minecraft:diamond>);
pressing.addRecipe("obsidan_ctystal_plate", [<item:amicore:crying_obsidian_plate>], <item:minecraft:crying_obsidian>);
pressing.addRecipe("dirt_plate", [<item:amicore:dirt_plate>], <item:minecraft:dirt>);

#crude steel plate
pressing.addRecipe("crude_steel_plate_smash", [<item:amicore:crude_steel_plate>], <item:amicore:crude_steel_ingot>);

#remove crushing recipes
var variants = ["iron", "gold", "copper", "tin", "silver", "lead", "aluminum", "nickel", "platinum", "uranium", "zinc", "osmium"];
for ore in variants {
  crushing.removeByName("create:crushing/" + ore + "_ore");
}

#blockfixing
crushing.removeByName("create:crushing/copper_block");
crushing.removeByName("create:crushing/zinc_block");
crushing.removeByName("create:crushing/prismarine_crystals");
#crushing.addRecipe("crushing/copper_block", [<item:amicore:low_crushed_copper_ore> * 5], <tag:items:forge:storage_blocks/copper>);
#crushing.addRecipe("crushing/zinc_block", [<item:amicore:low_crushed_zinc_ore> * 5], <tag:items:forge:storage_blocks/zinc>);

washing.removeByName("create:splashing/crushed_iron_ore");
washing.removeByName("create:splashing/crushed_gold_ore");
washing.removeByName("create:splashing/crushed_copper_ore");
washing.removeByName("create:splashing/immersiveengineering/crushed_silver_ore");
washing.removeByName("create:splashing/immersiveengineering/crushed_lead_ore");
washing.removeByName("create:splashing/immersiveengineering/crushed_aluminum_ore");
washing.removeByName("create:splashing/immersiveengineering/crushed_nickel_ore");
#washing.removeByName("morecreatestuffs:splashing/wyrmroost/crushed_platinum_ore");
washing.removeByName("create:splashing/immersiveengineering/crushed_uranium_ore");
washing.removeByName("create:splashing/crushed_zinc_ore");
washing.removeByName("create:splashing/soul_sand");

#milling
milling.removeByName("create:milling/iron_ore");
milling.removeByName("create:milling/gold_ore");
milling.removeByName("create:milling/platinum_ore");
milling.removeByName("create:milling/osmium_ore");
milling.removeByName("create:milling/zinc_ore");
milling.removeByName("create:milling/aluminum_ore");
milling.removeByName("create:milling/lead_ore");
milling.removeByName("create:milling/uranium_ore");
milling.removeByName("create:milling/copper_ore");
milling.removeByName("create:milling/nickel_ore");
milling.removeByName("create:milling/silver_ore");
milling.removeByName("create:milling/tin_ore");

#add them back.
#crushing.addRecipe("crushing/low_iron_ore", [<item:amicore:low_crushed_iron_ore>, <item:amicore:low_crushed_iron_ore> * 2 % 30, <item:minecraft:cobblestone> % 12 ], <tag:items:forge:ores/iron>);

#washing for variants
#washing.addRecipe("washing/low_iron_ore", [<item:minecraft:iron_nugget> * 10, <item:minecraft:iron_nugget> * 5 % 50], <item:amicore:low_crushed_iron_ore>);

#weak wash making
#mixing.addRecipe("mixing/weak_wash", "heated", <fluid:amicore:weak_alc_wash> * 200, [], [<fluid:create:potion>.withTag({Potion: "undergarden:brittleness" as string}) * 100, <fluid:create:potion>.withTag({Potion: "minecraft:weakness" as string}) * 100]);
#mixing.addRecipe("mixing/weak_wash_iron", "heated", <item:amicore:washed_iron>, [<item:amicore:low_crushed_iron_ore>], [<fluid:amicore:weak_alc_wash> * 25]);

#slime coagulation
#filling.addRecipe("filling/coagulated_iron", <item:amicore:coagulated_iron>, <item:amicore:washed_iron>, <fluid:tconstruct:earth_slime> * 100);

#hammer ores
#pressing.addRecipe("pressing/smash_iron_cake", [<item:amicore:crumbled_iron>], <item:amicore:pressed_iron>);

#wash off for medium ore
#washing.addRecipe("washing/medium_iron_ore", [<item:amicore:medium_crushed_iron_ore> * 2], <item:amicore:crumbled_iron>);

#crush for raw nuggets
#crushing.addRecipe("crushing/medium_crushed_iron_ore", [<item:amicore:raw_nugget_iron> * 9, <item:minecraft:cobblestone> % 20 ], <item:amicore:medium_crushed_iron_ore>);

#<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafter_test", <item:minecraft:diamond>,
#[[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>],
#[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>],
#[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>],
#[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>],
#[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>]]);
#<recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafter_test_2", <item:minecraft:diamond>,
#[[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>, <item:minecraft:stick>,<item:minecraft:stick>],
#[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>, <item:minecraft:stick>,<item:minecraft:stick>],
#[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>, <item:minecraft:stick>,<item:minecraft:stick>],
#[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>, <item:minecraft:stick>,<item:minecraft:stick>],
#[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>, <item:minecraft:stick>,<item:minecraft:stick>],
#[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>, <item:minecraft:stick>,<item:minecraft:stick>],
#[<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>, <item:minecraft:stick>,<item:minecraft:stick>]]);

#dia

#create random recipe tweaks
milling.removeByName("create:milling/andesite");
milling.removeByName("create:milling/granite");
milling.removeByName("create:milling/cobblestone");
milling.removeByName("create:milling/diorite");
milling.removeByName("create:milling/gravel");
milling.removeByName("create:milling/sandstone");
milling.removeByName("create:milling/sand");

crushing.addRecipe("crushing/andesite", [<item:minecraft:cobblestone>], <item:minecraft:andesite>);
crushing.addRecipe("crushing/granite", [<item:minecraft:red_sand>], <item:minecraft:granite>);
crushing.addRecipe("crushing/cobblestone", [<item:minecraft:gravel>], <item:minecraft:cobblestone>);
crushing.addRecipe("crushing/diorite", [<item:create:limesand>], <item:minecraft:diorite>);
crushing.addRecipe("crushing/gravel", [<item:minecraft:flint>], <item:minecraft:gravel>);
crushing.addRecipe("crushing/sandstone", [<item:minecraft:sand>], <item:minecraft:sandstone>);
crushing.addRecipe("crushing/sand", [<item:create:limesand>], <item:minecraft:sand>);

milling.removeByName("create:compat/ae2/milling/iron");
milling.removeByName("create:compat/ae2/milling/gold");
milling.removeByName("create:compat/ae2/milling/nether_quartz");
milling.removeByName("create:compat/ae2/milling/certus_quartz");
milling.removeByName("create:compat/ae2/milling/ender_pearl");
milling.removeByName("create:compat/ae2/milling/sky_stone_block");
