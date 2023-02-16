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



#lubricant
milling.addRecipe("fish_milling_cod", [<item:amicore:fish_meal>], <item:minecraft:cod>);
milling.addRecipe("fish_milling_salmon", [<item:amicore:fish_meal>], <item:minecraft:salmon>);
milling.addRecipe("olive_milling", [<item:amicore:olive_meal>], <item:pamhc2trees:oliveitem>);
milling.addRecipe("avocado_milling", [<item:amicore:avocado_meal>], <item:pamhc2trees:avocadoitem>);
milling.addRecipe("peanut_milling", [<item:amicore:peanut_meal>], <item:pamhc2crops:peanutitem>);
milling.addRecipe("soybean_milling", [<item:amicore:soybean_meal>], <item:pamhc2crops:soybeanitem>);
milling.addRecipe("sesame_seed_milling", [<item:amicore:sesame_seed_meal>], <item:pamhc2crops:sesameseedsitem>);
milling.addRecipe("pinenut_milling", [<item:amicore:pinenut_meal>], <item:pamhc2trees:pinenutitem>);
milling.addRecipe("coconut_milling", [<item:amicore:coconut_meal>], <item:pamhc2trees:coconutitem>);
draining.addRecipe("fish_meal_draining", <item:amicore:biowaste>, <fluid:amicore:fish_oil> * 100, <item:amicore:fish_meal>);
draining.addRecipe("olive_meal_draining", <item:amicore:biowaste>, <fluid:amicore:plant_oil> * 150, <item:amicore:olive_meal>);
draining.addRecipe("avocado_meal_draining", <item:amicore:biowaste>, <fluid:amicore:plant_oil> * 150, <item:amicore:avocado_meal>);
draining.addRecipe("peanut_meal_draining", <item:amicore:biowaste>, <fluid:amicore:plant_oil> * 75, <item:amicore:peanut_meal>);
draining.addRecipe("soybean_meal_draining", <item:amicore:biowaste>, <fluid:amicore:plant_oil> * 75, <item:amicore:soybean_meal>);
draining.addRecipe("sesame_seed_meal_draining", <item:amicore:biowaste>, <fluid:amicore:plant_oil> * 75, <item:amicore:sesame_seed_meal>);
draining.addRecipe("pinenut_meal_draining", <item:amicore:biowaste>, <fluid:amicore:plant_oil> * 150, <item:amicore:pinenut_meal>);
draining.addRecipe("coconut_meal_draining", <item:amicore:biowaste>, <fluid:amicore:plant_oil> * 150, <item:amicore:coconut_meal>);
<recipetype:immersiveengineering:squeezer>.addRecipe("fish_meal_squeezing", <item:amicore:fish_meal>, 40960, <fluid:amicore:fish_oil> * 125, <item:amicore:biowaste>);
<recipetype:immersiveengineering:squeezer>.addRecipe("olive_meal_squeezing", <item:amicore:olive_meal>, 40960, <fluid:amicore:plant_oil> * 175, <item:amicore:biowaste>);
<recipetype:immersiveengineering:squeezer>.addRecipe("avocado_meal_squeezing", <item:amicore:avocado_meal>, 40960, <fluid:amicore:plant_oil> * 175, <item:amicore:biowaste>);
<recipetype:immersiveengineering:squeezer>.addRecipe("peanut_meal_squeezing", <item:amicore:peanut_meal>, 40960, <fluid:amicore:plant_oil> * 100, <item:amicore:biowaste>);
<recipetype:immersiveengineering:squeezer>.addRecipe("soybean_meal_squeezing", <item:amicore:soybean_meal>, 40960, <fluid:amicore:plant_oil> * 100, <item:amicore:biowaste>);
<recipetype:immersiveengineering:squeezer>.addRecipe("sesame_seed_meal_squeezing", <item:amicore:sesame_seed_meal>, 40960, <fluid:amicore:plant_oil> * 100, <item:amicore:biowaste>);
<recipetype:immersiveengineering:squeezer>.addRecipe("pinenut_meal_squeezing", <item:amicore:pinenut_meal>, 40960, <fluid:amicore:plant_oil> * 175, <item:amicore:biowaste>);
<recipetype:immersiveengineering:squeezer>.addRecipe("coconut_meal_squeezing", <item:amicore:coconut_meal>, 40960, <fluid:amicore:plant_oil> * 175, <item:amicore:biowaste>);
mixing.addRecipe("lubricant_plant", "heated", <fluid:immersivepetroleum:lubricant> * 100, [], [<fluid:amicore:plant_oil> * 100], 400);
mixing.addRecipe("lubricant_fish", "heated", <fluid:immersivepetroleum:lubricant> * 100, [], [<fluid:amicore:fish_oil> * 100], 400);

#fish water
new mods.immersivepetroleum.DistillationBuilder()
	.setOutputFluids([<fluid:amicore:purified_water> * 35, <fluid:amicore:saline> * 15])
	.setInputFluid(<tag:fluids:minecraft:water>, 50)
	.setEnergy(2048)
	.setTime(10)
	.build("water_purifying");
mixing.addRecipe("mix_fish_water", "none", <fluid:amicore:fish_water> * 200, [], [<fluid:amicore:saline> * 100, <fluid:minecraft:water> * 100], 400);

#nutrient paste
<recipetype:immersiveengineering:mixer>.addRecipe("nutrient_paste_veggie", <tag:fluids:minecraft:water>, [<tag:items:forge:vegetables> * 4], 20480, <fluid:amicore:nutrient_paste>, 100);
<recipetype:immersiveengineering:mixer>.addRecipe("nutrient_paste_fruit", <tag:fluids:minecraft:water>, [<tag:items:forge:fruits> * 3], 20480, <fluid:amicore:nutrient_paste>, 100);
<recipetype:immersiveengineering:mixer>.addRecipe("nutrient_paste_nuts", <tag:fluids:minecraft:water>, [<tag:items:forge:nuts> * 2], 20480, <fluid:amicore:nutrient_paste>, 100);
<recipetype:immersiveengineering:mixer>.addRecipe("nutrient_paste_algae", <tag:fluids:minecraft:water>, [<item:amicore:algae> * 5], 20480, <fluid:amicore:nutrient_paste>, 100);
<recipetype:immersiveengineering:mixer>.addRecipe("nutrient_paste_seaweed", <tag:fluids:minecraft:water>, [<item:minecraft:seagrass> * 5], 20480, <fluid:amicore:nutrient_paste>, 100);
<recipetype:immersiveengineering:mixer>.addRecipe("nutrient_paste_kelp", <tag:fluids:minecraft:water>, [<item:minecraft:kelp> * 8], 20480, <fluid:amicore:nutrient_paste>, 100);

#fish tank components
Recipe.type(Type.ENGINEER)
  .shaped([[<item:steampowered:cast_iron_large_cogwheel>, <item:amicore:lv_circuit>, <item:steampowered:cast_iron_large_cogwheel>],
  [<item:minecraft:glass>, <item:minecraft:heart_of_the_sea>, <item:minecraft:glass>],
  [<item:minecraft:glass>, <item:amicore:multicyl_engine>, <item:minecraft:glass>]])
  .output(<item:amicore:fish_tank_controller>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:amicore:lv_circuit>],
  [<item:minecraft:glass>],
  [<item:create:fluid_pipe>]])
  .output(<item:amicore:glass_fluid_input>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*1])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:fluid_pipe>],
  [<item:minecraft:glass>],
  [<item:amicore:lv_circuit>]])
  .output(<item:amicore:glass_fluid_output>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*1])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:amicore:lv_circuit>],
  [<item:minecraft:glass>],
  [<item:quark:chute>]])
  .output(<item:amicore:glass_item_input>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*1])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:quark:chute>],
  [<item:minecraft:glass>],
  [<item:amicore:lv_circuit>]])
  .output(<item:amicore:glass_item_output>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*1])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:stick>, <item:create:filter>, <item:minecraft:stick>],
  [<item:minecraft:stick>, <item:create:filter>, <item:minecraft:stick>],
  [<item:minecraft:stick>, <item:create:filter>, <item:minecraft:stick>]])
  .output(<item:amicore:tank_filter>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:wooden_bolt>*6])
  .register();

#filter2
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:bamboo>, <item:immersiveengineering:hemp_fiber>, <item:minecraft:bamboo>]])
  .output(<item:create:filter>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

#slag processing


#sap draining/filling
draining.addRecipe("sap_draining", <item:malum:runewood_log>, <fluid:amicore:solar_sap> * 250, <item:malum:sap_filled_runewood_log>);
filling.addRecipe("sap_filling_bottle", <item:malum:solar_sap_bottle>, <item:minecraft:glass_bottle>, <fluid:amicore:solar_sap> * 250);
filling.addRecipe("sap_filling_slime", <item:malum:solar_sapball> * 3, <item:minecraft:slime_ball>, <fluid:amicore:solar_sap> * 250);

#botany Pot/ Cloche
craftingTable.removeByModid("botanypots");
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:terracotta>, <item:minecraft:cobblestone>, <item:minecraft:terracotta>],
  [<item:minecraft:terracotta>, <item:minecraft:flower_pot>, <item:minecraft:terracotta>],
  [<item:minecraft:air>, <item:minecraft:terracotta>, <item:minecraft:air>]])
  .output(<item:botanypots:botany_pot>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:hopper>, <item:botanypots:botany_pot>, <item:amicore:steel_round_sheet>]])
  .output(<item:botanypots:hopper_botany_pot>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:steel_bolt>*2])
  .register();

var color = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"] as string[];

for item in color {
  craftingTable.addShapeless("botany_pot_dye_" + item, BracketHandlers.getItem("botanypots:" + item + "_botany_pot"), [<tagManager:items>.getTag("forge:dyes/" + item), <item:botanypots:botany_pot>]);
  craftingTable.addShapeless("hopper_botany_pot_dye_" + item, BracketHandlers.getItem("botanypots:hopper_" + item + "_botany_pot"), [<tagManager:items>.getTag("forge:dyes/" + item), <item:botanypots:hopper_botany_pot>]);
}
