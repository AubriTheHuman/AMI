
mods.jei.JEI.hideItem(<item:xkdeco:steel_ingot>);
mods.jei.JEI.hideItem(<item:xkdeco:steel_pickaxe>);
mods.jei.JEI.hideItem(<item:xkdeco:steel_shovel>);
mods.jei.JEI.hideItem(<item:xkdeco:steel_sword>);
mods.jei.JEI.hideItem(<item:xkdeco:steel_hoe>);
mods.jei.JEI.hideItem(<item:xkdeco:steel_axe>);
mods.jei.JEI.hideItem(<item:xkdeco:steel_armor_helmet>);
mods.jei.JEI.hideItem(<item:xkdeco:steel_armor_chestplate>);
mods.jei.JEI.hideItem(<item:xkdeco:steel_armor_leggings>);
mods.jei.JEI.hideItem(<item:xkdeco:steel_armor_boots>);

blastFurnace.removeRecipe(<item:xkdeco:steel_ingot>);
craftingTable.removeRecipe(<item:xkdeco:steel_block>);
craftingTable.removeRecipe(<item:xkdeco:steel_ingot>);
craftingTable.removeRecipe(<item:xkdeco:steel_tiles>);
craftingTable.removeRecipe(<item:xkdeco:ventiduct>);
craftingTable.removeRecipe(<item:xkdeco:fan_blade>);
craftingTable.removeRecipe(<item:xkdeco:steel_windmill>);
craftingTable.removeRecipe(<item:xkdeco:hollow_steel_frame>);
craftingTable.addShaped("xkdeco_steel_block", <item:xkdeco:steel_block>,
  [[<tag:items:forge:ingots/steel_crafting>, <tag:items:forge:ingots/steel_crafting>, <tag:items:forge:ingots/steel_crafting>],
  [<tag:items:forge:ingots/steel_crafting>, <tag:items:forge:ingots/steel_crafting>, <tag:items:forge:ingots/steel_crafting>],
  [<tag:items:forge:ingots/steel_crafting>, <tag:items:forge:ingots/steel_crafting>, <tag:items:forge:ingots/steel_crafting>]], null);
craftingTable.addShaped("xkdeco_steel_tile", <item:xkdeco:steel_tiles> * 16,
  [[<tag:items:forge:ingots/steel_crafting>, <tag:items:forge:ingots/steel_crafting>],
  [<tag:items:forge:ingots/steel_crafting>, <tag:items:forge:ingots/steel_crafting>]], null);
craftingTable.addShaped("xkdeco_ventiduct", <item:xkdeco:ventiduct> * 24,
  [[<tag:items:forge:ingots/steel_crafting>, <item:minecraft:air>, <tag:items:forge:ingots/steel_crafting>],
  [<tag:items:forge:ingots/steel_crafting>, <item:minecraft:air>, <tag:items:forge:ingots/steel_crafting>],
  [<tag:items:forge:ingots/steel_crafting>, <item:minecraft:air>, <tag:items:forge:ingots/steel_crafting>]], null);
craftingTable.addShaped("xkdeco_fan_blade_r", <item:xkdeco:fan_blade>,
  [[<item:minecraft:air>, <item:minecraft:heavy_weighted_pressure_plate>, <item:minecraft:air>],
  [<item:minecraft:heavy_weighted_pressure_plate>, <tag:items:forge:ingots/steel_crafting>, <item:minecraft:heavy_weighted_pressure_plate>],
  [<item:minecraft:air>, <item:minecraft:heavy_weighted_pressure_plate>, <item:minecraft:air>]], null);
craftingTable.addShaped("xkdeco_steel_windmill_r", <item:xkdeco:steel_windmill>,
  [[<item:minecraft:air>, <item:xkdeco:steel_trapdoor>, <item:minecraft:air>],
  [<item:xkdeco:steel_trapdoor>, <tag:items:forge:ingots/steel_crafting>, <item:xkdeco:steel_trapdoor>],
  [<item:minecraft:air>, <item:xkdeco:steel_trapdoor>, <item:minecraft:air>]], null);
craftingTable.addShaped("xkdeco_hollow_steel_frame", <item:xkdeco:hollow_steel_frame> * 20,
  [[<tag:items:forge:ingots/steel_crafting>, <item:minecraft:air>, <tag:items:forge:ingots/steel_crafting>],
  [<item:minecraft:air>, <tag:items:forge:ingots/steel_crafting>, <item:minecraft:air>],
  [<tag:items:forge:ingots/steel_crafting>, <item:minecraft:air>, <tag:items:forge:ingots/steel_crafting>]], null);