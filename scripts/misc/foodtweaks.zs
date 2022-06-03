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

#farmers delight
craftingTable.removeRecipe(<item:farmersdelight:stove>);
Recipe.type(Type.BASIC)
  .shaped([[<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>],
  [<item:amicore:soul_soil_brick>,<tag:items:forge:large_sheets/iron>,<item:amicore:soul_soil_brick>],
  [<item:minecraft:bricks>,<item:minecraft:campfire>,<item:minecraft:bricks>]])
  .output(<item:farmersdelight:stove>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();
craftingTable.removeRecipe(<item:farmersdelight:skillet>);
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:rounded_sheets/iron>],
  [<tag:items:forge:rods/iron>,<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:rounded_sheets/iron>],
  [<item:amicore:soul_soil_brick>,<tag:items:forge:rods/iron>,<item:minecraft:air>]])
  .output(<item:farmersdelight:skillet>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
craftingTable.removeRecipe(<item:farmersdelight:cooking_pot>);
Recipe.type(Type.BASIC)
  .shaped([[<item:amicore:soul_soil_brick>,<tag:items:forge:rods/iron>,<item:amicore:soul_soil_brick>],
  [<tag:items:forge:rounded_sheets/iron>,<item:minecraft:air>,<tag:items:forge:rounded_sheets/iron>],
  [<tag:items:forge:rounded_sheets/iron>,<item:amicore:soul_soil_brick>,<tag:items:forge:rounded_sheets/iron>]])
  .output(<item:farmersdelight:cooking_pot>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .secondary([<item:amicore:iron_bolt>])
  .register();

#cookingforblocheads blocks
craftingTable.removeRecipe(<item:cookingforblockheads:crafting_book>);
craftingTable.removeRecipe(<item:cookingforblockheads:oven>);
craftingTable.removeRecipe(<item:cookingforblockheads:toaster>);
craftingTable.removeRecipe(<item:cookingforblockheads:sink>);
craftingTable.removeRecipe(<item:cookingforblockheads:fridge>);
craftingTable.removeRecipe(<item:cookingforblockheads:cabinet>);
craftingTable.removeRecipe(<item:cookingforblockheads:counter>);
craftingTable.removeRecipe(<item:cookingforblockheads:corner>);
craftingTable.removeRecipe(<item:cookingforblockheads:cooking_table>);
Recipe.type(Type.BASIC)
  .shaped([[<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>],
  [<item:minecraft:terracotta>,<item:cookingforblockheads:crafting_book>,<item:minecraft:terracotta>],
  [<item:minecraft:terracotta>,<item:minecraft:terracotta>,<item:minecraft:terracotta>]])
  .output(<item:cookingforblockheads:cooking_table>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shapeless([<item:cookingforblockheads:recipe_book>,<item:minecraft:diamond>,<item:minecraft:crafting_table>])
  .output(<item:cookingforblockheads:crafting_book>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>],
  [<item:minecraft:terracotta>,<item:minecraft:water_bucket>,<item:minecraft:terracotta>],
  [<item:minecraft:terracotta>,<item:minecraft:terracotta>,<item:minecraft:terracotta>]])
  .output(<item:cookingforblockheads:sink>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>],
  [<tag:items:forge:plates/iron>,<item:minecraft:smoker>,<tag:items:forge:plates/iron>],
  [<tag:items:forge:plates/iron>,<tag:items:forge:large_sheets/iron>,<tag:items:forge:plates/iron>]])
  .output(<item:cookingforblockheads:oven>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<tag:items:forge:plates/iron>,<item:amicore:soul_soil_brick>,<tag:items:forge:plates/iron>],
  [<tag:items:forge:rounded_sheets/iron>,<item:minecraft:lava_bucket>,<tag:items:forge:rounded_sheets/iron>]])
  .output(<item:cookingforblockheads:toaster>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:terracotta>,<item:minecraft:terracotta>,<item:minecraft:terracotta>],
  [<item:minecraft:terracotta>,<tag:items:forge:chests/wooden>,<item:minecraft:terracotta>]])
  .output(<item:cookingforblockheads:cabinet>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>],
  [<item:minecraft:terracotta>,<tag:items:forge:chests/wooden>,<item:minecraft:terracotta>],
  [<item:minecraft:terracotta>,<item:minecraft:terracotta>,<item:minecraft:terracotta>]])
  .output(<item:cookingforblockheads:counter>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>],
  [<item:minecraft:terracotta>,<item:minecraft:terracotta>],
  [<item:minecraft:terracotta>,<item:minecraft:terracotta>]])
  .output(<item:cookingforblockheads:corner>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shapeless([<item:amicore:soul_soil_brick>,<item:minecraft:iron_door>,<tag:items:forge:chests/wooden>])
  .output(<item:cookingforblockheads:fridge>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .register();

#pams tools
craftingTable.removeByName("pamhc2foodcore:tool_cuttingboard");
craftingTable.removeByName("pamhc2foodcore:tool_bakeware");
craftingTable.removeByName("pamhc2foodcore:tool_juicer");
craftingTable.removeByName("pamhc2foodcore:tool_grinder");
craftingTable.removeByName("pamhc2foodcore:tool_pot");
craftingTable.removeByName("pamhc2foodcore:tool_roller");
craftingTable.removeByName("pamhc2foodcore:tool_saucepan");
craftingTable.removeByName("pamhc2foodcore:tool_skillet");
craftingTable.removeByName("pamhc2foodcore:tool_mixingbowl");

Recipe.type(Type.BASIC)
  .shaped([[<tag:items:forge:rods/iron>,<item:minecraft:air>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:air>,<item:amicore:soul_soil_brick>]])
  .output(<item:pamhc2foodcore:cuttingboarditem>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>],
  [<item:amicore:soul_soil_brick>,<item:minecraft:air>,<item:amicore:soul_soil_brick>],
  [<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>]])
  .output(<item:pamhc2foodcore:cuttingboarditem>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:amicore:soul_soil_brick>,<item:minecraft:air>],
  [<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>]])
  .output(<item:pamhc2foodcore:juiceritem>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:amicore:soul_soil_brick>,<item:minecraft:stick>,<item:amicore:soul_soil_brick>],
  [<item:minecraft:air>,<item:amicore:soul_soil_brick>,<item:minecraft:air>]])
  .output(<item:pamhc2foodcore:grinderitem>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:stick>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>],
  [<item:minecraft:air>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>]])
  .output(<item:pamhc2foodcore:potitem>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:stick>,<item:amicore:soul_soil_brick>,<item:minecraft:stick>]])
  .output(<item:pamhc2foodcore:rolleritem>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:stick>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>]])
  .output(<item:pamhc2foodcore:saucepanitem>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<tag:items:forge:rods/iron>,<item:minecraft:air>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>],
  [<item:minecraft:air>,<item:amicore:soul_soil_brick>,<item:amicore:soul_soil_brick>]])
  .output(<item:pamhc2foodcore:skilletitem>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:air>],
  [<tag:items:minecraft:planks>,<item:amicore:soul_soil_brick>,<tag:items:minecraft:planks>],
  [<item:minecraft:air>,<tag:items:minecraft:planks>,<item:minecraft:air>]])
  .output(<item:pamhc2foodcore:mixingbowlitem>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();