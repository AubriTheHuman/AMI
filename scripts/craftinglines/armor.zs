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

#irn and gold armor UNDONE
#var armorMaterials = ["iron", "gold", "thallasium", "terminite", "brass", "zinc", "copper", "steel", "psimetal", "manasteel", "elementium", "plutonite", "crystillium", "cloggrum", "froststeel", "utherium"] as string[];
#var armorMaterialsSuff = ["_chestplate","_chestplate","_chestplate","_chestplate","_chestplate","_chestplate","_armor_chestplate","_chest","_exosuit_chestplate","_chestplate","_chestplate","_armor_chestplate","_armor_chestplate","_chestplate","_chestplate","_chestplate"] as string[];
#var armorMaterials = ["minecraft:iron_chestplate","minecraft:","betterendforge:","betterendforge:","create_stuff_additions:","create_stuff_additions:","create_stuff_additions:","immersiveengineering:armor_","psi:","botania:","botania:","alterlands_3:","the_afterlight:","undergarden:","undergarden:","undergarden:"] as string[];

#iron
craftingTable.removeRecipe(<item:minecraft:iron_helmet>);
craftingTable.removeRecipe(<item:minecraft:iron_chestplate>);
craftingTable.removeRecipe(<item:minecraft:iron_leggings>);
craftingTable.removeRecipe(<item:minecraft:iron_boots>);
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:rounded_sheets/iron>],
  [<tag:items:forge:plates/iron>, <item:minecraft:air>, <tag:items:forge:plates/iron>]])
  .output(<item:minecraft:iron_helmet>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/iron>, <item:minecraft:air>, <tag:items:forge:rounded_sheets/iron>],
  [<tag:items:forge:rounded_sheets/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:rounded_sheets/iron>],
  [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]])
  .output(<item:minecraft:iron_chestplate>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:rounded_sheets/iron>],
  [<tag:items:forge:plates/iron>, <item:minecraft:air>, <tag:items:forge:plates/iron>],
  [<tag:items:forge:rounded_sheets/iron>, <item:minecraft:air>, <tag:items:forge:rounded_sheets/iron>]])
  .output(<item:minecraft:iron_leggings>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:plates/iron>, <item:minecraft:air>, <tag:items:forge:plates/iron>],
  [<tag:items:forge:rounded_sheets/iron>, <item:minecraft:air>, <tag:items:forge:rounded_sheets/iron>]])
  .output(<item:minecraft:iron_boots>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();

#gold
craftingTable.removeRecipe(<item:minecraft:golden_helmet>);
craftingTable.removeRecipe(<item:minecraft:golden_chestplate>);
craftingTable.removeRecipe(<item:minecraft:golden_leggings>);
craftingTable.removeRecipe(<item:minecraft:golden_boots>);
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/gold>, <tag:items:forge:plates/gold>, <tag:items:forge:rounded_sheets/gold>],
  [<tag:items:forge:plates/gold>, <item:minecraft:air>, <tag:items:forge:plates/gold>]])
  .output(<item:minecraft:golden_helmet>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:gold_bolt>*2])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/gold>, <item:minecraft:air>, <tag:items:forge:rounded_sheets/gold>],
  [<tag:items:forge:rounded_sheets/gold>, <tag:items:forge:plates/gold>, <tag:items:forge:rounded_sheets/gold>],
  [<tag:items:forge:plates/gold>, <tag:items:forge:plates/gold>, <tag:items:forge:plates/gold>]])
  .output(<item:minecraft:golden_chestplate>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:gold_bolt>*2])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rounded_sheets/gold>, <tag:items:forge:plates/gold>, <tag:items:forge:rounded_sheets/gold>],
  [<tag:items:forge:plates/gold>, <item:minecraft:air>, <tag:items:forge:plates/gold>],
  [<tag:items:forge:rounded_sheets/gold>, <item:minecraft:air>, <tag:items:forge:rounded_sheets/gold>]])
  .output(<item:minecraft:golden_leggings>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:gold_bolt>*2])
  .register();
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:plates/gold>, <item:minecraft:air>, <tag:items:forge:plates/gold>],
  [<tag:items:forge:rounded_sheets/gold>, <item:minecraft:air>, <tag:items:forge:rounded_sheets/gold>]])
  .output(<item:minecraft:golden_boots>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:gold_bolt>*2])
  .register();
