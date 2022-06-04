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
draining.addRecipe("fish_meal_draining", <item:amicore:biowaste>, <fluid:amicore:fish_oil> * 100, <item:amicore:fish_meal>);
<recipetype:immersiveengineering:squeezer>.addRecipe("fish_meal_squeezing", <item:amicore:fish_meal>, 10240, <fluid:amicore:fish_oil> * 125, <item:amicore:biowaste>);
draining.addRecipe("olive_meal_draining", <item:amicore:biowaste>, <fluid:amicore:olive_oil> * 100, <item:amicore:olive_meal>);
draining.addRecipe("avocado_meal_draining", <item:amicore:biowaste>, <fluid:amicore:avocado_oil> * 100, <item:amicore:avocado_meal>);
<recipetype:immersiveengineering:squeezer>.addRecipe("olive_meal_squeezing", <item:amicore:olive_meal>, 10240, <fluid:amicore:olive_oil> * 125, <item:amicore:biowaste>);
<recipetype:immersiveengineering:squeezer>.addRecipe("avocado_meal_squeezing", <item:amicore:avocado_meal>, 10240, <fluid:amicore:avocado_oil> * 125, <item:amicore:biowaste>);
mixing.addRecipe("refined_plant_olive_oil", "heated", <fluid:amicore:refined_plant_oil> * 100, [], [<fluid:amicore:olive_oil> * 100], 400);
mixing.addRecipe("refined_plant_avocado_oil", "heated", <fluid:amicore:refined_plant_oil> * 100, [], [<fluid:amicore:avocado_oil> * 100], 400);
mixing.addRecipe("lubricant", "heated", <fluid:immersivepetroleum:lubricant> * 100, [], [<fluid:amicore:refined_plant_oil> * 50,<fluid:amicore:fish_oil> * 50], 400);

#fish water
new mods.immersivepetroleum.DistillationBuilder()
	.setOutputFluids([<fluid:amicore:purified_water> * 35, <fluid:amicore:saline> * 15])
	.setInputFluid(<tag:fluids:minecraft:water>, 50)
	.setEnergy(2048)
	.setTime(10)
	.build("water_purifying");
mixing.addRecipe("mix_fish_water", "none", <fluid:amicore:fish_water> * 200, [], [<fluid:amicore:saline> * 100, <fluid:minecraft:water> * 100], 400);

#nutrient paste
<recipetype:immersiveengineering:mixer>.addRecipe("nutrient_paste_veggie", <tag:fluids:minecraft:water>, [<tag:items:forge:vegetables> * 4], 10240, <fluid:amicore:nutrient_paste>, 100);
<recipetype:immersiveengineering:mixer>.addRecipe("nutrient_paste_fruit", <tag:fluids:minecraft:water>, [<tag:items:forge:fruits> * 3], 10240, <fluid:amicore:nutrient_paste>, 100);
<recipetype:immersiveengineering:mixer>.addRecipe("nutrient_paste_nuts", <tag:fluids:minecraft:water>, [<tag:items:forge:nuts> * 2], 10240, <fluid:amicore:nutrient_paste>, 100);

#fish tank components
Recipe.type(Type.ENGINEER)
  .shaped([[<item:steampowered:cast_iron_large_cogwheel>, <item:amicore:lv_circuit>, <item:steampowered:cast_iron_large_cogwheel>],
  [<item:minecraft:glass>, <item:minecraft:glass>, <item:minecraft:glass>],
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