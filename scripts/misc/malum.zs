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

#scythe and dagger
craftingTable.removeRecipe(<item:malum:crude_scythe>);
Recipe.type(Type.CHEMIST)
  .shaped([[<item:tconstruct:small_blade>.withTag({Material: "tconstruct:silver" as string}), <item:tconstruct:small_blade>.withTag({Material: "tconstruct:silver" as string}), <item:malum:soulstone>],
  [<item:minecraft:air>, <item:minecraft:stick>, <tag:items:forge:heated_bar_stocks/sterling_silver>],
  [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]])
  .output(<item:malum:crude_scythe>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:sterling_silver_bolt>*1])
  .register();

  
#spirit crafting
craftingTable.removeRecipe(<item:malum:spirit_jar>);
craftingTable.removeRecipe(<item:malum:spirit_altar>);
Recipe.type(Type.CHEMIST)
  .shaped([[<tag:items:forge:rounded_sheets/sterling_silver>, <tag:items:forge:plates/gold>, <tag:items:forge:rounded_sheets/sterling_silver>],
  [<tag:items:forge:glass_panes>, <item:minecraft:air>, <tag:items:forge:glass_panes>],
  [<tag:items:forge:glass_panes>, <tag:items:forge:glass_panes>, <tag:items:forge:glass_panes>]])
  .output(<item:malum:spirit_jar>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:sterling_silver_bolt>*2])
  .register();
Recipe.type(Type.CHEMIST)
  .shaped([[<item:minecraft:air>, <item:malum:soulstone>, <item:minecraft:air>],
  [<tag:items:forge:plates/gold>, <item:malum:runewood_planks>, <tag:items:forge:plates/gold>],
  [<item:malum:runewood_planks>, <item:malum:runewood_planks>, <item:malum:runewood_planks>]])
  .output(<item:malum:spirit_altar>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:sterling_silver_bolt>*2])
  .register();


