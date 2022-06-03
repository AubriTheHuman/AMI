import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.MCItemDefinition;
import mods.artisanworktables.Recipe;
import mods.artisanworktables.Type;

craftingTable.removeByName("ironchest:chests/vanilla_dirt_chest");
craftingTable.removeByName("ironchest:chests/vanilla_iron_chest");
craftingTable.removeByName("ironchest:chests/vanilla_copper_chest");
craftingTable.removeByName("ironchest:chests/copper_iron_chest");
craftingTable.removeByName("ironchest:chests/silver_gold_chest");
craftingTable.removeByName("ironchest:chests/iron_gold_chest");
craftingTable.removeByName("ironchest:chests/gold_diamond_chest");
craftingTable.removeByName("ironchest:chests/silver_diamond_chest");
craftingTable.removeByName("ironchest:chests/iron_silver_chest");
craftingTable.removeByName("ironchest:chests/copper_silver_chest");
craftingTable.removeByName("ironchest:chests/diamond_crystal_chest");
craftingTable.removeByName("ironchest:chests/diamond_obsidian_chest");
craftingTable.removeByName("ironchest:upgrades/wood_to_copper_chest_upgrade");
craftingTable.removeByName("ironchest:upgrades/wood_to_iron_chest_upgrade");
craftingTable.removeByName("ironchest:upgrades/copper_to_iron_chest_upgrade");
craftingTable.removeByName("ironchest:upgrades/copper_to_silver_chest_upgrade");
craftingTable.removeByName("ironchest:upgrades/iron_to_gold_chest_upgrade");
craftingTable.removeByName("ironchest:upgrades/silver_to_gold_chest_upgrade");
craftingTable.removeByName("ironchest:upgrades/gold_to_diamond_chest_upgrade");
craftingTable.removeByName("ironchest:upgrades/diamond_to_obsidian_chest_upgrade");
craftingTable.removeByName("ironchest:upgrades/diamond_to_crystal_chest_upgrade");

Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:plates/dirt>,<tag:items:forge:plates/dirt>,<tag:items:forge:plates/dirt>],
  [<tag:items:forge:plates/dirt>,<tag:items:forge:chests/wooden>,<tag:items:forge:plates/dirt>],
  [<tag:items:forge:plates/dirt>,<tag:items:forge:plates/dirt>,<tag:items:forge:plates/dirt>]])
  .output(<item:ironchest:dirt_chest>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/copper>,<tag:items:forge:plates/copper>,<tag:items:forge:rounded_sheets/copper>],
  [<tag:items:forge:plates/copper>,<tag:items:forge:chests/wooden>,<tag:items:forge:plates/copper>],
  [<tag:items:forge:rounded_sheets/copper>,<tag:items:forge:plates/copper>,<tag:items:forge:rounded_sheets/copper>]])
  .output(<item:ironchest:copper_chest>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:rounded_sheets/iron>],
  [<tag:items:forge:plates/iron>,<item:ironchest:copper_chest>,<tag:items:forge:plates/iron>],
  [<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:rounded_sheets/iron>]])
  .output(<item:ironchest:iron_chest>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/gold>,<tag:items:forge:plates/gold>,<tag:items:forge:rounded_sheets/gold>],
  [<tag:items:forge:plates/gold>,<item:ironchest:iron_chest>,<tag:items:forge:plates/gold>],
  [<tag:items:forge:rounded_sheets/gold>,<tag:items:forge:plates/gold>,<tag:items:forge:rounded_sheets/gold>]])
  .output(<item:ironchest:gold_chest>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:plates/diamond>,<tag:items:forge:plates/tin_brass>,<tag:items:forge:plates/diamond>],
  [<tag:items:forge:plates/tin_brass>,<item:ironchest:gold_chest>,<tag:items:forge:plates/tin_brass>],
  [<tag:items:forge:plates/diamond>,<tag:items:forge:plates/tin_brass>,<tag:items:forge:plates/diamond>]])
  .output(<item:ironchest:diamond_chest>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:plates/crying_obsidian>,<tag:items:forge:plates/crying_obsidian>,<tag:items:forge:plates/crying_obsidian>],
  [<tag:items:forge:plates/crying_obsidian>,<item:ironchest:diamond_chest>,<tag:items:forge:plates/crying_obsidian>],
  [<tag:items:forge:plates/crying_obsidian>,<tag:items:forge:plates/crying_obsidian>,<tag:items:forge:plates/crying_obsidian>]])
  .output(<item:ironchest:obsidian_chest>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<item:betterendforge:eternal_crystal>,<item:betterendforge:eternal_crystal>,<item:betterendforge:eternal_crystal>],
  [<item:betterendforge:eternal_crystal>,<item:ironchest:diamond_chest>,<item:betterendforge:eternal_crystal>],
  [<item:betterendforge:eternal_crystal>,<item:betterendforge:eternal_crystal>,<item:betterendforge:eternal_crystal>]])
  .output(<item:ironchest:crystal_chest>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();


Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/copper>,<tag:items:forge:plates/copper>,<tag:items:forge:rounded_sheets/copper>],
  [<tag:items:forge:plates/copper>,<tag:items:minecraft:planks>,<tag:items:forge:plates/copper>],
  [<tag:items:forge:rounded_sheets/copper>,<tag:items:forge:plates/copper>,<tag:items:forge:rounded_sheets/copper>]])
  .output(<item:ironchest:wood_to_copper_chest_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:rounded_sheets/iron>],
  [<tag:items:forge:plates/iron>,<tag:items:minecraft:planks>,<tag:items:forge:plates/iron>],
  [<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:rounded_sheets/iron>]])
  .output(<item:ironchest:copper_to_iron_chest_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/gold>,<tag:items:forge:plates/gold>,<tag:items:forge:rounded_sheets/gold>],
  [<tag:items:forge:plates/gold>,<tag:items:minecraft:planks>,<tag:items:forge:plates/gold>],
  [<tag:items:forge:rounded_sheets/gold>,<tag:items:forge:plates/gold>,<tag:items:forge:rounded_sheets/gold>]])
  .output(<item:ironchest:iron_to_gold_chest_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:plates/diamond>,<tag:items:forge:plates/tin_brass>,<tag:items:forge:plates/diamond>],
  [<tag:items:forge:plates/tin_brass>,<tag:items:minecraft:planks>,<tag:items:forge:plates/tin_brass>],
  [<tag:items:forge:plates/diamond>,<tag:items:forge:plates/tin_brass>,<tag:items:forge:plates/diamond>]])
  .output(<item:ironchest:gold_to_diamond_chest_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .fluid(<fluid:amicore:molten_tin_brass>*288)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:plates/crying_obsidian>,<tag:items:forge:plates/crying_obsidian>,<tag:items:forge:plates/crying_obsidian>],
  [<tag:items:forge:plates/crying_obsidian>,<tag:items:minecraft:planks>,<tag:items:forge:plates/crying_obsidian>],
  [<tag:items:forge:plates/crying_obsidian>,<tag:items:forge:plates/crying_obsidian>,<tag:items:forge:plates/crying_obsidian>]])
  .output(<item:ironchest:diamond_to_obsidian_chest_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .tool(<tag:items:artisantools:type/file>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<item:betterendforge:eternal_crystal>,<item:betterendforge:eternal_crystal>,<item:betterendforge:eternal_crystal>],
  [<item:betterendforge:eternal_crystal>,<tag:items:minecraft:planks>,<item:betterendforge:eternal_crystal>],
  [<item:betterendforge:eternal_crystal>,<item:betterendforge:eternal_crystal>,<item:betterendforge:eternal_crystal>]])
  .output(<item:ironchest:diamond_to_crystal_chest_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .tool(<tag:items:artisantools:type/file>, 1)
  .register();

#quartz chests
craftingTable.removeRecipe(<item:quartzchests:chest>);
Recipe.type(Type.BLACKSMITH)
.shaped([[<tag:items:forge:rounded_sheets/zinc>,<tag:items:minecraft:signs>,<tag:items:forge:rounded_sheets/zinc>],
[<item:minecraft:smooth_quartz>,<item:filteredchests:medium>,<item:minecraft:smooth_quartz>],
[<item:minecraft:smooth_quartz>,<item:minecraft:item_frame>,<item:minecraft:smooth_quartz>]])
  .output(<item:quartzchests:chest>)
  .tool(<tag:items:artisantools:type/file>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

#filtered chests
craftingTable.removeRecipe(<item:filteredchests:small>);
craftingTable.removeRecipe(<item:filteredchests:normal>);
craftingTable.removeRecipe(<item:filteredchests:medium>);
craftingTable.removeRecipe(<item:filteredchests:large>);
craftingTable.removeRecipe(<item:filteredchests:huge>);
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:plates/zinc>,<item:minecraft:diamond>,<item:minecraft:paper>],
  [<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:chests/wooden>,<tag:items:forge:rounded_sheets/iron>]])
  .output(<item:filteredchests:normal>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shapeless([<item:filteredchests:normal>])
  .output(<item:filteredchests:small>*3)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:rounded_sheets/iron>],
  [<tag:items:forge:plates/iron>,<item:filteredchests:normal>,<tag:items:forge:plates/iron>],
  [<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:rounded_sheets/iron>]])
  .output(<item:filteredchests:medium>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*4])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/gold>,<tag:items:forge:plates/gold>,<tag:items:forge:rounded_sheets/gold>],
  [<tag:items:forge:plates/gold>,<item:filteredchests:medium>,<tag:items:forge:plates/gold>],
  [<tag:items:forge:rounded_sheets/gold>,<tag:items:forge:plates/gold>,<tag:items:forge:rounded_sheets/gold>]])
  .output(<item:filteredchests:large>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:gold_bolt>*4])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:plates/diamond>,<tag:items:forge:plates/tin_brass>,<tag:items:forge:plates/diamond>],
  [<tag:items:forge:plates/tin_brass>,<item:filteredchests:large>,<tag:items:forge:plates/tin_brass>],
  [<tag:items:forge:plates/diamond>,<tag:items:forge:plates/tin_brass>,<tag:items:forge:plates/diamond>]])
  .output(<item:filteredchests:huge>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:tin_brass_bolt>*4])
  .register();
