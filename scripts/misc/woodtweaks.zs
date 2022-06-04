import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.SmithingManager;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.TagManagerItem;
import mods.artisanworktables.Type;
import crafttweaker.api.ILogger;
import mods.artisanworktables.Recipe;

var vanilWoods = ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak"] as string[];
var vanilStems = ["crimson", "warped"] as string[];
var enderWoods = ["mossy_glowshroom", "lacugrove", "end_lotus", "pythadendron", "dragon_tree", "tenanea", "helix_tree", "umbrella_tree", "jellyshroom", "lucernia"] as string[];
var bygWoods = ["aspen", "baobab", "blue_enchanted", "cherry", "cika", "cypress", "ebony", "ether", "fir", "green_enchanted", "holly", "jacaranda", "lament", "mahogany", "mangrove", "maple", "nightshade", "palm", "pine", "rainbow_eucalyptus", "redwood", "skyris", "willow", "witch_hazel", "zelkova"] as string[];
var tconWoods = ["greenheart", "skyroot", "bloodshroom"] as string[];
var bygStems = ["sythian", "bulbis", "imparius"] as string[];
var bygPedus = ["embur"] as string[];

craftingTable.removeRecipe(<item:minecraft:oak_sign>);
craftingTable.removeRecipe(<item:minecraft:spruce_sign>);
craftingTable.removeRecipe(<item:minecraft:dark_oak_sign>);
craftingTable.removeRecipe(<item:minecraft:birch_sign>);
craftingTable.removeRecipe(<item:minecraft:jungle_sign>);
craftingTable.removeRecipe(<item:minecraft:acacia_sign>);
craftingTable.removeRecipe(<item:minecraft:crimson_sign>);
craftingTable.removeRecipe(<item:minecraft:warped_sign>);

for wood in vanilWoods {
  craftingTable.removeByName("minecraft:" + wood + "_planks");
  craftingTable.removeByName("minecraft:" + wood + "_stairs");
  craftingTable.removeByName("minecraft:" + wood + "_slab");
  craftingTable.removeByName("minecraft:" + wood + "_door");
  craftingTable.removeByName("minecraft:" + wood + "_trapdoor");
  craftingTable.removeByName("minecraft:" + wood + "_fence");
  craftingTable.removeByName("minecraft:" + wood + "_pressure_plate");
  craftingTable.removeByName("minecraft:" + wood + "_fence_gate");
  craftingTable.removeByName("minecraft:" + wood + "_button");
  craftingTable.removeByName("quark:building/crafting/vertplanks/vertical_" + wood + "_planks");
  craftingTable.removeByName("quark:building/crafting/vertplanks/vertical_" + wood + "_planks_revert");
  craftingTable.removeByName("quark:building/crafting/vertslabs/" + wood + "_vertical_slab");
  craftingTable.removeByName("quark:building/crafting/vertslabs/" + wood + "_vertical_slab_revert");
  craftingTable.removeByName("charm:variant_chests/" + wood + "_chest");
  craftingTable.removeByName("charm:variant_chests/" + wood + "_trapped_chest");
  craftingTable.removeByName("charm:variant_barrels/" + wood + "_barrel");
  craftingTable.removeByName("charm:crates/" + wood + "_crate");
  craftingTable.removeByName("quark:building/crafting/" + wood + "_ladder");
  craftingTable.removeByName("quark:building/crafting/" + wood + "_post");
  craftingTable.removeByName("quark:building/crafting/stripped_" + wood + "_post");
  craftingTable.removeByName("charm:bookcases/" + wood + "_bookcase");
  craftingTable.removeByName("quark:building/crafting/" + wood + "_bookshelf");


  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:stripped_" + wood + "_wood")],
    [BracketHandlers.getItem("minecraft:stripped_" + wood + "_wood")],
    [BracketHandlers.getItem("minecraft:stripped_" + wood + "_wood")]])
    .output(BracketHandlers.getItem("quark:stripped_" + wood + "_post"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_stripped_post_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_wood")],
    [BracketHandlers.getItem("minecraft:" + wood + "_wood")],
    [BracketHandlers.getItem("minecraft:" + wood + "_wood")]])
    .output(BracketHandlers.getItem("quark:" + wood + "_post"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_post_carpenter");

  if(wood == "oak") {
    Recipe.type(Type.CARPENTER)
      .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")],
      [<item:minecraft:book>, <item:minecraft:book>, <item:minecraft:book>],
      [BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
      .output(BracketHandlers.getItem("minecraft:bookshelf"))
      .tool(<tag:items:artisantools:type/handsaw>, 1)
      .extra(<item:immersiveengineering:dust_wood>, 0.05)
      .register(wood + "_bookshelf_carpenter");
    Recipe.type(Type.CARPENTER)
      .shaped([[<item:minecraft:stick>,<item:minecraft:air>,<item:minecraft:stick>],
      [<item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>],
      [<item:minecraft:stick>,<item:minecraft:air>,<item:minecraft:stick>]])
      .output(BracketHandlers.getItem("minecraft:ladder")*4)
      .tool(<tag:items:artisantools:type/handsaw>, 1)
      .extra(<item:immersiveengineering:dust_wood>, 0.05)
      .register(wood + "_ladder_carpenter");
    Recipe.type(Type.CARPENTER)
      .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")],
      [BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:bookshelf>, BracketHandlers.getItem("minecraft:" + wood + "_planks")],
      [BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
      .output(BracketHandlers.getItem("charm:" + wood + "_bookcase"))
      .tool(<tag:items:artisantools:type/handsaw>, 1)
      .extra(<item:immersiveengineering:dust_wood>, 0.05)
      .register(wood + "_bookcase_carpenter");
  } else {
    craftingTable.removeByName("charm:bookcases/" + wood + "_bookcase_with_quark");
    Recipe.type(Type.CARPENTER)
      .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")],
      [<item:minecraft:book>, <item:minecraft:book>, <item:minecraft:book>],
      [BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
      .output(BracketHandlers.getItem("quark:" + wood + "_bookshelf"))
      .tool(<tag:items:artisantools:type/handsaw>, 1)
      .extra(<item:immersiveengineering:dust_wood>, 0.05)
      .register(wood + "_bookshelf_carpenter");
    Recipe.type(Type.CARPENTER)
      .shaped([[<item:minecraft:stick>,<item:minecraft:air>,<item:minecraft:stick>],
      [<item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>],
      [<item:minecraft:stick>,<item:minecraft:air>,<item:minecraft:stick>]])
      .output(BracketHandlers.getItem("quark:" + wood + "_ladder")*4)
      .tool(<tag:items:artisantools:type/handsaw>, 1)
      .extra(<item:immersiveengineering:dust_wood>, 0.05)
      .register(wood + "_ladder_carpenter");
    Recipe.type(Type.CARPENTER)
      .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")],
      [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("quark:" + wood + "_bookshelf"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
      [BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
      .output(BracketHandlers.getItem("charm:" + wood + "_bookcase"))
      .tool(<tag:items:artisantools:type/handsaw>, 1)
      .extra(<item:immersiveengineering:dust_wood>, 0.05)
      .register(wood + "_bookcase_carpenter");
      }

  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:air>, BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("charm:" + wood + "_chest"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_chest_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_slab"),BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:air>, BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_slab"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("charm:" + wood + "_barrel"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_barrel_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[<tag:items:forge:rounded_sheets/iron>, BracketHandlers.getItem("minecraft:" + wood + "_slab"),<tag:items:forge:rounded_sheets/iron>],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:air>, BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [<tag:items:forge:rounded_sheets/iron>,BracketHandlers.getItem("minecraft:" + wood + "_slab"),<tag:items:forge:rounded_sheets/iron>]])
    .output(BracketHandlers.getItem("charm:" + wood + "_crate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_crate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shapeless([BracketHandlers.getItem("charm:" + wood + "_chest"), <item:minecraft:tripwire_hook>])
    .output(BracketHandlers.getItem("charm:" + wood + "_trapped_chest"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_trapped_chest_carpenter");

  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("quark:vertical_" + wood + "_planks")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_vertical_planks_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_slab")],
    [BracketHandlers.getItem("minecraft:" + wood + "_slab")],
    [BracketHandlers.getItem("minecraft:" + wood + "_slab")]])
    .output(BracketHandlers.getItem("quark:" + wood + "_vertical_slab")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_vertical_slab_carpenter");

  craftingTable.addShapeless(wood + "_planks", BracketHandlers.getItem("minecraft:" + wood + "_planks")*2, [<tagManager:items>.getTag("minecraft:" + wood + "_logs")]);

  Recipe.type(Type.CARPENTER)
    .shapeless([<tagManager:items>.getTag("minecraft:" + wood + "_logs")])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_planks")*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_planks_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:air>, <item:minecraft:air>],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:air>],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_stairs")*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_stairs_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_slab")*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_slab_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_door")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_door_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_trapdoor")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_trapdoor_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_fence")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[<item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>],
    [<item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_fence_gate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_gate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shapeless([BracketHandlers.getItem("minecraft:" + wood + "_planks")])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_button")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_button_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_pressure_plate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_pressure_plate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_sign")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_sign_carpenter");
}

for wood in vanilStems {
  craftingTable.removeByName("minecraft:" + wood + "_planks");
  craftingTable.removeByName("minecraft:" + wood + "_stairs");
  craftingTable.removeByName("minecraft:" + wood + "_slab");
  craftingTable.removeByName("minecraft:" + wood + "_door");
  craftingTable.removeByName("minecraft:" + wood + "_trapdoor");
  craftingTable.removeByName("minecraft:" + wood + "_fence");
  craftingTable.removeByName("minecraft:" + wood + "_pressure_plate");
  craftingTable.removeByName("minecraft:" + wood + "_fence_gate");
  craftingTable.removeByName("minecraft:" + wood + "_button");
  craftingTable.removeByName("quark:building/crafting/vertplanks/vertical_" + wood + "_planks");
  craftingTable.removeByName("quark:building/crafting/vertplanks/vertical_" + wood + "_planks_revert");
  craftingTable.removeByName("quark:building/crafting/vertslabs/" + wood + "_vertical_slab");
  craftingTable.removeByName("quark:building/crafting/vertslabs/" + wood + "_vertical_slab_revert");
  craftingTable.removeByName("charm:variant_chests/" + wood + "_chest");
  craftingTable.removeByName("charm:variant_chests/" + wood + "_trapped_chest");
  craftingTable.removeByName("charm:variant_barrels/" + wood + "_barrel");
  craftingTable.removeByName("charm:crates/" + wood + "_crate");
  craftingTable.removeByName("quark:building/crafting/" + wood + "_ladder");
  craftingTable.removeByName("quark:building/crafting/" + wood + "_post");
  craftingTable.removeByName("quark:building/crafting/stripped_" + wood + "_post");
  craftingTable.removeByName("charm:bookcases/" + wood + "_bookcase");
  craftingTable.removeByName("charm:bookcases/" + wood + "_bookcase_with_quark");


  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:stripped_" + wood + "_hyphae")],
    [BracketHandlers.getItem("minecraft:stripped_" + wood + "_hyphae")],
    [BracketHandlers.getItem("minecraft:stripped_" + wood + "_hyphae")]])
    .output(BracketHandlers.getItem("quark:stripped_" + wood + "_post"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_stripped_post_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_hyphae")],
    [BracketHandlers.getItem("minecraft:" + wood + "_hyphae")],
    [BracketHandlers.getItem("minecraft:" + wood + "_hyphae")]])
    .output(BracketHandlers.getItem("quark:" + wood + "_post"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_post_carpenter");

  craftingTable.removeByName("quark:building/crafting/" + wood + "_bookshelf");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [<item:minecraft:book>, <item:minecraft:book>, <item:minecraft:book>],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("quark:" + wood + "_bookshelf"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_bookshelf_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[<item:minecraft:stick>,<item:minecraft:air>,<item:minecraft:stick>],
    [<item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>],
    [<item:minecraft:stick>,<item:minecraft:air>,<item:minecraft:stick>]])
    .output(BracketHandlers.getItem("quark:" + wood + "_ladder")*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_ladder_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("quark:" + wood + "_bookshelf"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("charm:" + wood + "_bookcase"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_bookcase_carpenter");


  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:air>, BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("charm:" + wood + "_chest"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_chest_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_slab"),BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:air>, BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_slab"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("charm:" + wood + "_barrel"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_barrel_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[<tag:items:forge:rounded_sheets/iron>, BracketHandlers.getItem("minecraft:" + wood + "_slab"),<tag:items:forge:rounded_sheets/iron>],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:air>, BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [<tag:items:forge:rounded_sheets/iron>,BracketHandlers.getItem("minecraft:" + wood + "_slab"),<tag:items:forge:rounded_sheets/iron>]])
    .output(BracketHandlers.getItem("charm:" + wood + "_crate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_crate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shapeless([BracketHandlers.getItem("charm:" + wood + "_chest"), <item:minecraft:tripwire_hook>])
    .output(BracketHandlers.getItem("charm:" + wood + "_trapped_chest"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_trapped_chest_carpenter");

  craftingTable.addShapeless(wood + "_planks", BracketHandlers.getItem("minecraft:" + wood + "_planks")*2, [<tagManager:items>.getTag("minecraft:" + wood + "_stems")]);

  Recipe.type(Type.CARPENTER)
    .shapeless([<tagManager:items>.getTag("minecraft:" + wood + "_stems")])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_planks")*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_planks_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:air>, <item:minecraft:air>],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:air>],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_stairs")*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_stairs_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_slab")*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_slab_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_door")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_door_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_trapdoor")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_trapdoor_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_fence")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[<item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>],
    [<item:minecraft:stick>, BracketHandlers.getItem("minecraft:" + wood + "_planks"), <item:minecraft:stick>]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_fence_gate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_gate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shapeless([BracketHandlers.getItem("minecraft:" + wood + "_planks")])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_button")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_button_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"),BracketHandlers.getItem("minecraft:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_pressure_plate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_pressure_plate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks"), BracketHandlers.getItem("minecraft:" + wood + "_planks")],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]])
    .output(BracketHandlers.getItem("minecraft:" + wood + "_sign")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_sign_carpenter");
}

for wood in enderWoods {
  craftingTable.removeByName("betterendforge:" + wood + "_planks");
  craftingTable.removeByName("betterendforge:" + wood + "_stairs");
  craftingTable.removeByName("betterendforge:" + wood + "_slab");
  craftingTable.removeByName("betterendforge:" + wood + "_door");
  craftingTable.removeByName("betterendforge:" + wood + "_trapdoor");
  craftingTable.removeByName("betterendforge:" + wood + "_fence");
  craftingTable.removeByName("betterendforge:" + wood + "_sign");
  craftingTable.removeByName("betterendforge:" + wood + "_pressure_plate");
  craftingTable.removeByName("betterendforge:" + wood + "_gate");
  craftingTable.removeByName("betterendforge:" + wood + "_button");
  craftingTable.removeByName("betterendforge:" + wood + "_bookshelf");

  craftingTable.addShapeless(wood + "_planks", BracketHandlers.getItem("betterendforge:" + wood + "_planks")*2, [<tagManager:items>.getTag("betterendforge:" + wood + "_logs")]);

  Recipe.type(Type.CARPENTER)
    .shapeless([<tagManager:items>.getTag("betterendforge:" + wood + "_logs")])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_planks")*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_planks_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("betterendforge:" + wood + "_planks"), <item:minecraft:air>, <item:minecraft:air>],
    [BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks"), <item:minecraft:air>],
    [BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_stairs")*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_stairs_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_slab")*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_slab_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks")],
    [BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks")],
    [BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_door")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_door_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks")],
    [BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_trapdoor")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_trapdoor_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("betterendforge:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("betterendforge:" + wood + "_planks")],
    [BracketHandlers.getItem("betterendforge:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("betterendforge:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_fence")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[<item:minecraft:stick>, BracketHandlers.getItem("betterendforge:" + wood + "_planks"), <item:minecraft:stick>],
    [<item:minecraft:stick>, BracketHandlers.getItem("betterendforge:" + wood + "_planks"), <item:minecraft:stick>]])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_gate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_gate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shapeless([BracketHandlers.getItem("betterendforge:" + wood + "_planks")])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_button")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_button_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("betterendforge:" + wood + "_planks"),BracketHandlers.getItem("betterendforge:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_pressure_plate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_pressure_plate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks")],
    [BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks")],
    [<item:minecraft:air>, <item:minecraft:stick>, <item:minecraft:air>]])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_sign")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_sign_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks"),BracketHandlers.getItem("betterendforge:" + wood + "_planks")],
    [<item:minecraft:book>,<item:minecraft:book>,<item:minecraft:book>],
    [BracketHandlers.getItem("betterendforge:" + wood + "_planks"), BracketHandlers.getItem("betterendforge:" + wood + "_planks"),BracketHandlers.getItem("betterendforge:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("betterendforge:" + wood + "_bookshelf"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_bookshelf_carpenter");
}

for wood in bygWoods {
  craftingTable.removeByName("byg:" + wood + "_planks");

  if("byg:" + wood + "_stairs" == "byg:cika_stairs") {
    craftingTable.removeByName("byg:cika_cherry");
  } else {
    craftingTable.removeByName("byg:" + wood + "_stairs");
  }

  craftingTable.removeByName("byg:" + wood + "_slab");

  if("byg:" + wood + "_door" == "byg:rainbow_eucalyptus_door" || "byg:" + wood + "_door" == "byg:green_enchanted_door") {
    if("byg:" + wood + "_door" == "byg:rainbow_eucalyptus_door") {
      craftingTable.removeByName("byg:rainbow_eucalpytus_door");
    } else {
      craftingTable.removeByName("byg:green_enchanted_door_door");
    }
  } else {
    craftingTable.removeByName("byg:" + wood + "_door");
  }

  if("byg:" + wood + "_trapdoor" == "byg:rainbow_eucalyptus_trapdoor") {
    craftingTable.removeByName("byg:rainbow_eucalpytus_trapdoor");
  } else {
    craftingTable.removeByName("byg:" + wood + "_trapdoor");
  }

  craftingTable.removeByName("byg:" + wood + "_fence");
  craftingTable.removeByName("byg:" + wood + "_pressure_plate");
  craftingTable.removeByName("byg:" + wood + "_fence_gate");
  craftingTable.removeByName("byg:" + wood + "_button");

  if("byg:" + wood + "_bookshelf" == "byg:jacaranda_bookshelf") {
    craftingTable.removeByName("byg:jacaranda_boookshelf");
  } else {
    craftingTable.removeByName("byg:" + wood + "_bookshelf");
  }

  craftingTable.addShapeless(wood + "_planks", BracketHandlers.getItem("byg:" + wood + "_planks")*2, [<tagManager:items>.getTag("byg:" + wood + "_logs")]);

  Recipe.type(Type.CARPENTER)
    .shapeless([<tagManager:items>.getTag("byg:" + wood + "_logs")])
    .output(BracketHandlers.getItem("byg:" + wood + "_planks")*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_planks_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:air>, <item:minecraft:air>],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:air>],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_stairs")*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_stairs_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_slab")*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_slab_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_door")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_door_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_trapdoor")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_trapdoor_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_fence")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[<item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>],
    [<item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>]])
    .output(BracketHandlers.getItem("byg:" + wood + "_fence_gate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_gate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shapeless([BracketHandlers.getItem("byg:" + wood + "_planks")])
    .output(BracketHandlers.getItem("byg:" + wood + "_button")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_button_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"),BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_pressure_plate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_pressure_plate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"),BracketHandlers.getItem("byg:" + wood + "_planks")],
    [<item:minecraft:book>,<item:minecraft:book>,<item:minecraft:book>],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"),BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_bookshelf"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_bookshelf_carpenter");

}

for wood in bygPedus {
  craftingTable.removeByName("byg:" + wood + "_planks");
  craftingTable.removeByName("byg:" + wood + "_stairs");
  craftingTable.removeByName("byg:" + wood + "_slab");
  craftingTable.removeByName("byg:" + wood + "_door");
  craftingTable.removeByName("byg:" + wood + "_trapdoor");
  craftingTable.removeByName("byg:" + wood + "_fence");
  craftingTable.removeByName("byg:" + wood + "_pressure_plate");
  craftingTable.removeByName("byg:" + wood + "_fence_gate");
  craftingTable.removeByName("byg:" + wood + "_button");
  craftingTable.removeByName("byg:" + wood + "_bookshelf");

  craftingTable.addShapeless(wood + "_planks", BracketHandlers.getItem("byg:" + wood + "_planks")*2, [<tagManager:items>.getTag("byg:" + wood + "_pedus")]);


  Recipe.type(Type.CARPENTER)
    .shapeless([<tagManager:items>.getTag("byg:" + wood + "_pedus")])
    .output(BracketHandlers.getItem("byg:" + wood + "_planks")*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_planks_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:air>, <item:minecraft:air>],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:air>],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_stairs")*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_stairs_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_slab")*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_slab_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_door")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_door_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_trapdoor")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_trapdoor_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_fence")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[<item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>],
    [<item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>]])
    .output(BracketHandlers.getItem("byg:" + wood + "_fence_gate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_gate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shapeless([BracketHandlers.getItem("byg:" + wood + "_planks")])
    .output(BracketHandlers.getItem("byg:" + wood + "_button")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_button_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"),BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_pressure_plate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_pressure_plate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"),BracketHandlers.getItem("byg:" + wood + "_planks")],
    [<item:minecraft:book>,<item:minecraft:book>,<item:minecraft:book>],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"),BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_bookshelf"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_bookshelf_carpenter");

}

for wood in bygStems {
craftingTable.removeByName("byg:" + wood + "_planks");
craftingTable.removeByName("byg:" + wood + "_stairs");
craftingTable.removeByName("byg:" + wood + "_slab");
craftingTable.removeByName("byg:" + wood + "_door");
craftingTable.removeByName("byg:" + wood + "_trapdoor");
craftingTable.removeByName("byg:" + wood + "_fence");
craftingTable.removeByName("byg:" + wood + "_pressure_plate");
craftingTable.removeByName("byg:" + wood + "_fence_gate");
craftingTable.removeByName("byg:" + wood + "_button");
craftingTable.removeByName("byg:" + wood + "_bookshelf");

  craftingTable.addShapeless(wood + "_planks", BracketHandlers.getItem("byg:" + wood + "_planks")*2, [<tagManager:items>.getTag("byg:" + wood + "_stems")]);

  Recipe.type(Type.CARPENTER)
    .shapeless([<tagManager:items>.getTag("byg:" + wood + "_stems")])
    .output(BracketHandlers.getItem("byg:" + wood + "_planks")*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_planks_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:air>, <item:minecraft:air>],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:air>],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_stairs")*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_stairs_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_slab")*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_slab_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_door")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_door_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_trapdoor")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_trapdoor_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks")],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_fence")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[<item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>],
    [<item:minecraft:stick>, BracketHandlers.getItem("byg:" + wood + "_planks"), <item:minecraft:stick>]])
    .output(BracketHandlers.getItem("byg:" + wood + "_fence_gate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_gate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shapeless([BracketHandlers.getItem("byg:" + wood + "_planks")])
    .output(BracketHandlers.getItem("byg:" + wood + "_button")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_button_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"),BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_pressure_plate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_pressure_plate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"),BracketHandlers.getItem("byg:" + wood + "_planks")],
    [<item:minecraft:book>,<item:minecraft:book>,<item:minecraft:book>],
    [BracketHandlers.getItem("byg:" + wood + "_planks"), BracketHandlers.getItem("byg:" + wood + "_planks"),BracketHandlers.getItem("byg:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("byg:" + wood + "_bookshelf"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_bookshelf_carpenter");

}

for wood in tconWoods {
  craftingTable.removeByName("tconstruct:world/wood/" + wood + "/planks");
  craftingTable.removeByName("tconstruct:world/wood/" + wood + "/stairs");
  craftingTable.removeByName("tconstruct:world/wood/" + wood + "/slab");
  craftingTable.removeByName("tconstruct:world/wood/" + wood + "/door");
  craftingTable.removeByName("tconstruct:world/wood/" + wood + "/trapdoor");
  craftingTable.removeByName("tconstruct:world/wood/" + wood + "/fence");
  craftingTable.removeByName("tconstruct:world/wood/" + wood + "/pressure_plate");
  craftingTable.removeByName("tconstruct:world/wood/" + wood + "/fence_gate");
  craftingTable.removeByName("tconstruct:world/wood/" + wood + "/button");

  craftingTable.addShapeless(wood + "_planks", BracketHandlers.getItem("tconstruct:" + wood + "_planks")*2, [<tagManager:items>.getTag("tconstruct:" + wood + "_logs")]);

  Recipe.type(Type.CARPENTER)
    .shapeless([<tagManager:items>.getTag("tconstruct:" + wood + "_logs")])
    .output(BracketHandlers.getItem("tconstruct:" + wood + "_planks")*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_planks_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("tconstruct:" + wood + "_planks"), <item:minecraft:air>, <item:minecraft:air>],
    [BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks"), <item:minecraft:air>],
    [BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("tconstruct:" + wood + "_planks_stairs")*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_stairs_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("tconstruct:" + wood + "_planks_slab")*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_slab_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks")],
    [BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks")],
    [BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("tconstruct:" + wood + "_door")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_door_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks")],
    [BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks"), BracketHandlers.getItem("tconstruct:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("tconstruct:" + wood + "_trapdoor")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_trapdoor_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("tconstruct:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("tconstruct:" + wood + "_planks")],
    [BracketHandlers.getItem("tconstruct:" + wood + "_planks"), <item:minecraft:stick>, BracketHandlers.getItem("tconstruct:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("tconstruct:" + wood + "_fence")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[<item:minecraft:stick>, BracketHandlers.getItem("tconstruct:" + wood + "_planks"), <item:minecraft:stick>],
    [<item:minecraft:stick>, BracketHandlers.getItem("tconstruct:" + wood + "_planks"), <item:minecraft:stick>]])
    .output(BracketHandlers.getItem("tconstruct:" + wood + "_fence_gate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_fence_gate_carpenter");
  Recipe.type(Type.CARPENTER)
    .shapeless([BracketHandlers.getItem("tconstruct:" + wood + "_planks")])
    .output(BracketHandlers.getItem("tconstruct:" + wood + "_button")*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_button_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("tconstruct:" + wood + "_planks"),BracketHandlers.getItem("tconstruct:" + wood + "_planks")]])
    .output(BracketHandlers.getItem("tconstruct:" + wood + "_pressure_plate"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(wood + "_pressure_plate_carpenter");
}

#sticks and wood bolts
craftingTable.removeRecipe(<item:minecraft:stick>);
craftingTable.addShapeless("stick_block_to_sticks", <item:minecraft:stick>*9, [<item:quark:stick_block>]);
craftingTable.addShaped("sticks_to_stick_block", <item:quark:stick_block>,
    [[<item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>],
    [<item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>],
    [<item:minecraft:stick>,<item:minecraft:stick>,<item:minecraft:stick>]]);
craftingTable.addShaped("sticks_limited", <item:minecraft:stick>*2,
    [[<tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>]]);
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>]])
  .output(<item:minecraft:stick>*4)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .extra(<item:immersiveengineering:dust_wood>, 0.05)
  .register("sticks_carpenter");
craftingTable.addShapeless("wooden_bolt", <item:amicore:wooden_bolt>, [<item:minecraft:stick>]);
Recipe.type(Type.CARPENTER)
  .shapeless([<item:minecraft:stick>])
  .output(<item:amicore:wooden_bolt>*4)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .extra(<item:immersiveengineering:dust_wood>, 0.05)
  .register("bolt_carpenter");

var colors = ["red", "orange", "yellow", "lime", "green", "light_blue", "cyan", "blue", "magenta", "purple", "pink", "brown", "gray", "light_gray", "black", "white"] as string[];
#quark dying
for color in colors {
  craftingTable.removeByName("quark:building/crafting/" + color + "_stained_planks");
  craftingTable.removeByName("quark:building/crafting/slabs/" + color + "_stained_planks_slab");
  craftingTable.removeByName("quark:building/crafting/stairs/" + color + "_stained_planks_stairs");
  craftingTable.removeByName("quark:building/crafting/vertslabs/" + color + "_stained_planks_vertical_slab");
  craftingTable.removeByName("quark:building/crafting/vertslabs/" + color + "_stained_planks_vertical_slab_revert");
  craftingTable.removeByName("quark:building/crafting/vertplanks/vertical_" + color + "_stained_planks");
  craftingTable.removeByName("quark:building/crafting/vertplanks/vertical_" + color + "_stained_planks_revert");

  Recipe.type(Type.CARPENTER)
    .shapeless([<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tagManager:items>.getTag("forge:dyes/" + color)])
    .output(BracketHandlers.getItem("quark:" + color + "_stained_planks")*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .tool(<tag:items:artisantools:type/mortar>, 1)
    .register(color + "_stained_planks_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("quark:" + color + "_stained_planks")],
    [BracketHandlers.getItem("quark:" + color + "_stained_planks")],
    [BracketHandlers.getItem("quark:" + color + "_stained_planks")]])
    .output(BracketHandlers.getItem("quark:vertical_" + color + "_stained_planks")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(color + "_stained_vertical_planks_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("quark:" + color + "_stained_planks_slab")],
    [BracketHandlers.getItem("quark:" + color + "_stained_planks_slab")],
    [BracketHandlers.getItem("quark:" + color + "_stained_planks_slab")]])
    .output(BracketHandlers.getItem("quark:" + color + "_stained_planks_vertical_slab")*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(color + "_stained_vertical_slab_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("quark:" + color + "_stained_planks"), <item:minecraft:air>, <item:minecraft:air>],
    [BracketHandlers.getItem("quark:" + color + "_stained_planks"), BracketHandlers.getItem("quark:" + color + "_stained_planks"), <item:minecraft:air>],
    [BracketHandlers.getItem("quark:" + color + "_stained_planks"), BracketHandlers.getItem("quark:" + color + "_stained_planks"), BracketHandlers.getItem("quark:" + color + "_stained_planks")]])
    .output(BracketHandlers.getItem("quark:" + color + "_stained_planks_stairs")*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(color + "_stained_planks_stairs_carpenter");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("quark:" + color + "_stained_planks"), BracketHandlers.getItem("quark:" + color + "_stained_planks"), BracketHandlers.getItem("quark:" + color + "_stained_planks")]])
    .output(BracketHandlers.getItem("quark:" + color + "_stained_planks_slab")*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register(color + "_stained_planks_slab_carpenter");
}

#trough and nest
craftingTable.removeRecipe(<item:farmingforblockheads:feeding_trough>);
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:forge:rounded_sheets/iron>, <tag:items:forge:coils/gold>, <tag:items:forge:rounded_sheets/iron>],
  [<tag:items:minecraft:planks>, <item:minecraft:golden_carrot>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <item:minecraft:hay_block>, <tag:items:minecraft:planks>]])
  .output(<item:farmingforblockheads:feeding_trough>)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .extra(<item:immersiveengineering:dust_wood>, 0.05)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register("feeding_trough");
craftingTable.removeRecipe(<item:farmingforblockheads:chicken_nest>);
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:forge:rounded_sheets/iron>, <tag:items:forge:coils/copper>, <tag:items:forge:rounded_sheets/iron>],
  [<tag:items:minecraft:planks>, <item:minecraft:hay_block>, <tag:items:minecraft:planks>]])
  .output(<item:farmingforblockheads:chicken_nest>)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .extra(<item:immersiveengineering:dust_wood>, 0.05)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register("chicken_nest");

#astikor
craftingTable.removeRecipe(<item:astikorcarts:wheel>);
craftingTable.removeRecipe(<item:astikorcarts:supply_cart>);
craftingTable.removeRecipe(<item:astikorcarts:animal_cart>);
craftingTable.removeRecipe(<item:astikorcarts:plow>);
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:forge:rods/iron>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]])
  .output(<item:astikorcarts:wheel>)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .extra(<item:immersiveengineering:dust_wood>, 0.05)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:iron_bolt>])
  .register("astikor_wheel");
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:minecraft:planks>, <tag:items:forge:chests/wooden>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:forge:chests/wooden>, <tag:items:minecraft:planks>],
  [<item:astikorcarts:wheel>, <tag:items:forge:rods/iron>, <item:astikorcarts:wheel>]])
  .output(<item:astikorcarts:supply_cart>)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .extra(<item:immersiveengineering:dust_wood>, 0.05)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .register("astikor_supply");
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
  [<item:astikorcarts:wheel>, <tag:items:forge:rods/iron>, <item:astikorcarts:wheel>]])
  .output(<item:astikorcarts:animal_cart>)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .extra(<item:immersiveengineering:dust_wood>, 0.05)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .register("astikor_animal");
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
  [<tag:items:minecraft:planks>, <item:minecraft:stick>, <tag:items:minecraft:planks>],
  [<item:astikorcarts:wheel>, <tag:items:forge:rods/iron>, <item:astikorcarts:wheel>]])
  .output(<item:astikorcarts:plow>)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .extra(<item:immersiveengineering:dust_wood>, 0.05)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .register("astikor_plow");


#malum runewood
craftingTable.removeRecipe(<item:malum:runewood_planks>);
craftingTable.removeRecipe(<item:malum:vertical_runewood_planks>);
craftingTable.removeRecipe(<item:malum:bolted_runewood_planks>);
craftingTable.removeRecipe(<item:malum:runewood_panel>);
craftingTable.removeRecipe(<item:malum:runewood_tiles>);
craftingTable.addShapeless("runewood_planks", <item:malum:runewood_planks>*2, [<item:malum:runewood_log>]);
Recipe.type(Type.CARPENTER)
    .shapeless([<item:malum:runewood_log>])
    .output(<item:malum:runewood_planks>*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_planks_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_planks>],
    [<item:malum:runewood_planks>],
    [<item:malum:runewood_planks>]])
    .output(<item:malum:vertical_runewood_planks>*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_vert_planks_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>],
    [<item:malum:runewood_planks>,<tag:items:forge:bolts/iron>,<item:malum:runewood_planks>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>]])
    .output(<item:malum:bolted_runewood_planks>*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_bolt_planks_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>]])
    .output(<item:malum:runewood_panel>*9)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_panel_planks_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_panel>,<item:malum:runewood_panel>],
    [<item:malum:runewood_panel>,<item:malum:runewood_panel>]])
    .output(<item:malum:runewood_tiles>*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_tiles_planks_carpenter");

craftingTable.removeRecipe(<item:malum:runewood_planks_slab>);
craftingTable.removeRecipe(<item:malum:vertical_runewood_planks_slab>);
craftingTable.removeRecipe(<item:malum:bolted_runewood_planks_slab>);
craftingTable.removeRecipe(<item:malum:runewood_panel_slab>);
craftingTable.removeRecipe(<item:malum:runewood_tiles_slab>);
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>]])
    .output(<item:malum:runewood_planks_slab>*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_planks_slab_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:vertical_runewood_planks>,<item:malum:vertical_runewood_planks>,<item:malum:vertical_runewood_planks>]])
    .output(<item:malum:vertical_runewood_planks_slab>*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("vertical_runewood_planks_slab_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:bolted_runewood_planks>,<item:malum:bolted_runewood_planks>,<item:malum:bolted_runewood_planks>]])
    .output(<item:malum:bolted_runewood_planks_slab>*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("bolted_runewood_planks_slab_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_panel>,<item:malum:runewood_panel>,<item:malum:runewood_panel>]])
    .output(<item:malum:runewood_panel_slab>*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_panel_slab_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_tiles>,<item:malum:runewood_tiles>,<item:malum:runewood_tiles>]])
    .output(<item:malum:runewood_tiles_slab>*6)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_tiles_slab_carpenter");
    
craftingTable.removeRecipe(<item:malum:runewood_planks_stairs>);
craftingTable.removeRecipe(<item:malum:vertical_runewood_planks_stairs>);
craftingTable.removeRecipe(<item:malum:bolted_runewood_planks_stairs>);
craftingTable.removeRecipe(<item:malum:runewood_panel_stairs>);
craftingTable.removeRecipe(<item:malum:runewood_tiles_stairs>);
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_planks>,<item:minecraft:air>,<item:minecraft:air>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:minecraft:air>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>]])
    .output(<item:malum:runewood_planks_stairs>*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_planks_stairs_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:vertical_runewood_planks>,<item:minecraft:air>,<item:minecraft:air>],
    [<item:malum:vertical_runewood_planks>,<item:malum:vertical_runewood_planks>,<item:minecraft:air>],
    [<item:malum:vertical_runewood_planks>,<item:malum:vertical_runewood_planks>,<item:malum:vertical_runewood_planks>]])
    .output(<item:malum:vertical_runewood_planks_stairs>*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("vertical_runewood_planks_stairs_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:bolted_runewood_planks>,<item:minecraft:air>,<item:minecraft:air>],
    [<item:malum:bolted_runewood_planks>,<item:malum:bolted_runewood_planks>,<item:minecraft:air>],
    [<item:malum:bolted_runewood_planks>,<item:malum:bolted_runewood_planks>,<item:malum:bolted_runewood_planks>]])
    .output(<item:malum:bolted_runewood_planks_stairs>*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("bolted_runewood_planks_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_panel>,<item:minecraft:air>,<item:minecraft:air>],
    [<item:malum:runewood_panel>,<item:malum:runewood_panel>,<item:minecraft:air>],
    [<item:malum:runewood_panel>,<item:malum:runewood_panel>,<item:malum:runewood_panel>]])
    .output(<item:malum:runewood_panel_stairs>*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_panel_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_tiles>,<item:minecraft:air>,<item:minecraft:air>],
    [<item:malum:runewood_tiles>,<item:malum:runewood_tiles>,<item:minecraft:air>],
    [<item:malum:runewood_tiles>,<item:malum:runewood_tiles>,<item:malum:runewood_tiles>]])
    .output(<item:malum:runewood_tiles_stairs>*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_tiles_carpenter");

craftingTable.removeRecipe(<item:malum:cut_runewood_planks>);
craftingTable.removeRecipe(<item:malum:runewood_beam>);
craftingTable.removeRecipe(<item:malum:bolted_runewood_beam>);
craftingTable.removeRecipe(<item:malum:runewood_door>);
craftingTable.removeRecipe(<item:malum:runewood_trapdoor>);
craftingTable.removeRecipe(<item:malum:solid_runewood_trapdoor>);
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_panel>,<item:malum:runewood_panel>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>]])
    .output(<item:malum:cut_runewood_planks>*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("cut_runewood_tiles_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:vertical_runewood_planks>],
    [<item:malum:vertical_runewood_planks>],
    [<item:malum:vertical_runewood_planks>]])
    .output(<item:malum:runewood_beam>*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_beam_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_beam>,<item:malum:runewood_beam>,<item:malum:runewood_beam>],
    [<item:malum:runewood_beam>,<tag:items:forge:bolts/iron>,<item:malum:runewood_beam>],
    [<item:malum:runewood_beam>,<item:malum:runewood_beam>,<item:malum:runewood_beam>]])
    .output(<item:malum:bolted_runewood_beam>*8)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_bolt_beam_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_planks>,<item:malum:runewood_planks>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>]])
    .output(<item:malum:runewood_door>*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_door_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>]])
    .output(<item:malum:runewood_trapdoor>*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_trapdoor_carpenter");
Recipe.type(Type.CARPENTER)
    .shapeless([<item:malum:runewood_trapdoor>])
    .output(<item:malum:solid_runewood_trapdoor>)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("solid_runewood_trapdoor_carpenter");


craftingTable.removeRecipe(<item:malum:runewood_planks_button>);
craftingTable.removeRecipe(<item:malum:runewood_planks_pressure_plate>);
craftingTable.removeRecipe(<item:malum:runewood_planks_fence>);
craftingTable.removeRecipe(<item:malum:runewood_planks_fence_gate>);
craftingTable.removeRecipe(<item:malum:runewood_item_stand>);
craftingTable.removeRecipe(<item:malum:runewood_item_pedestal>);
Recipe.type(Type.CARPENTER)
    .shapeless([<item:malum:runewood_planks>])
    .output(<item:malum:runewood_planks_button>)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_planks_button_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_planks>,<item:malum:runewood_planks>]])
    .output(<item:malum:runewood_planks_pressure_plate>)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_planks_pressure_plate_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:malum:runewood_planks>,<item:minecraft:stick>,<item:malum:runewood_planks>],
    [<item:malum:runewood_planks>,<item:minecraft:stick>,<item:malum:runewood_planks>]])
    .output(<item:malum:runewood_planks_fence>*3)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_planks_fence_carpenter");
Recipe.type(Type.CARPENTER)
    .shaped([[<item:minecraft:stick>,<item:malum:runewood_planks>,<item:minecraft:stick>],
    [<item:minecraft:stick>,<item:malum:runewood_planks>,<item:minecraft:stick>]])
    .output(<item:malum:runewood_planks_fence_gate>)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_planks_fence_gate_carpenter");
Recipe.type(Type.CARPENTER) 
    .shaped([[<item:malum:runewood_planks_slab>,<item:malum:runewood_planks_slab>,<item:malum:runewood_planks_slab>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>]])
    .output(<item:malum:runewood_item_stand>*2)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_item_stand_carpenter");
Recipe.type(Type.CARPENTER) 
    .shaped([[<item:malum:runewood_planks_slab>,<item:malum:runewood_planks_slab>,<item:malum:runewood_planks_slab>],
    [<item:minecraft:air>,<item:malum:runewood_planks>,<item:minecraft:air>],
    [<item:malum:runewood_planks_slab>,<item:malum:runewood_planks_slab>,<item:malum:runewood_planks_slab>]])
    .output(<item:malum:runewood_item_pedestal>)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("runewood_item_pedestal_stand_carpenter");

//lectern
craftingTable.removeRecipe(<item:minecraft:lectern>);
Recipe.type(Type.CARPENTER) 
    .shaped([[<tag:items:minecraft:slabs/wooden>,<tag:items:minecraft:slabs/wooden>,<tag:items:minecraft:slabs/wooden>],
    [<item:minecraft:air>,<tag:items:forge:bookshelves>,<item:minecraft:air>],
    [<item:minecraft:air>,<tag:items:minecraft:slabs/wooden>,<item:minecraft:air>]])
    .output(<item:minecraft:lectern>)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register("minecraft_lectern");