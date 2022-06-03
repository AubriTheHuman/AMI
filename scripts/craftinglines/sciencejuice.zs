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


#starter cluster
#Recipe.type(Type.BASIC)  .shapeless([<tag:items:forge:bolts/iron>, <tag:items:forge:bolts/gold>, <item:minecraft:paper>,  <item:minecraft:leather>, <item:storagedrawers:upgrade_template>, <item:tconstruct:grout>,  <item:waystones:warp_dust>, <tag:items:forge:bolts/copper>, <item:farmersdelight:flint_knife>])  .output(<item:amicore:starter_cluster>)  .tool(<tag:items:artisantools:type/beaker>, 1)  .tool(<tag:items:artisantools:type/burner>, 1)  .register();
