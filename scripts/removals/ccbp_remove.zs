# mods.jei.JEI.hideItem(<item:cavesandcliffs:deepslate_coal_ore>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:copper_ore>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:deepslate_iron_ore>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:deepslate_copper_ore>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:deepslate_gold_ore>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:deepslate_redstone_ore>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:deepslate_emerald_ore>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:deepslate_lapis_ore>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:deepslate_diamond_ore>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:raw_iron>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:raw_copper>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:raw_gold>);
# mods.jei.JEI.hideItem(<item:cavesandcliffs:copper_ingot>);

# craftingTable.removeRecipe(<item:cavesandcliffs:copper_block>);
# craftingTable.removeByName("cavesandcliffs:copper_ingot");
# craftingTable.removeRecipe(<item:cavesandcliffs:raw_iron_block>);
# craftingTable.removeRecipe(<item:cavesandcliffs:raw_gold_block>);
# craftingTable.removeRecipe(<item:cavesandcliffs:raw_copper_block>);
# craftingTable.addShaped("ccbp_copper_block", <item:cavesandcliffs:copper_block>,
#   [[<tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>],
#   [<tag:items:forge:ingots/copper>, <tag:items:forge:ingots/copper>]], null);
# craftingTable.addShaped("ccbp_raw_iron_1", <item:cavesandcliffs:raw_iron_block>,
#   [[<tag:items:forge:ores/iron>, <tag:items:forge:ores/iron>],
#   [<tag:items:forge:ores/iron>, <tag:items:forge:ores/iron>]], null);
# craftingTable.addShaped("ccbp_raw_copper", <item:cavesandcliffs:raw_copper_block>,
#   [[<tag:items:forge:ores/copper>, <tag:items:forge:ores/copper>],
#   [<tag:items:forge:ores/copper>, <tag:items:forge:ores/copper>]], null);
# craftingTable.addShaped("ccbp_raw_gold", <item:cavesandcliffs:raw_gold_block>,
#   [[<tag:items:forge:ores/gold>, <tag:items:forge:ores/gold>],
#   [<tag:items:forge:ores/gold>, <tag:items:forge:ores/gold>]], null);