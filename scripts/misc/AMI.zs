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


#amicoins
craftingTable.addShapeless("starmetal_from_normal", <item:amicore:amicoin_starmetal>, [<item:amicore:amicoin>,<item:amicore:amicoin>,<item:amicore:amicoin>,<item:amicore:amicoin>,<item:amicore:amicoin>]);
craftingTable.addShapeless("orachalchum_from_starmetal", <item:amicore:amicoin_orachalchum>, [<item:amicore:amicoin_starmetal>,<item:amicore:amicoin_starmetal>]);
craftingTable.addShapeless("managold_from_starmetal", <item:amicore:amicoin_managold>, [<item:amicore:amicoin_starmetal>,<item:amicore:amicoin_starmetal>,<item:amicore:amicoin_starmetal>,<item:amicore:amicoin_starmetal>,<item:amicore:amicoin_starmetal>]);
craftingTable.addShapeless("managold_from_starmetal_and_orachalchum_1", <item:amicore:amicoin_managold>, [<item:amicore:amicoin_orachalchum>,<item:amicore:amicoin_starmetal>,<item:amicore:amicoin_starmetal>,<item:amicore:amicoin_starmetal>]);
craftingTable.addShapeless("managold_from_starmetal_and_orachalchum_2", <item:amicore:amicoin_managold>, [<item:amicore:amicoin_orachalchum>,<item:amicore:amicoin_orachalchum>,<item:amicore:amicoin_starmetal>]);
craftingTable.addShapeless("damascus_from_managold", <item:amicore:amicoin_damascus>, [<item:amicore:amicoin_managold>,<item:amicore:amicoin_managold>,<item:amicore:amicoin_managold>,<item:amicore:amicoin_managold>]);

craftingTable.addShapeless("normal_from_starmetal", <item:amicore:amicoin>*5, [<item:amicore:amicoin_starmetal>]);
craftingTable.addShapeless("starmetal_from_orachalchum", <item:amicore:amicoin_starmetal>*2, [<item:amicore:amicoin_orachalchum>]);
craftingTable.addShapeless("starmetal_from_managold", <item:amicore:amicoin_starmetal>*5, [<item:amicore:amicoin_managold>]);
craftingTable.addShapeless("managold_from_damascus", <item:amicore:amicoin_managold>*4, [<item:amicore:amicoin_damascus>]);

#funnies
Recipe.type(Type.BASIC)
  .shaped([[<tag:items:forge:dyes/pink>,<item:minecraft:string>,<tag:items:forge:dyes/pink>],
          [<tag:items:forge:dyes/light_blue>,<item:amicore:estradiol>,<tag:items:forge:dyes/light_blue>],
          [<item:minecraft:white_wool>,<item:minecraft:air>,<item:minecraft:white_wool>]])
  .output(<item:amicore:programmer_socks>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
           [<item:minecraft:string>, <item:minecraft:air>, <item:minecraft:string>],
           [<item:minecraft:air>, <item:amicore:estradiol>, <item:minecraft:air>]])
  .output(<item:amicore:lesbian_necklace>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();

#item info dumps
mods.jei.JEI.addInfo(<item:amicore:anvil_repair>, ["When right clicked on an anvil, it will repair it to the next state up from its current, using 1 durability."]);


#various recipe replacements
#sleeping_bag tweaks
var colors = ["red", "orange", "yellow", "lime", "green", "light_blue", "cyan", "blue", "magenta", "purple", "pink", "brown", "gray", "light_gray", "black", "white"] as string[];
for color in colors {
  craftingTable.removeByName("comforts:sleeping_bag_" + color);
  var carp = BracketHandlers.getItem("minecraft:" + color + "_carpet");
  var wool = BracketHandlers.getItem("minecraft:" + color + "_wool");
  craftingTable.addShaped("comforts.sleeping_bag_" + color, BracketHandlers.getItem("comforts:sleeping_bag_" + color), [
      [carp, carp, carp],
      [wool, wool, wool]]);
}


#waystones tweak
craftingTable.removeByName("waystones:warp_stone");
craftingTable.removeByName("waystones:warp_dust");
craftingTable.removeByName("waystones:waystone");
craftingTable.removeByName("waystones:mossy_waystone");
craftingTable.removeByName("waystones:sandy_waystone");
craftingTable.removeByName("waystones:sharestone");
craftingTable.removeByName("waystones:warp_plate");
Recipe.type(Type.BASIC)
  .shapeless([<item:minecraft:ender_pearl>,<tag:items:forge:dyes/purple>])
  .output(<item:waystones:warp_dust>*2)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<tag:items:forge:dyes/purple>,<item:minecraft:ender_pearl>,<tag:items:forge:dyes/purple>],
          [<item:minecraft:ender_pearl>,<item:minecraft:emerald>,<item:minecraft:ender_pearl>],
          [<tag:items:forge:dyes/purple>,<item:minecraft:ender_pearl>,<tag:items:forge:dyes/purple>]])
  .output(<item:waystones:warp_stone>)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:minecraft:stone_bricks>,<item:minecraft:air>],
          [<item:minecraft:stone_bricks>,<item:waystones:warp_stone>,<item:minecraft:stone_bricks>],
          [<item:minecraft:black_concrete>,<item:minecraft:black_concrete>,<item:minecraft:black_concrete>]])
  .output(<item:waystones:waystone>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:minecraft:mossy_stone_bricks>,<item:minecraft:air>],
          [<item:minecraft:mossy_stone_bricks>,<item:waystones:warp_stone>,<item:minecraft:mossy_stone_bricks>],
          [<item:minecraft:black_concrete>,<item:minecraft:black_concrete>,<item:minecraft:black_concrete>]])
  .output(<item:waystones:mossy_waystone>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:minecraft:chiseled_sandstone>,<item:minecraft:air>],
          [<item:minecraft:chiseled_sandstone>,<item:waystones:warp_stone>,<item:minecraft:chiseled_sandstone>],
          [<item:minecraft:black_concrete>,<item:minecraft:black_concrete>,<item:minecraft:black_concrete>]])
  .output(<item:waystones:sandy_waystone>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:stone_bricks>,<item:minecraft:stone_bricks>,<item:minecraft:stone_bricks>],
          [<item:minecraft:air>,<item:waystones:warp_stone>,<item:minecraft:air>],
          [<item:minecraft:black_concrete>,<item:minecraft:black_concrete>,<item:minecraft:black_concrete>]])
  .output(<item:waystones:sharestone>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:stone_bricks>,<item:waystones:warp_dust>,<item:minecraft:stone_bricks>],
          [<item:waystones:warp_dust>,<item:minecraft:flint>,<item:waystones:warp_dust>],
          [<item:minecraft:stone_bricks>,<item:waystones:warp_dust>,<item:minecraft:stone_bricks>]])
  .output(<item:waystones:warp_plate>)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

#bountyboard tweak
// craftingTable.removeByName("bountiful:crafting/bountyboard");
// Recipe.type(Type.BASIC)
//   .shaped([[<tag:items:minecraft:planks>,<tag:items:minecraft:logs>,<tag:items:minecraft:planks>],
//           [<item:minecraft:paper>,<tag:items:forge:ingots/gold>,<item:minecraft:paper>],
//           [<tag:items:minecraft:planks>,<tag:items:minecraft:logs>,<tag:items:minecraft:planks>]])
//   .output(<item:bountiful:bountyboard>)
//   .tool(<tag:items:artisantools:type/handsaw>, 1)
// .extra(<item:immersiveengineering:dust_wood>, 0.05)
//   .tool(<tag:items:artisantools:type/hammer>, 1)
//   .register();


#chests unify
craftingTable.removeByName("minecraft:chest");
craftingTable.removeByName("betterendforge:mossy_glowshroom_chest");
craftingTable.removeByName("betterendforge:lacugrove_chest");
craftingTable.removeByName("betterendforge:end_lotus_chest");
craftingTable.removeByName("betterendforge:pythadendron_chest");
craftingTable.removeByName("betterendforge:dragon_tree_chest");
craftingTable.removeByName("betterendforge:tenanea_chest");
craftingTable.removeByName("betterendforge:helix_tree_chest");
craftingTable.removeByName("betterendforge:umbrella_tree_chest");
craftingTable.removeByName("betterendforge:jellyshroom_chest");
craftingTable.removeByName("betterendforge:lucernia_chest");
craftingTable.addShaped("chest_from_any", <item:minecraft:chest>,
  [[<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>,         <item:amicore:wooden_bolt>],
  [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]], null);
craftingTable.addShaped("mossy_glowshroom_chest", <item:betterendforge:mossy_glowshroom_chest>,
  [[<item:betterendforge:mossy_glowshroom_planks>, <item:betterendforge:mossy_glowshroom_planks>, <item:betterendforge:mossy_glowshroom_planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>, <item:amicore:wooden_bolt>],
  [<item:betterendforge:mossy_glowshroom_planks>, <item:betterendforge:mossy_glowshroom_planks>, <item:betterendforge:mossy_glowshroom_planks>]], null);
craftingTable.addShaped("lacugrove_chest", <item:betterendforge:lacugrove_chest>,
  [[<item:betterendforge:lacugrove_planks>, <item:betterendforge:lacugrove_planks>, <item:betterendforge:lacugrove_planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>, <item:amicore:wooden_bolt>],
  [<item:betterendforge:lacugrove_planks>, <item:betterendforge:lacugrove_planks>, <item:betterendforge:lacugrove_planks>]], null);
craftingTable.addShaped("end_lotus_chest", <item:betterendforge:end_lotus_chest>,
  [[<item:betterendforge:end_lotus_planks>, <item:betterendforge:end_lotus_planks>, <item:betterendforge:end_lotus_planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>, <item:amicore:wooden_bolt>],
  [<item:betterendforge:end_lotus_planks>, <item:betterendforge:end_lotus_planks>, <item:betterendforge:end_lotus_planks>]], null);
craftingTable.addShaped("pythadendron_chest", <item:betterendforge:pythadendron_chest>,
  [[<item:betterendforge:pythadendron_planks>, <item:betterendforge:pythadendron_planks>, <item:betterendforge:pythadendron_planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>, <item:amicore:wooden_bolt>],
  [<item:betterendforge:pythadendron_planks>, <item:betterendforge:pythadendron_planks>, <item:betterendforge:pythadendron_planks>]], null);
craftingTable.addShaped("dragon_tree_chest", <item:betterendforge:dragon_tree_chest>,
  [[<item:betterendforge:dragon_tree_planks>, <item:betterendforge:dragon_tree_planks>, <item:betterendforge:dragon_tree_planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>, <item:amicore:wooden_bolt>],
  [<item:betterendforge:dragon_tree_planks>, <item:betterendforge:dragon_tree_planks>, <item:betterendforge:dragon_tree_planks>]], null);
craftingTable.addShaped("tenanea_chest", <item:betterendforge:tenanea_chest>,
  [[<item:betterendforge:tenanea_planks>, <item:betterendforge:tenanea_planks>, <item:betterendforge:tenanea_planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>, <item:amicore:wooden_bolt>],
  [<item:betterendforge:tenanea_planks>, <item:betterendforge:tenanea_planks>, <item:betterendforge:tenanea_planks>]], null);
craftingTable.addShaped("helix_tree_chest", <item:betterendforge:helix_tree_chest>,
  [[<item:betterendforge:helix_tree_planks>, <item:betterendforge:helix_tree_planks>, <item:betterendforge:helix_tree_planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>, <item:amicore:wooden_bolt>],
  [<item:betterendforge:helix_tree_planks>, <item:betterendforge:helix_tree_planks>, <item:betterendforge:helix_tree_planks>]], null);
craftingTable.addShaped("umbrella_tree_chest", <item:betterendforge:umbrella_tree_chest>,
  [[<item:betterendforge:umbrella_tree_planks>, <item:betterendforge:umbrella_tree_planks>, <item:betterendforge:umbrella_tree_planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>, <item:amicore:wooden_bolt>],
  [<item:betterendforge:umbrella_tree_planks>, <item:betterendforge:umbrella_tree_planks>, <item:betterendforge:umbrella_tree_planks>]], null);
craftingTable.addShaped("jellyshroom_chest", <item:betterendforge:jellyshroom_chest>,
  [[<item:betterendforge:jellyshroom_planks>, <item:betterendforge:jellyshroom_planks>, <item:betterendforge:jellyshroom_planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>, <item:amicore:wooden_bolt>],
  [<item:betterendforge:jellyshroom_planks>, <item:betterendforge:jellyshroom_planks>, <item:betterendforge:jellyshroom_planks>]], null);
craftingTable.addShaped("lucernia_chest", <item:betterendforge:lucernia_chest>,
  [[<item:betterendforge:lucernia_planks>, <item:betterendforge:lucernia_planks>, <item:betterendforge:lucernia_planks>],
  [<item:amicore:wooden_bolt>, <item:minecraft:flint>, <item:amicore:wooden_bolt>],
  [<item:betterendforge:lucernia_planks>, <item:betterendforge:lucernia_planks>, <item:betterendforge:lucernia_planks>]], null);


#boat tweaks pain
var vanilBoatWoods = ["oak", "birch", "spruce", "jungle", "acacia", "dark_oak"] as string[];
var bygBoatWoods = ["aspen", "baobab", "blue_enchanted", "cherry", "cika", "cypress", "ebony", "fir", "green_enchanted", "holly", "jacaranda", "mahogany", "mangrove", "maple", "palm", "pine", "rainbow_eucalyptus", "redwood", "skyris", "willow", "witch_hazel", "zelkova"] as string[];

for item in vanilBoatWoods {
  craftingTable.removeByName("minecraft:" + item + "_boat");
  craftingTable.addShaped(item + "_boat", BracketHandlers.getItem("minecraft:" + item + "_boat"),
    [[<item:minecraft:wooden_shovel>, <item:amicore:wooden_bolt>, <item:minecraft:wooden_shovel>],
    [BracketHandlers.getItem("minecraft:" + item + "_planks"), <item:amicore:wooden_bolt>, BracketHandlers.getItem("minecraft:" + item + "_planks")],
    [BracketHandlers.getItem("minecraft:" + item + "_planks"), BracketHandlers.getItem("minecraft:" + item + "_planks"), BracketHandlers.getItem("minecraft:" + item + "_planks")]], null);
}
for item in bygBoatWoods {
  craftingTable.removeByName("byg:" + item + "_boat");
  craftingTable.addShaped(item + "_boat", BracketHandlers.getItem("byg:" + item + "_boat"),
    [[<item:minecraft:wooden_shovel>, <item:amicore:wooden_bolt>, <item:minecraft:wooden_shovel>],
    [BracketHandlers.getItem("byg:" + item + "_planks"), <item:amicore:wooden_bolt>, BracketHandlers.getItem("byg:" + item + "_planks")],
    [BracketHandlers.getItem("byg:" + item + "_planks"), BracketHandlers.getItem("byg:" + item + "_planks"), BracketHandlers.getItem("byg:" + item + "_planks")]], null);
}

#storage drawers tweaks UNDONE
craftingTable.removeByName("storagedrawers:upgrade_template");
craftingTable.removeByName("storagedrawers:obsidian_storage_upgrade");
craftingTable.removeByName("storagedrawers:iron_storage_upgrade");
craftingTable.removeByName("storagedrawers:gold_storage_upgrade");
craftingTable.removeByName("storagedrawers:diamond_storage_upgrade");
craftingTable.removeByName("storagedrawers:emerald_storage_upgrade");
craftingTable.removeByName("storagedrawers:one_stack_upgrade");
craftingTable.removeByName("storagedrawers:void_upgrade");
craftingTable.removeByName("storagedrawers:conversion_upgrade");
craftingTable.removeByName("storagedrawers:redstone_upgrade");
craftingTable.removeByName("storagedrawers:min_redstone_upgrade");
craftingTable.removeByName("storagedrawers:max_redstone_upgrade");
craftingTable.removeByName("storagedrawers:illumination_upgrade");
craftingTable.removeByName("storagedrawers:fill_level_upgrade");
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:forge:rods/iron>, <item:minecraft:stick>, <tag:items:forge:rods/iron>],
  [<item:minecraft:stick>, <tag:items:storagedrawers:drawers>, <item:minecraft:stick>],
  [<tag:items:forge:rods/iron>, <item:minecraft:stick>, <tag:items:forge:rods/iron>]])
  .output(<item:storagedrawers:upgrade_template>*4)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:iron_bolt>*4,<item:amicore:wooden_bolt>*2])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:forge:rods/iron>, <item:minecraft:black_concrete>, <item:minecraft:stick>],
  [<item:minecraft:black_concrete>, <item:storagedrawers:upgrade_template>, <item:minecraft:black_concrete>],
  [<item:minecraft:stick>, <item:minecraft:black_concrete>, <tag:items:forge:rods/iron>]])
  .output(<item:storagedrawers:obsidian_storage_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:iron_bolt>*4,<item:amicore:wooden_bolt>*2])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:forge:rods/iron>, <tag:items:forge:plates/iron>, <item:minecraft:stick>],
  [<tag:items:forge:plates/iron>, <item:storagedrawers:upgrade_template>, <tag:items:forge:plates/iron>],
  [<item:minecraft:stick>, <tag:items:forge:plates/iron>, <tag:items:forge:rods/iron>]])
  .output(<item:storagedrawers:iron_storage_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:iron_bolt>*4,<item:amicore:wooden_bolt>*2])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:forge:rods/iron>, <tag:items:forge:plates/gold>, <item:minecraft:stick>],
  [<tag:items:forge:plates/gold>, <item:storagedrawers:upgrade_template>, <tag:items:forge:plates/gold>],
  [<item:minecraft:stick>, <tag:items:forge:plates/gold>, <tag:items:forge:rods/iron>]])
  .output(<item:storagedrawers:gold_storage_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:iron_bolt>*4,<item:amicore:wooden_bolt>*2])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:air>,<item:minecraft:air>,<tag:items:forge:rods/steel_crafting>,<item:minecraft:air>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:stick>, <tag:items:forge:gems/diamond>, <item:minecraft:stick>,<item:minecraft:air>],
  [<tag:items:forge:rods/steel_crafting>,<tag:items:forge:gems/diamond>, <item:storagedrawers:upgrade_template>, <tag:items:forge:gems/diamond>,<tag:items:forge:rods/steel_crafting>],
  [<item:minecraft:air>,<item:minecraft:stick>, <tag:items:forge:gems/diamond>, <item:minecraft:stick>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:air>,<tag:items:forge:rods/steel_crafting>,<item:minecraft:air>,<item:minecraft:air>]])
  .output(<item:storagedrawers:diamond_storage_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .tool(<tag:items:artisantools:type/file>, 1)
  .secondary([<item:amicore:iron_bolt>*2,<item:amicore:crude_steel_bolt>*8])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:air>,<item:minecraft:air>,<tag:items:forge:rods/steel_crafting>,<item:minecraft:air>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:stick>, <tag:items:forge:gems/emerald>, <item:minecraft:stick>,<item:minecraft:air>],
  [<tag:items:forge:rods/steel_crafting>,<tag:items:forge:gems/emerald>, <item:storagedrawers:diamond_storage_upgrade>, <tag:items:forge:gems/emerald>,<tag:items:forge:rods/steel_crafting>],
  [<item:minecraft:air>,<item:minecraft:stick>, <tag:items:forge:gems/emerald>, <item:minecraft:stick>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:air>,<tag:items:forge:rods/steel_crafting>,<item:minecraft:air>,<item:minecraft:air>]])
  .output(<item:storagedrawers:emerald_storage_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .tool(<tag:items:artisantools:type/file>, 1)
  .secondary([<item:amicore:iron_bolt>*2,<item:amicore:crude_steel_bolt>*8])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:air>,<item:minecraft:air>,<tag:items:forge:rods/steel_crafting>,<item:minecraft:air>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:stick>, <tag:items:forge:gems/diamond>, <item:minecraft:stick>,<item:minecraft:air>],
  [<tag:items:forge:rods/steel_crafting>,<tag:items:forge:gems/diamond>, <item:storagedrawers:upgrade_template>, <tag:items:forge:gems/diamond>,<tag:items:forge:rods/steel_crafting>],
  [<item:minecraft:air>,<item:minecraft:stick>, <tag:items:forge:gems/diamond>, <item:minecraft:stick>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:air>,<tag:items:forge:rods/steel_crafting>,<item:minecraft:air>,<item:minecraft:air>]])
  .output(<item:storagedrawers:diamond_storage_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .tool(<tag:items:artisantools:type/file>, 1)
  .secondary([<item:amicore:iron_bolt>*2,<item:amicore:steel_bolt>*8])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:air>,<item:minecraft:air>,<tag:items:forge:rods/steel_crafting>,<item:minecraft:air>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:stick>, <tag:items:forge:gems/emerald>, <item:minecraft:stick>,<item:minecraft:air>],
  [<tag:items:forge:rods/steel_crafting>,<tag:items:forge:gems/emerald>, <item:storagedrawers:diamond_storage_upgrade>, <tag:items:forge:gems/emerald>,<tag:items:forge:rods/steel_crafting>],
  [<item:minecraft:air>,<item:minecraft:stick>, <tag:items:forge:gems/emerald>, <item:minecraft:stick>,<item:minecraft:air>],
  [<item:minecraft:air>,<item:minecraft:air>,<tag:items:forge:rods/steel_crafting>,<item:minecraft:air>,<item:minecraft:air>]])
  .output(<item:storagedrawers:emerald_storage_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .tool(<tag:items:artisantools:type/file>, 1)
  .secondary([<item:amicore:iron_bolt>*2,<item:amicore:steel_bolt>*8])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:stick>, <item:minecraft:flint>, <item:minecraft:stick>],
  [<item:minecraft:stick>, <item:storagedrawers:upgrade_template>, <item:minecraft:stick>],
  [<item:minecraft:stick>, <item:minecraft:flint>, <item:minecraft:stick>]])
  .output(<item:storagedrawers:one_stack_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:wooden_bolt>*4])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:stick>, <item:minecraft:torch>,<item:minecraft:stick>],
  [<item:minecraft:torch>, <item:storagedrawers:upgrade_template>, <item:minecraft:torch>],
  [<item:minecraft:stick>, <item:minecraft:torch>, <item:minecraft:stick>]])
  .output(<item:storagedrawers:illumination_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:wooden_bolt>*4])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:stick>, <item:minecraft:repeater>, <item:minecraft:stick>],
  [<item:minecraft:redstone>, <item:storagedrawers:upgrade_template>, <item:minecraft:redstone>],
  [<item:minecraft:stick>, <item:minecraft:redstone>, <item:minecraft:stick>]])
  .output(<item:storagedrawers:fill_level_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:wooden_bolt>*4])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:stick>, <item:minecraft:lapis_lazuli>, <item:minecraft:stick>],
  [<item:minecraft:stick>, <item:storagedrawers:upgrade_template>, <item:minecraft:stick>],
  [<item:minecraft:stick>, <item:minecraft:lapis_lazuli>, <item:minecraft:stick>]])
  .output(<item:storagedrawers:conversion_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:wooden_bolt>*4])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:stick>, <item:minecraft:redstone>, <item:minecraft:stick>],
  [<item:minecraft:redstone>, <item:storagedrawers:upgrade_template>, <item:minecraft:redstone>],
  [<item:minecraft:stick>, <item:minecraft:redstone>, <item:minecraft:stick>]])
  .output(<item:storagedrawers:redstone_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:wooden_bolt>*4])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:stick>, <item:minecraft:redstone>, <item:minecraft:stick>],
  [<item:minecraft:stick>, <item:storagedrawers:upgrade_template>, <item:minecraft:stick>],
  [<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>]])
  .output(<item:storagedrawers:min_redstone_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:wooden_bolt>*4])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:redstone>, <item:minecraft:redstone>, <item:minecraft:redstone>],
  [<item:minecraft:stick>, <item:storagedrawers:upgrade_template>, <item:minecraft:stick>],
  [<item:minecraft:stick>, <item:minecraft:redstone>, <item:minecraft:stick>]])
  .output(<item:storagedrawers:max_redstone_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:wooden_bolt>*4])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:stick>, <item:minecraft:black_concrete>, <item:minecraft:stick>],
  [<item:minecraft:black_concrete>, <item:storagedrawers:upgrade_template>, <item:minecraft:black_concrete>],
  [<item:minecraft:stick>, <item:minecraft:lava_bucket>, <item:minecraft:stick>]])
  .output(<item:storagedrawers:void_upgrade>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:wooden_bolt>*4])
  .register();
Recipe.type(Type.CARPENTER)
  .shaped([[<item:minecraft:stick>, <item:minecraft:black_concrete>, <item:minecraft:stick>],
  [<item:minecraft:black_concrete>, <item:storagedrawers:upgrade_template>, <item:minecraft:black_concrete>],
  [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>]])
  .output(<item:storagedrawers:void_upgrade>)
  .fluid(<fluid:minecraft:lava> * 1000)
  .tool(<tag:items:artisantools:type/beaker>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:wooden_bolt>*4])
  .register();
craftingTable.removeByName("storagedrawers:controller");
craftingTable.removeByName("storagedrawers:controller_slave");
craftingTable.removeByName("storagedrawers:compacting_drawers_3");
Recipe.type(Type.CHEMIST)
  .shaped([[<tag:items:forge:plates/refined_radiance>, <item:amicore:high_torque_gearbox>, <tag:items:forge:plates/refined_radiance>],
  [<item:minecraft:comparator>, <tag:items:storagedrawers:drawers>, <item:minecraft:comparator>],
  [<tag:items:forge:plates/refined_radiance>, <item:filteredchests:medium>, <tag:items:forge:plates/refined_radiance>]])
  .output(<item:storagedrawers:controller>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:sterling_silver_bolt>*4])
  .register();
Recipe.type(Type.CHEMIST)
  .shaped([[<tag:items:forge:plates/refined_radiance>, <tag:items:forge:plates/gold>, <tag:items:forge:plates/refined_radiance>],
  [<item:minecraft:comparator>, <tag:items:storagedrawers:drawers>, <item:minecraft:comparator>],
  [<tag:items:forge:plates/refined_radiance>, <tag:items:forge:plates/gold>, <tag:items:forge:plates/refined_radiance>]])
  .output(<item:storagedrawers:controller_slave>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:sterling_silver_bolt>*4])
  .register();
Recipe.type(Type.CHEMIST)
  .shaped([[<tag:items:forge:plates/sterling_silver>, <item:amicore:high_torque_gearbox>, <tag:items:forge:plates/sterling_silver>],
  [<item:minecraft:piston>, <tag:items:storagedrawers:drawers>, <item:minecraft:piston>],
  [<tag:items:forge:plates/sterling_silver>, <tag:items:forge:plates/refined_radiance>, <tag:items:forge:plates/sterling_silver>]])
  .output(<item:storagedrawers:compacting_drawers_3>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:sterling_silver_bolt>*4])
  .register();

var drawerForms = ["full_drawers_1", "full_drawers_2", "full_drawers_4", "half_drawers_1", "half_drawers_2", "half_drawers_4", "trim"] as string[];
var drawerWoods = ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak", "crimson", "warped"] as string[];

for wood in drawerWoods {
  for form in drawerForms {
    craftingTable.removeByName("storagedrawers:" + wood + "_" + form);
  }

  var p = BracketHandlers.getItem("minecraft:" + wood + "_planks");
  var a = <item:minecraft:air>;
  var c = <item:minecraft:chest>;
  Recipe.type(Type.CARPENTER)
    .shaped([[p, <item:minecraft:stick>, p],
    [<item:minecraft:stick>, p, <item:minecraft:stick>],
    [p, <item:minecraft:stick>, p]])
    .output(BracketHandlers.getItem("storagedrawers:" + wood + "_trim")*4)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register();
  Recipe.type(Type.CARPENTER)
    .shaped([[p, p, p],
    [a, c, a],
    [p, p, p]])
    .output(BracketHandlers.getItem("storagedrawers:" + wood + "_full_drawers_1"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register();
  Recipe.type(Type.CARPENTER)
    .shaped([[p, c, p],
    [p, p, p],
    [p, c, p]])
    .output(BracketHandlers.getItem("storagedrawers:" + wood + "_full_drawers_2"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register();
  Recipe.type(Type.CARPENTER)
    .shaped([[c, p, c],
    [p, p, p],
    [c, p, c]])
    .output(BracketHandlers.getItem("storagedrawers:" + wood + "_full_drawers_4"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register();

  var s = BracketHandlers.getItem("minecraft:" + wood + "_slab");
  Recipe.type(Type.CARPENTER)
    .shaped([[s, s, s],
    [a, c, a],
    [s, s, s]])
    .output(BracketHandlers.getItem("storagedrawers:" + wood + "_half_drawers_1"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register();
  Recipe.type(Type.CARPENTER)
    .shaped([[s, c, s],
    [s, s, s],
    [s, c, s]])
    .output(BracketHandlers.getItem("storagedrawers:" + wood + "_half_drawers_2"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register();
  Recipe.type(Type.CARPENTER)
    .shaped([[c, s, c],
    [s, s, s],
    [c, s, c]])
    .output(BracketHandlers.getItem("storagedrawers:" + wood + "_half_drawers_4"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .register();
}

#furnace tweaks
craftingTable.removeByName("minecraft:furnace");
craftingTable.addShaped("furnace", <item:minecraft:furnace>,
  [[<tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:stone_crafting_materials>],
  [<tag:items:minecraft:stone_crafting_materials>, <tag:items:minecraft:logs>, <tag:items:minecraft:stone_crafting_materials>],
  [<tag:items:minecraft:stone_crafting_materials>, <item:minecraft:flint>, <tag:items:minecraft:stone_crafting_materials>]], null);

craftingTable.removeRecipe(<item:minecraft:blast_furnace>);
craftingTable.addShaped("blast_furnace", <item:minecraft:blast_furnace>,
  [[ <tag:items:forge:rounded_sheets/steel_crafting>, <tag:items:forge:plates/steel_crafting>, <tag:items:forge:rounded_sheets/steel_crafting>],
  [<tag:items:forge:plates/steel_crafting>, <item:minecraft:furnace>, <tag:items:forge:plates/steel_crafting>],
  [<item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>, <item:minecraft:smooth_stone>]], null);
craftingTable.removeRecipe(<item:minecraft:smoker>);
craftingTable.addShaped("smoker", <item:minecraft:smoker>,
  [[<item:minecraft:flint>, <tag:items:minecraft:logs>, <item:minecraft:flint>],
  [<tag:items:minecraft:logs>, <item:minecraft:furnace>, <tag:items:minecraft:logs>],
  [<item:minecraft:smooth_stone>, <tag:items:minecraft:logs>, <item:minecraft:smooth_stone>]], null);
craftingTable.removeRecipe(<item:charm:kiln>);
craftingTable.addShaped("kiln", <item:charm:kiln>,
  [[<item:minecraft:flint>, <item:minecraft:bricks>, <item:minecraft:flint>],
  [<item:minecraft:bricks>, <item:minecraft:furnace>, <item:minecraft:bricks>],
  [<item:minecraft:flint>, <item:minecraft:bricks>, <item:minecraft:flint>]], null);

#paper
craftingTable.removeRecipe(<item:minecraft:paper>);
Recipe.type(Type.BASIC)
  .shapeless([<item:minecraft:sugar_cane>,<item:minecraft:sugar_cane>])
  .output(<item:minecraft:paper>)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shapeless([<tag:items:forge:paper_plants>,<tag:items:forge:paper_plants>])
  .output(<item:minecraft:paper>)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shapeless([<item:minecraft:sugar_cane>,<item:minecraft:sugar_cane>])
  .output(<item:minecraft:paper>*2)
  .fluid(<fluid:minecraft:water> * 125)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .tool(<tag:items:artisantools:type/knife>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shapeless([<tag:items:forge:paper_plants>,<tag:items:forge:paper_plants>])
  .output(<item:minecraft:paper>*2)
  .fluid(<fluid:minecraft:water> * 125)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .tool(<tag:items:artisantools:type/knife>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shapeless([<tag:items:forge:dusts/wood>,<tag:items:forge:dusts/wood>])
  .output(<item:minecraft:paper>)
  .fluid(<fluid:minecraft:water> * 125)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();

#tinkers tables/patterns
craftingTable.removeRecipe(<item:tconstruct:pattern>);
craftingTable.addShaped("tconstruct.pattern", <item:tconstruct:pattern>,
  [[<item:minecraft:stick>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <item:minecraft:stick>]], null);
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:stick>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <item:minecraft:stick>]])
  .output(<item:tconstruct:pattern>*2)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:string>, <item:minecraft:paper>],
  [<item:minecraft:paper>, <item:minecraft:string>]])
  .output(<item:tconstruct:pattern>*6)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();


#farming store tweaks
craftingTable.removeRecipe(<item:farmingforblockheads:market>);
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:minecraft:planks>, <item:chipped:red_wool_13>, <tag:items:minecraft:planks>],
  [<tag:items:minecraft:logs>, <item:bountifulbaubles:wormhole_mirror>, <tag:items:minecraft:logs>],
  [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>]])
  .output(<item:farmingforblockheads:market>)
  .fluid(<fluid:amicore:molten_enderium>*1296)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .tool(<tag:items:artisantools:type/file>, 1)
  .register();




#plant string
craftingTable.removeRecipe(<item:minecraft:string>);
Recipe.type(Type.BASIC)
  .shapeless([<tag:items:forge:fiber>,<tag:items:forge:fiber>,<tag:items:forge:fiber>])
  .output(<item:minecraft:string>)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shapeless([<tag:items:forge:fiber>,<tag:items:forge:fiber>,<tag:items:forge:fiber>])
  .output(<item:minecraft:string>*2)
  .fluid(<fluid:minecraft:water>*125)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .tool(<tag:items:artisantools:type/knife>, 1)
  .register();

  #anvil tweaks
  craftingTable.removeRecipe(<item:minecraft:anvil>);
  Recipe.type(Type.BLACKSMITH)
    .shaped([[<tag:items:forge:storage_blocks/iron>, <tag:items:forge:cakes/iron>, <tag:items:forge:storage_blocks/iron>],
    [<item:amicore:iron_bolt>, <tag:items:forge:ingots/iron>, <item:amicore:iron_bolt>],
    [<tag:items:forge:plates/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:plates/iron>]])
    .output(<item:minecraft:anvil>)
    .tool(<tag:items:artisantools:type/hammer>, 1)
    .register();
  Recipe.type(Type.BASIC)
    .shapeless([<tag:items:forge:plates/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:bolts/iron>,<item:minecraft:string>,<tag:items:forge:slimeballs>])
    .output(<item:amicore:anvil_repair>)
    .tool(<tag:items:artisantools:type/spanner>, 1)
    .register();

  #forge furnace
  craftingTable.removeRecipe(<item:supplementaries:bellows>);
  Recipe.type(Type.BLACKSMITH)
    .shaped([[<item:minecraft:bricks>, <tag:items:forge:ingots/iron>, <item:minecraft:bricks>],
    [<tag:items:forge:ingots/iron>, <item:minecraft:blast_furnace>, <tag:items:forge:ingots/iron>],
    [<item:minecraft:bricks>, <item:minecraft:bricks>, <item:minecraft:bricks>]])
    .output(<item:custommachinery:custom_machine_item>.withTag({machine: "custommachinery:forge_furnace" as string}))
    .tool(<tag:items:artisantools:type/hammer>, 1)
    .register();
  Recipe.type(Type.BASIC)
    .shaped([[<tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>],
    [<item:minecraft:leather>, <item:minecraft:air>, <item:minecraft:leather>],
    [<tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>]])
    .output(<item:supplementaries:bellows>)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .register();

  #bucket tweaks
  craftingTable.removeRecipe(<item:minecraft:bucket>);
  Recipe.type(Type.BLACKSMITH)
    .shaped([[<item:minecraft:air>, <tag:items:forge:rods/iron>, <item:minecraft:air>],
    [<tag:items:forge:rounded_sheets/iron>, <item:minecraft:air>, <tag:items:forge:rounded_sheets/iron>],
    [<item:minecraft:air>, <tag:items:forge:rounded_sheets/iron>, <item:minecraft:air>]])
    .output(<item:minecraft:bucket>)
    .tool(<tag:items:artisantools:type/hammer>, 1)
    .tool(<tag:items:artisantools:type/spanner>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register();

  #ore crushing hammer
#   craftingTable.removeRecipe(<item:engineerstools:crushing_hammer>);
#   Recipe.type(Type.BLACKSMITH)
#   .shaped([[<item:minecraft:air>, <tag:items:forge:storage_blocks/iron>, <item:minecraft:string>],
#   [<item:minecraft:air>, <item:minecraft:stick>, <tag:items:forge:rounded_sheets/iron>],
#    [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:air>]])
#    .output(<item:engineerstools:crushing_hammer>)
#    .tool(<tag:items:artisantools:type/hammer>, 1)
#    .tool(<tag:items:artisantools:type/spanner>, 1)
#    .secondary([<item:amicore:iron_bolt>*2])
#    .register();

  #smithing table
  craftingTable.removeRecipe(<item:minecraft:smithing_table>);
  Recipe.type(Type.BLACKSMITH)
    .shaped([[<tag:items:forge:rounded_sheets/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:rounded_sheets/iron>],
    [<tag:items:forge:plates/iron>, <tag:items:forge:workbenches>, <tag:items:forge:plates/iron>],
    [<tag:items:minecraft:planks>, <tag:items:minecraft:planks>, <tag:items:minecraft:planks>]])
    .output(<item:minecraft:smithing_table>)
    .tool(<tag:items:artisantools:type/hammer>, 1)
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register();

  #blacksmith tables
  craftingTable.addShaped("blacksmith_worktable", <item:artisanworktables:worktable_blacksmith>, [
      [<tag:items:tconstruct:seared_bricks>, <tag:items:tconstruct:seared_bricks>, <tag:items:tconstruct:seared_bricks>],
      [<tag:items:forge:ingots/iron>, <tag:items:forge:workbenches>, <tag:items:forge:ingots/iron>],
      [<tag:items:forge:ingots/iron>, <item:minecraft:air>, <tag:items:forge:ingots/iron>]]);
  craftingTable.addShaped("blacksmith_workstation", <item:artisanworktables:workstation_blacksmith>, [
      [<tag:items:forge:plates/iron>, <tag:items:forge:large_sheets/iron>, <tag:items:forge:plates/iron>],
      [<tag:items:forge:plates/iron>, <item:artisanworktables:worktable_blacksmith>, <tag:items:forge:plates/iron>],
      [<tag:items:forge:rods/iron>, <item:minecraft:air>, <tag:items:forge:rods/iron>]]);



#prospector pick
craftingTable.removeRecipe(<item:geolosys:prospectors_pick>);
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:bar_stocks/iron>,<tag:items:forge:bar_stocks/iron>,<tag:items:forge:rounded_sheets/iron>],
  [<item:minecraft:air>,<item:minecraft:string>,<item:minecraft:stick>],
  [<item:minecraft:air>,<item:minecraft:air>,<item:minecraft:stick>]])
  .output(<item:geolosys:prospectors_pick>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/file>, 1)
  .secondary([<item:amicore:wooden_bolt>*2])
  .register();

#clay
Recipe.type(Type.BASIC)
  .shapeless([<tag:items:minecraft:sand>])
  .output(<item:minecraft:clay_ball>)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .fluid(<fluid:minecraft:water>*125)
  .register();



#bed
for color in colors {
  craftingTable.removeByName("minecraft:" + color + "_bed");
  Recipe.type(Type.CARPENTER)
    .shaped([[BracketHandlers.getItem("minecraft:" + color + "_carpet"), BracketHandlers.getItem("minecraft:" + color + "_carpet"), BracketHandlers.getItem("minecraft:" + color + "_carpet")],
    [BracketHandlers.getItem("minecraft:" + color + "_wool"), BracketHandlers.getItem("minecraft:" + color + "_wool"), BracketHandlers.getItem("minecraft:" + color + "_wool")],
    [<tag:items:forge:rods/iron>, <tag:items:minecraft:planks>, <tag:items:forge:rods/iron>]])
    .output(BracketHandlers.getItem("minecraft:" + color + "_bed"))
    .tool(<tag:items:artisantools:type/handsaw>, 1)
    .extra(<item:immersiveengineering:dust_wood>, 0.05)
    .tool(<tag:items:artisantools:type/spanner>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register();
}

#early andesite alloy tweaks
craftingTable.removeRecipe(<item:create:andesite_alloy>);
craftingTable.removeRecipe(<item:charm:woodcutter>);
craftingTable.removeRecipe(<item:minecraft:stonecutter>);
craftingTable.removeRecipe(<item:jecalculation:item_calculator_math>);
craftingTable.removeRecipe(<item:jecalculation:item_calculator_craft>);

Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>, <item:create:andesite_alloy>, <item:minecraft:air>],
  [<tag:items:minecraft:planks>, <tag:items:forge:workbenches>, <tag:items:minecraft:planks>]])
  .output(<item:charm:woodcutter>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>, <item:create:andesite_alloy>, <item:minecraft:air>],
  [<item:minecraft:smooth_stone>, <tag:items:forge:workbenches>, <item:minecraft:smooth_stone>]])
  .output(<item:minecraft:stonecutter>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:smooth_stone>, <item:minecraft:black_dye>, <item:minecraft:smooth_stone>],
  [<item:minecraft:smooth_stone>, <item:create:andesite_alloy>, <item:minecraft:smooth_stone>],
  [<item:minecraft:smooth_stone>, <item:minecraft:orange_dye>, <item:minecraft:smooth_stone>]])
  .output(<item:jecalculation:item_calculator_math>)
  .tool(<tag:items:artisantools:type/solderer>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:smooth_stone>, <item:minecraft:black_dye>, <item:minecraft:smooth_stone>],
  [<item:minecraft:smooth_stone>, <item:create:andesite_alloy>, <item:minecraft:smooth_stone>],
  [<item:minecraft:smooth_stone>, <item:minecraft:light_blue_dye>, <item:minecraft:smooth_stone>]])
  .output(<item:jecalculation:item_calculator_craft>)
  .tool(<tag:items:artisantools:type/solderer>, 1)
  .register();

#lunchbag and lunchboxex
craftingTable.removeRecipe(<item:solpotato:lunchbag>);
craftingTable.removeRecipe(<item:solpotato:lunchbox>);
craftingTable.addShaped("lunchbag", <item:solpotato:lunchbag>,
  [[<item:minecraft:air>, <item:minecraft:paper>, <item:minecraft:air>],
  [<item:minecraft:paper>, <tag:items:forge:slimeballs>, <item:minecraft:paper>],
  [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]], null);
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rods/iron>, <tag:items:forge:rounded_sheets/iron>, <tag:items:forge:rods/iron>],
  [<tag:items:forge:rods/iron>, <item:solpotato:lunchbag>, <tag:items:forge:rods/iron>],
  [<tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:plates/iron>]])
  .output(<item:solpotato:lunchbox>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();
craftingTable.removeRecipe(<item:solpotato:golden_lunchbox>);
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:rods/gold>, <tag:items:forge:rounded_sheets/gold>, <tag:items:forge:rods/gold>],
  [<tag:items:forge:rods/gold>, <item:solpotato:lunchbox>, <tag:items:forge:rods/gold>],
  [<tag:items:forge:plates/gold>, <tag:items:forge:large_sheets/gold>, <tag:items:forge:plates/gold>]])
  .output(<item:solpotato:golden_lunchbox>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:gold_bolt>*2])
  .register();

#tetra startoff
craftingTable.removeByName("tetra:hammer/granite");
craftingTable.removeByName("tetra:hammer/andesite");
craftingTable.removeByName("tetra:hammer/diorite");
craftingTable.removeByName("tetra:hammer/stone");

#disable quark trough
craftingTable.removeRecipe(<item:quark:feeding_trough>);
mods.jei.JEI.hideItem(<item:quark:feeding_trough>);



#obsidian tweaks
craftingTable.removeRecipe(<item:minecraft:obsidian>);
mods.jei.JEI.hideItem(<item:morevanillalib:obsidian_shard>);
<recipetype:create:crushing>.removeByName("create:crushing/obsidian");

#respawn anchor
craftingTable.removeRecipe(<item:minecraft:respawn_anchor>);
Recipe.type(Type.MAGE)
  .shaped([[<item:minecraft:obsidian>, <item:minecraft:glowstone>, <item:minecraft:obsidian>],
  [<item:minecraft:diamond>, <item:minecraft:glowstone>, <item:minecraft:diamond>],
  [<item:minecraft:obsidian>, <item:minecraft:glowstone>, <item:minecraft:obsidian>]])
  .output(<item:minecraft:respawn_anchor>)
  .tool(<tag:items:artisantools:type/file>, 5)
  .register();

#enchanting table
craftingTable.removeRecipe(<item:minecraft:enchanting_table>);
Recipe.type(Type.MAGE)
  .shaped([[<item:minecraft:red_carpet>, <item:minecraft:book>, <item:minecraft:red_carpet>],
  [<item:minecraft:diamond>, <tag:items:forge:workbenches>, <item:minecraft:diamond>],
  [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>]])
  .output(<item:minecraft:enchanting_table>)
  .tool(<tag:items:artisantools:type/file>, 5)
  .register();

#flint and stee
craftingTable.removeRecipe(<item:minecraft:flint_and_steel>);
craftingTable.removeRecipe(<item:tconstruct:flint_and_bronze>);
mods.jei.JEI.hideItem(<item:tconstruct:flint_and_bronze>);
Recipe.type(Type.MAGE)
  .shaped([[<item:minecraft:flint>, <item:minecraft:air>],
  [<item:minecraft:air>, <tag:items:forge:rods/iron>]])
  .output(<item:minecraft:flint_and_steel>)
  .tool(<tag:items:artisantools:type/file>, 1)
  .register();

#blaze rod items
craftingTable.removeRecipe(<item:minecraft:blaze_powder>);
Recipe.type(Type.MAGE)
  .shapeless([<item:minecraft:blaze_rod>])
  .output(<item:minecraft:blaze_powder>*2)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .register();

craftingTable.removeRecipe(<item:minecraft:brewing_stand>);
Recipe.type(Type.MAGE)
  .shaped([[<tag:items:forge:rounded_sheets/copper>,<item:minecraft:blaze_rod>,<tag:items:forge:rounded_sheets/copper>],
  [<tag:items:minecraft:stone_crafting_materials>,<tag:items:minecraft:stone_crafting_materials>,<tag:items:minecraft:stone_crafting_materials>]])
  .output(<item:minecraft:brewing_stand>)
  .tool(<tag:items:artisantools:type/file>, 1)
  .register();

#soul soil brick Firing recipe in AMIEdits datapack
Recipe.type(Type.MAGE)
  .shapeless([<item:minecraft:soul_soil>,<item:minecraft:clay_ball>])
  .output(<item:amicore:soul_soil_clay>)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .fluid(<fluid:minecraft:lava>*250)
  .register();
<recipetype:charm:firing>.addJSONRecipe("amicore/soul_soil_brick_kiln", {
  "type": "charm:firing",
  "ingredient": {
    "item": "amicore:soul_soil_clay"
  },
  "result": "amicore:soul_soil_brick",
  "experience": 0.35,
  "cookingtime": 100,
  "conditions": [
    {
      "type": "charm:module_enabled",
      "module": "charm:kilns"
    }
  ]
});

#piston
craftingTable.removeRecipe(<item:minecraft:piston>);
craftingTable.addShaped("piston", <item:minecraft:piston>,
[[<tag:items:minecraft:planks>,<tag:items:minecraft:planks>,<tag:items:minecraft:planks>],
[<tag:items:forge:rounded_sheets/copper>,<tag:items:forge:rods/iron>,<tag:items:forge:rounded_sheets/copper>],
[<tag:items:forge:cobblestone>,<tag:items:forge:dusts/redstone>,<tag:items:forge:cobblestone>]]);
craftingTable.removeRecipe(<item:minecraft:hopper>);
craftingTable.addShaped("hopper", <item:minecraft:hopper>,
[[<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:plates/iron>,<tag:items:forge:rounded_sheets/iron>],
[<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:chests/wooden>,<tag:items:forge:rounded_sheets/iron>],
[<item:minecraft:air>,<tag:items:forge:rods/iron>,<item:minecraft:air>]]);
craftingTable.removeRecipe(<item:quark:chute>);
craftingTable.addShaped("chute", <item:quark:chute>,
[[<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:bolts/iron>,<tag:items:forge:rounded_sheets/iron>],
[<tag:items:minecraft:planks>,<tag:items:forge:chests/wooden>,<tag:items:minecraft:planks>],
[<item:minecraft:air>,<tag:items:minecraft:planks>,<item:minecraft:air>]]);
craftingTable.removeRecipe(<item:minecraft:iron_bars>);
craftingTable.addShaped("iron_bars", <item:minecraft:iron_bars>*16,
[[<tag:items:forge:rods/iron>,<tag:items:forge:rods/iron>,<tag:items:forge:rods/iron>],
[<tag:items:forge:rods/iron>,<tag:items:forge:rods/iron>,<tag:items:forge:rods/iron>],
[<tag:items:forge:rods/iron>,<tag:items:forge:rods/iron>,<tag:items:forge:rods/iron>]]);

#chipped
craftingTable.removeRecipe(<item:chipped:botanist_workbench>);
craftingTable.removeRecipe(<item:chipped:glassblower>);
craftingTable.removeRecipe(<item:chipped:carpenters_table>);
craftingTable.removeRecipe(<item:chipped:loom_table>);
craftingTable.removeRecipe(<item:chipped:mason_table>);
craftingTable.removeRecipe(<item:chipped:alchemy_bench>);
craftingTable.removeRecipe(<item:chipped:mechanist_workbench>);
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:flower_pot>, <item:minecraft:flower_pot>, <item:minecraft:flower_pot>],
  [<tag:items:minecraft:wooden_slabs>, <tag:items:forge:workbenches>, <tag:items:minecraft:wooden_slabs>],
  [<item:minecraft:stick>, <item:minecraft:redstone>, <item:minecraft:stick>]])
  .output(<item:chipped:botanist_workbench>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:glass>, <item:minecraft:blast_furnace>, <tag:items:forge:rods/zinc>],
  [<tag:items:minecraft:logs>, <tag:items:forge:workbenches>, <tag:items:minecraft:logs>],
  [<tag:items:minecraft:logs>, <item:minecraft:redstone>, <tag:items:minecraft:logs>]])
  .output(<item:chipped:glassblower>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<tag:items:forge:rounded_sheets/iron>, <item:minecraft:air>, <tag:items:forge:rods/zinc>],
  [<tag:items:minecraft:logs>, <tag:items:forge:workbenches>, <tag:items:minecraft:logs>],
  [<item:minecraft:iron_axe>, <item:minecraft:redstone>, <tag:items:minecraft:logs>]])
  .output(<item:chipped:carpenters_table>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
  [<item:minecraft:white_wool>, <tag:items:forge:workbenches>, <item:minecraft:white_wool>],
  [<tag:items:minecraft:logs>, <item:minecraft:redstone>, <tag:items:minecraft:logs>]])
  .output(<item:chipped:loom_table>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<tag:items:forge:rounded_sheets/iron>, <tag:items:artisantools:type/hammer>, <tag:items:artisantools:type/chisel>],
  [<tag:items:minecraft:wooden_slabs>, <tag:items:forge:workbenches>, <tag:items:minecraft:wooden_slabs>],
  [<tag:items:minecraft:logs>, <item:minecraft:redstone>, <tag:items:minecraft:logs>]])
  .output(<item:chipped:mason_table>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/chisel>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:brewing_stand>, <tag:items:forge:rounded_sheets/copper>, <item:minecraft:enchanting_table>],
  [<tag:items:minecraft:wooden_slabs>, <tag:items:forge:workbenches>, <tag:items:minecraft:wooden_slabs>],
  [<tag:items:minecraft:logs>, <item:minecraft:redstone>, <tag:items:minecraft:logs>]])
  .output(<item:chipped:alchemy_bench>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:redstone_torch>, <item:minecraft:redstone>, <item:minecraft:air>],
  [<item:minecraft:piston>, <tag:items:minecraft:wooden_slabs>, <tag:items:minecraft:wooden_slabs>],
  [<tag:items:minecraft:logs>, <tag:items:forge:workbenches>, <tag:items:minecraft:logs>]])
  .output(<item:chipped:mechanist_workbench>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .register();

#ènderchest items
craftingTable.removeRecipe(<item:enderstorage:ender_chest>);
craftingTable.removeRecipe(<item:enderstorage:ender_tank>);
craftingTable.removeRecipe(<item:enderstorage:ender_pouch>);
Recipe.type(Type.MAGE)
  .shaped([[<item:minecraft:blaze_rod>,<item:minecraft:white_wool>,<item:minecraft:blaze_rod>],
  [<item:minecraft:crying_obsidian>,<tag:items:forge:chests/wooden>,<item:minecraft:crying_obsidian>],
  [<item:minecraft:blaze_rod>,<item:amicore:ender_core>,<item:minecraft:blaze_rod>]])
  .output(<item:enderstorage:ender_chest>)
  .tool(<tag:items:artisantools:type/file>, 1)
  .register();
Recipe.type(Type.MAGE)
  .shaped([[<item:minecraft:blaze_rod>,<item:minecraft:white_wool>,<item:minecraft:blaze_rod>],
  [<item:minecraft:crying_obsidian>,<item:minecraft:cauldron>,<item:minecraft:crying_obsidian>],
  [<item:minecraft:blaze_rod>,<item:amicore:ender_core>,<item:minecraft:blaze_rod>]])
  .output(<item:enderstorage:ender_tank>)
  .tool(<tag:items:artisantools:type/file>, 1)
  .register();
Recipe.type(Type.MAGE)
  .shaped([[<tag:items:forge:rounded_sheets/tin_brass>,<item:minecraft:ender_pearl>,<tag:items:forge:rounded_sheets/lead_brass>],
  [<item:minecraft:crying_obsidian>,<item:minecraft:blaze_powder>,<item:minecraft:crying_obsidian>],
  [<tag:items:forge:rounded_sheets/lead_brass>,<item:minecraft:ender_pearl>,<tag:items:forge:rounded_sheets/tin_brass>]])
  .output(<item:amicore:ender_core>)
  .tool(<tag:items:artisantools:type/file>, 1)
  .register();



#grout changes
Recipe.type(Type.BASIC)
  .shaped([[<tag:items:forge:clay>,<tag:items:minecraft:sand>],
  [<tag:items:forge:gravel>,<item:minecraft:air>]])
  .output(<item:tconstruct:grout>*2)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .fluid(<fluid:minecraft:water> * 250)
  .register();
Recipe.type(Type.BASIC)
  .shapeless([<tag:items:forge:storage_blocks/clay>,<tag:items:minecraft:sand>,<tag:items:minecraft:sand>,
  <tag:items:forge:gravel>,<tag:items:minecraft:sand>,<tag:items:minecraft:sand>,
  <tag:items:forge:gravel>,<tag:items:forge:gravel>,<tag:items:forge:gravel>])
  .output(<item:tconstruct:grout>*8)
  .tool(<tag:items:artisantools:type/mortar>, 4)
  .fluid(<fluid:minecraft:water> * 1000)
  .register();

Recipe.type(Type.CHEMIST)
  .shaped([[<tag:items:forge:magma_cream>,<item:minecraft:soul_sand>],
  [<tag:items:forge:gravel>,<item:minecraft:air>]])
  .output(<item:tconstruct:nether_grout>*2)
  .tool(<tag:items:artisantools:type/mortar>, 1)
  .fluid(<fluid:immersiveengineering:creosote> * 250)
  .register();

craftingTable.removeRecipe(<item:tconstruct:nether_grout>);
<recipetype:create:mixing>.addRecipe("grout_mixing", "none", <item:tconstruct:grout>*2, [<tag:items:forge:clay>, <tag:items:minecraft:sand>, <tag:items:forge:gravel>]);
<recipetype:create:mixing>.addRecipe("grout_mixing_large_batch", "none", <item:tconstruct:grout>*8, [<tag:items:forge:storage_blocks/clay>, <tag:items:minecraft:sand>*4, <tag:items:forge:gravel>*4]);
<recipetype:create:mixing>.addRecipe("nether_grout_mixing", "heated", <item:tconstruct:nether_grout>*2, [<tag:items:forge:magma_cream>, <item:minecraft:soul_sand>, <tag:items:forge:gravel>], [<fluid:immersiveengineering:creosote> * 250]);

furnace.removeRecipe(<item:tconstruct:seared_brick>);
blastFurnace.removeRecipe(<item:tconstruct:seared_brick>);
<recipetype:charm:firing>.addJSONRecipe("amicore/seared_brick_kiln", {
  "type": "charm:firing",
  "ingredient": {
    "item": "tconstruct:grout"
  },
  "result": "tconstruct:seared_brick",
  "experience": 0.35,
  "cookingtime": 100,
  "conditions": [
    {
      "type": "charm:module_enabled",
      "module": "charm:kilns"
    }
  ]
});
furnace.removeRecipe(<item:tconstruct:scorched_brick>);
blastFurnace.removeRecipe(<item:tconstruct:scorched_brick>);
<recipetype:charm:firing>.addJSONRecipe("amicore/scorched_brick_kiln", {
  "type": "charm:firing",
  "ingredient": {
    "item": "tconstruct:nether_grout"
  },
  "result": "tconstruct:scorched_brick",
  "experience": 0.35,
  "cookingtime": 100,
  "conditions": [
    {
      "type": "charm:module_enabled",
      "module": "charm:kilns"
    }
  ]
});

#chisel changes
craftingTable.removeRecipe(<item:chisel:iron_chisel>);
craftingTable.removeRecipe(<item:chisel:diamond_chisel>);
Recipe.type(Type.BASIC)
  .shapeless([<item:minecraft:air>,<tag:items:forge:heated_ingots/iron>,
  <tag:items:forge:rods/iron>,<item:minecraft:air>])
  .output(<item:chisel:iron_chisel>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .fluid(<fluid:minecraft:water> * 250)
  .register();
Recipe.type(Type.BASIC)
  .shapeless([<item:minecraft:air>,<tag:items:forge:gems/diamond>,
  <tag:items:forge:rods/steel_crafting>,<item:minecraft:air>])
  .output(<item:chisel:diamond_chisel>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
  
  #tiny charcoal
Recipe.type(Type.BASIC)
  .shapeless([<item:minecraft:charcoal>])
  .output(<item:amicore:tiny_charcoal>*8)
  .register();
craftingTable.addShapeless("amicore_tiny_charcoal", <item:amicore:tiny_charcoal>*8, [<item:minecraft:charcoal>]);

#paraglider
craftingTable.removeByName("paraglider:paraglider");

