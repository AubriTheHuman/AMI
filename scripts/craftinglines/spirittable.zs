#auto lubricator

mods.amicore.SpiritAltarHandler.clearMalumRecipes();


craftingTable.removeRecipe(<item:immersivepetroleum:auto_lubricator>);
mods.amicore.SpiritAltarHandler.addRecipe("pop", <item:minecraft:glass>, <item:immersivepetroleum:auto_lubricator>, [<item:amicore:lv_circuit>, <item:amicore:transmissive_gearbox>, <item:immersiveengineering:fluid_pipe>, <item:create:mechanical_pump>], [<item:malum:arcane_spirit> * 4, <item:malum:electric_spirit> * 2, <item:malum:mechanical_spirit> *4, <item:malum:magnetic_spirit> * 4]);

craftingTable.removeRecipe(<item:torchmaster:megatorch>);
craftingTable.removeRecipe(<item:torchmaster:feral_flare_lantern>);
craftingTable.removeRecipe(<item:torchmaster:dreadlamp>);
mods.amicore.SpiritAltarHandler.addRecipe("megatorch", <item:minecraft:glass>, <item:torchmaster:megatorch>, [<item:minecraft:oak_log>, <item:minecraft:oak_log>, <item:minecraft:diamond>, <item:minecraft:gold_block>], [<item:malum:arcane_spirit> * 4, <item:malum:ruinous_spirit> * 2, <item:malum:tempestuous_spirit> *4, <item:malum:magnetic_spirit> * 4]);
mods.amicore.SpiritAltarHandler.addRecipe("feral_flare_lantern", <item:minecraft:glass>, <item:torchmaster:feral_flare_lantern>, [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:glowstone_dust>], [<item:malum:arcane_spirit> * 4, <item:malum:electric_spirit> * 2, <item:malum:tempestuous_spirit> *4, <item:malum:magnetic_spirit> * 4]);
mods.amicore.SpiritAltarHandler.addRecipe("dreadlamp", <item:minecraft:glass>, <item:torchmaster:dreadlamp>, [<item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>], [<item:malum:wicked_spirit> * 4, <item:malum:ruinous_spirit> * 4, <item:malum:tempestuous_spirit> *4, <item:malum:malicious_spirit> * 4]);

mods.amicore.SpiritAltarHandler.addRecipe("brass_encased_jet", <item:minecraft:glass>, <item:create_stuff_additions:encased_jet_chestplate>, [<item:create_stuff_additions:brass_chestplate>, <item:amicore:transmissive_gearbox>, <item:create:encased_fan>, <item:create:encased_fan>], [<item:malum:aerial_spirit> * 4, <item:malum:mechanical_spirit> * 16, <item:malum:tempestuous_spirit> * 16, <item:malum:magnetic_spirit> * 4]);

craftingTable.removeRecipe(<item:travel_anchors:travel_staff>);
craftingTable.removeRecipe(<item:travel_anchors:travel_anchor>);
mods.amicore.SpiritAltarHandler.addRecipe("travel_staff", <item:minecraft:glass>, <item:travel_anchors:travel_staff>, [<item:amicore:steel_rod>, <item:amicore:lv_circuit>, <item:amicore:ender_core>, <item:amicore:steel_rod>], [<item:malum:eldritch_spirit> * 16, <item:malum:electric_spirit> * 16, <item:malum:aerial_spirit> * 16, <item:malum:magnetic_spirit> * 16]);
mods.amicore.SpiritAltarHandler.addRecipe("travel_anchor", <item:minecraft:glass>, <item:travel_anchors:travel_anchor>, [<item:amicore:steel_large_sheet>, <item:amicore:lv_circuit>, <item:amicore:ender_core>, <item:amicore:steel_large_sheet>], [<item:malum:eldritch_spirit> * 4, <item:malum:electric_spirit> * 4, <item:malum:aerial_spirit> * 4, <item:malum:magnetic_spirit> * 4]);

mods.amicore.SpiritAltarHandler.addRecipe("ender_pouch", <item:minecraft:glass>, <item:enderstorage:ender_pouch>, [<item:minecraft:leather>, <item:minecraft:blaze_powder>, <item:amicore:ender_core>, <item:minecraft:leather>], [<item:malum:eldritch_spirit> * 16, <item:malum:tempestuous_spirit> * 16, <item:malum:aerial_spirit> * 16, <item:malum:magnetic_spirit> * 16]);

craftingTable.removeRecipe(<item:appliedenergistics2:quartz_growth_accelerator>);
craftingTable.removeByName("appliedenergistics2:decorative/fluix_block");
mods.amicore.SpiritAltarHandler.addRecipe("quartz_growth_accelerator", <item:minecraft:glass>, <item:appliedenergistics2:quartz_growth_accelerator>, [<item:appliedenergistics2:fluix_block>, <item:appliedenergistics2:fluix_glass_cable>, <item:amicore:mv_circuit>, <item:appliedenergistics2:fluix_glass_cable>], [<item:malum:electric_spirit> * 2, <item:malum:earthen_spirit> * 16, <item:malum:herbal_spirit> * 4, <item:malum:magnetic_spirit> * 2]);

craftingTable.removeRecipe(<item:appliedenergistics2:inscriber>);
mods.amicore.SpiritAltarHandler.addRecipe("inscriber", <item:minecraft:glass>, <item:appliedenergistics2:inscriber>, [<item:appliedenergistics2:fluix_crystal>, <item:minecraft:piston>, <item:amicore:steel_large_sheet>, <item:minecraft:piston>], [<item:malum:electric_spirit> * 8, <item:malum:earthen_spirit> * 4, <item:malum:mechanical_spirit> * 16, <item:malum:ruinous_spirit> * 2]);
