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

#backpacks tweak
craftingTable.removeByName("sophisticatedbackpacks:backpack");
craftingTable.removeByName("sophisticatedbackpacks:iron_backpack");
craftingTable.removeByName("sophisticatedbackpacks:gold_backpack");
craftingTable.removeByName("sophisticatedbackpacks:diamond_backpack");
smithing.removeByName("sophisticatedbackpacks:netherite_backpack");
craftingTable.removeByName("sophisticatedbackpacks:upgrade_base");

Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:string>,<item:minecraft:leather>,<item:minecraft:string>],
  [<item:minecraft:iron_ingot>,<item:ironchest:iron_chest>,<item:minecraft:iron_ingot>],
  [<item:minecraft:leather>,<item:minecraft:leather>,<item:minecraft:leather>]])
  .output(<item:sophisticatedbackpacks:backpack>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:botania:mana_string>,<item:minecraft:iron_ingot>,<item:botania:mana_string>],
  [<item:minecraft:iron_ingot>,<item:create:precision_mechanism>,<item:minecraft:iron_ingot>],
  [<item:botania:mana_string>,<item:minecraft:iron_ingot>,<item:botania:mana_string>]])
  .output(<item:sophisticatedbackpacks:upgrade_base>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 2)
  .tool(<tag:items:artisantools:type/solderer>, 2)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:rods/iron>,<tag:items:forge:rounded_sheets/iron>],
  [<tag:items:forge:plates/iron>,<item:sophisticatedbackpacks:backpack>,<tag:items:forge:plates/iron>],
  [<tag:items:forge:plates/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:plates/iron>]])
  .output(<item:sophisticatedbackpacks:iron_backpack>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/gold>,<tag:items:forge:rods/gold>,<tag:items:forge:rounded_sheets/gold>],
  [<tag:items:forge:plates/gold>,<item:sophisticatedbackpacks:iron_backpack>,<tag:items:forge:plates/gold>],
  [<tag:items:forge:plates/gold>,<tag:items:forge:plates/gold>,<tag:items:forge:plates/gold>]])
  .output(<item:sophisticatedbackpacks:gold_backpack>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:gold_bolt>*2])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/crude_steel>,<tag:items:forge:rods/crude_steel>,<tag:items:forge:rounded_sheets/crude_steel>],
  [<tag:items:forge:gems/diamond>,<item:sophisticatedbackpacks:gold_backpack>,<tag:items:forge:gems/diamond>],
  [<tag:items:forge:gems/diamond>,<item:filteredchests:huge>,<tag:items:forge:gems/diamond>]])
  .output(<item:sophisticatedbackpacks:diamond_backpack>)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .tool(<tag:items:artisantools:type/file>, 2)
  .secondary([<item:amicore:crude_steel_bolt>*2])
  .register();
