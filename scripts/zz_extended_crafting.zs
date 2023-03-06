#priority 1

import mods.artisanworktables.Recipe;
import mods.artisanworktables.Type;

# crafting the extended crafting tables

Recipe.type(Type.CHEMIST)
  .shaped([[<tag:items:forge:plates/magnesium>, <item:amicore:crude_steel_mech_component>, <tag:items:forge:plates/magnesium>],
  [<item:malum:radiant_soulstone>,<item:malum:spirit_altar>, <item:malum:radiant_soulstone>],
  [<item:amicore:lv_circuit>, <item:malum:yellow_ether>, <item:amicore:lv_circuit>]])
  .output(<item:extendedcrafting:crafting_core>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*12, <item:malum:magnetic_spirit>*4, <item:malum:electric_spirit>*4,<item:malum:mechanical_spirit>*4])
  .register();
Recipe.type(Type.CHEMIST)
  .shaped([[<tag:items:forge:plates/magnesium>, <item:amicore:crude_steel_mech_component>, <tag:items:forge:plates/magnesium>],
  [<item:minecraft:air>,<item:malum:stripped_runewood_log>, <item:minecraft:air>],
  [<item:malum:runewood_planks>, <item:malum:stripped_runewood_log>, <item:malum:runewood_planks>]])
  .output(<item:extendedcrafting:pedestal>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/handsaw>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*2, <item:amicore:wooden_bolt>*4, <item:malum:magnetic_spirit>*4])
  .register();

Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:rods/steel>, <item:amicore:steel_mech_component>, <tag:items:forge:rods/steel>],
  [<tag:items:forge:large_sheets/steel>, <item:amicore:high_torque_gearbox>, <tag:items:forge:large_sheets/steel>],
  [<tag:items:forge:rounded_sheets/netherite>,<item:artisanworktables:workshop_engineer>, <tag:items:forge:rounded_sheets/netherite>],
  [<item:amicore:lv_circuit>, <item:appliedenergistics2:inscriber>, <item:amicore:lv_circuit>]])
  .output(<item:extendedcrafting:basic_auto_table>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/solderer>, 1)
  .secondary([<item:amicore:steel_bolt>*12, <item:amicore:netherite_bolt>*6])
  .register();


# malum spirit recipe transfer

mods.amicore.SpiritAltarHandler.clearMalumRecipes();

mods.amicore.SpiritAltarHandler.addRecipe("hex_ash", <item:minecraft:gunpowder>, <item:malum:hex_ash>, [], [<item:malum:arcane_spirit> * 2]);
mods.amicore.SpiritAltarHandler.addRecipe("tainted_rock", <item:minecraft:cobblestone> * 16, <item:malum:tainted_rock> * 16, [], [<item:malum:sacred_spirit> * 2, <item:malum:arcane_spirit>]);
mods.amicore.SpiritAltarHandler.addRecipe("twisted_rock", <item:minecraft:cobblestone> * 16, <item:malum:twisted_rock> * 16, [], [<item:malum:wicked_spirit> * 2, <item:malum:arcane_spirit>]);
mods.amicore.SpiritAltarHandler.addRecipe("cleansed_rock", <item:minecraft:granite> * 16, <item:malum:cleansed_rock> * 16, [], [<item:malum:earthen_spirit>, <item:malum:arcane_spirit>]);
mods.amicore.SpiritAltarHandler.addRecipe("purified_rock", <item:minecraft:diorite> * 16, <item:malum:purified_rock> * 16, [], [<item:malum:earthen_spirit>, <item:malum:arcane_spirit>]);
mods.amicore.SpiritAltarHandler.addRecipe("eroded_rock", <item:minecraft:andesite> * 16, <item:malum:eroded_rock> * 16, [], [<item:malum:earthen_spirit>, <item:malum:arcane_spirit>]);
mods.amicore.SpiritAltarHandler.addRecipe("sacrificial_dagger", <item:minecraft:iron_sword>, <item:malum:sacrificial_dagger>, [<item:malum:tainted_rock>, <item:malum:runewood_planks>, <item:malum:soulstone>], [<item:malum:earthen_spirit> * 8]);
mods.amicore.SpiritAltarHandler.addRecipe("yellow_ether", <item:minecraft:glowstone_dust> * 4, <item:malum:yellow_ether> * 2, [<item:malum:blazing_quartz>], [<item:malum:infernal_spirit> * 2, <item:malum:arcane_spirit>]);
mods.amicore.SpiritAltarHandler.addRecipe("totem_base", <item:malum:runewood_log>, <item:malum:totem_base>, [<item:malum:runewood_planks>, <item:malum:runewood_planks>], [<item:malum:arcane_spirit> * 2,<item:malum:earthen_spirit> * 4]);
mods.amicore.SpiritAltarHandler.addRecipe("rune_table", <item:malum:twisted_rock_item_pedestal>, <item:malum:rune_table>, [<item:malum:runewood_planks>, <item:malum:runewood_planks>], [<item:malum:arcane_spirit> * 2, <item:malum:earthen_spirit> * 4]);

mods.amicore.SpiritAltarHandler.addRecipe("ring_of_arcane_reach", <item:malum:gilded_ring>, <item:malum:ring_of_arcane_reach>, [<item:malum:hallowed_gold_ingot>, <item:malum:hallowed_spirit_resonator>, <item:malum:soulstone>, <item:malum:soulstone>, <item:malum:soulstone>], [<item:malum:sacred_spirit> * 4]);
mods.amicore.SpiritAltarHandler.addRecipe("ring_of_prowess", <item:malum:gilded_ring>, <item:malum:ring_of_prowess>, [<item:malum:hallowed_spirit_resonator>, <item:malum:soulstone>, <item:malum:confined_brilliance>, <item:malum:confined_brilliance>, <item:malum:confined_brilliance>], [<item:malum:sacred_spirit> * 2]);
mods.amicore.SpiritAltarHandler.addRecipe("ring_of_arcane_spoil", <item:malum:ornate_ring>, <item:malum:ring_of_arcane_spoil>, [<item:malum:soul_stained_steel_ingot>, <item:malum:stained_spirit_resonator>, <item:malum:soulstone>, <item:malum:soulstone>, <item:malum:soulstone>], [<item:malum:arcane_spirit> * 4]);

mods.amicore.SpiritAltarHandler.addRecipe("tyrving", <item:malum:soul_stained_steel_sword>, <item:malum:tyrving>, [<item:malum:soulstone>, <item:minecraft:obsidian>, <item:malum:twisted_rock>, <item:minecraft:obsidian>, <item:malum:hex_ash>], [<item:malum:wicked_spirit> * 12, <item:malum:eldritch_spirit> * 2]);



    # og malum recipes
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("hex_ash_powered", <item:malum:hex_ash>, 6400, [
    <item:minecraft:gunpowder>,
    <item:malum:arcane_spirit> * 2
], 64, 1.0);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("ether_powered", <item:malum:yellow_ether> * 2, 6400, [
    <item:minecraft:glowstone_dust> * 4,
    <item:malum:blazing_quartz>, <item:malum:infernal_spirit> * 2, <item:malum:arcane_spirit>
], 64, 1.0);
                    
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("radiant_soulstone_powered", <item:malum:radiant_soulstone>, 6400, [
    <item:malum:soulstone> * 2,
    <item:malum:hex_ash>, <item:minecraft:phantom_membrane>,
    <item:malum:wicked_spirit> * 2, <item:malum:sacred_spirit> * 2, <item:malum:arcane_spirit>
], 64, 0.9);

mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("awakened_tyrving_powered", <item:malum:awakened_tyrving>, 6400, [
    <item:malum:tyrving>,
    <item:minecraft:obsidian>, <item:malum:twisted_rock>, <item:malum:radiant_soulstone>, <item:minecraft:nether_star>,
    <item:malum:wicked_spirit> * 32
], 64, 0.5);

mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("soul_stained_stronghold_helmet_powered", <item:malum:soul_stained_stronghold_helmet>, 6400, [
    <item:malum:soul_stained_steel_helmet>,
    <item:minecraft:netherite_scrap>, <item:malum:tainted_rock>, <item:malum:soul_stained_steel_ingot>, <item:malum:radiant_soulstone>, <item:malum:hex_ash>,
    <item:malum:eldritch_spirit> * 2, <item:malum:earthen_spirit> * 6, <item:malum:arcane_spirit> * 12, <item:malum:wicked_spirit> * 12
], 64, 0.2);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("soul_stained_stronghold_chestplate_powered", <item:malum:soul_stained_stronghold_chestplate>, 6400, [
    <item:malum:soul_stained_steel_chestplate>,
    <item:minecraft:netherite_scrap>, <item:malum:tainted_rock>, <item:malum:soul_stained_steel_ingot>, <item:malum:radiant_soulstone>, <item:malum:hex_ash>,
    <item:malum:eldritch_spirit> * 2, <item:malum:infernal_spirit> * 6, <item:malum:arcane_spirit> * 12, <item:malum:wicked_spirit> * 12
], 64, 0.2);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("soul_stained_stronghold_leggings_powered", <item:malum:soul_stained_stronghold_leggings>, 6400, [
    <item:malum:soul_stained_steel_leggings>,
    <item:minecraft:netherite_scrap>, <item:malum:tainted_rock>, <item:malum:soul_stained_steel_ingot>, <item:malum:radiant_soulstone>, <item:malum:hex_ash>,
    <item:malum:eldritch_spirit> * 2, <item:malum:aerial_spirit> * 6, <item:malum:arcane_spirit> * 12, <item:malum:wicked_spirit> * 12
], 64, 0.2);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("soul_stained_stronghold_boots_powered", <item:malum:soul_stained_stronghold_boots>, 6400, [
    <item:malum:soul_stained_steel_boots>,
    <item:minecraft:netherite_scrap>, <item:malum:tainted_rock>, <item:malum:soul_stained_steel_ingot>, <item:malum:radiant_soulstone>, <item:malum:hex_ash>,
    <item:malum:eldritch_spirit> * 2, <item:malum:aquatic_spirit> * 6, <item:malum:arcane_spirit> * 12, <item:malum:wicked_spirit> * 12
], 64, 0.2);

#rune table edits
mods.amicore.RuneTableHandler.clearMalumRecipes();
mods.amicore.RuneTableHandler.regenMalumRecipes();
mods.amicore.RuneTableHandler.removeMalumRecipeByIndex(9);
mods.amicore.RuneTableHandler.removeMalumRecipeByIndex(8);


craftingTable.removeRecipe(<item:immersivepetroleum:auto_lubricator>);
craftingTable.removeRecipe(<item:torchmaster:megatorch>);
craftingTable.removeRecipe(<item:torchmaster:feral_flare_lantern>);
craftingTable.removeRecipe(<item:torchmaster:dreadlamp>);
craftingTable.removeRecipe(<item:create_stuff_additions:encased_jet_chestplate>);
craftingTable.removeRecipe(<item:travel_anchors:travel_staff>);
craftingTable.removeRecipe(<item:travel_anchors:travel_anchor>);
craftingTable.removeRecipe(<item:appliedenergistics2:quartz_growth_accelerator>);
craftingTable.removeRecipe(<item:appliedenergistics2:inscriber>);
craftingTable.removeByName("appliedenergistics2:decorative/fluix_block");

mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("autolube", <item:immersivepetroleum:auto_lubricator>, 12800, [
    <item:malum:hex_ash>,
    <item:amicore:lv_circuit>, <item:amicore:transmissive_gearbox>, <item:immersiveengineering:fluid_pipe>, <item:create:mechanical_pump>, 
    <item:malum:arcane_spirit> * 4, <item:malum:electric_spirit> * 2, <item:malum:mechanical_spirit> *4, <item:malum:magnetic_spirit> * 4
], 64, 0.9);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("megatorch", <item:torchmaster:megatorch>, 12800, [
    <item:malum:hex_ash>,
    <item:minecraft:oak_log>, <item:minecraft:oak_log>, <item:minecraft:diamond>, <item:minecraft:gold_block>, <item:malum:arcane_spirit> * 4, 
    <item:malum:ruinous_spirit> * 2, <item:malum:tempestuous_spirit> *4, <item:malum:magnetic_spirit> * 4
], 64, 0.9);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("feral_flare_lantern", <item:torchmaster:feral_flare_lantern>, 12800, [
    <item:malum:hex_ash>,
    <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:glowstone_dust>, 
    <item:malum:arcane_spirit> * 4, <item:malum:electric_spirit> * 2, <item:malum:tempestuous_spirit> *4, <item:malum:magnetic_spirit> * 4
], 64, 0.8);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("dreadlamp", <item:torchmaster:dreadlamp>, 12800, [
    <item:malum:hex_ash>,
    <item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>,
    <item:malum:wicked_spirit> * 4, <item:malum:ruinous_spirit> * 4, <item:malum:tempestuous_spirit> *4, <item:malum:malicious_spirit> * 4
], 64, 0.8);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("brass_encased_jet", <item:create_stuff_additions:encased_jet_chestplate>, 12800, [
    <item:malum:hex_ash>,
    <item:create_stuff_additions:brass_chestplate>, <item:amicore:transmissive_gearbox>, <item:create:encased_fan>, <item:create:encased_fan>, 
    <item:malum:aerial_spirit> * 4, <item:malum:mechanical_spirit> * 16, <item:malum:tempestuous_spirit> * 16, <item:malum:magnetic_spirit> * 4
], 64, 0.75);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("travel_staff", <item:travel_anchors:travel_staff>, 12800, [
    <item:malum:hex_ash>,
    <item:amicore:steel_rod>, <item:amicore:lv_circuit>, <item:amicore:ender_core>, <item:amicore:steel_rod>, 
    <item:malum:eldritch_spirit> * 16, <item:malum:electric_spirit> * 16, <item:malum:aerial_spirit> * 16, <item:malum:magnetic_spirit> * 16
], 6, 0.75);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("travel_anchor", <item:travel_anchors:travel_anchor>, 12800, [
    <item:malum:hex_ash>,
    <item:amicore:steel_large_sheet>, <item:amicore:lv_circuit>, <item:amicore:ender_core>, <item:amicore:steel_large_sheet>, 
    <item:malum:eldritch_spirit> * 4, <item:malum:electric_spirit> * 4, <item:malum:aerial_spirit> * 4, <item:malum:magnetic_spirit> * 4
], 64, 0.9);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("ender_pouch", <item:enderstorage:ender_pouch>, 12800, [
    <item:malum:hex_ash>,
    <item:minecraft:leather>, <item:minecraft:blaze_powder>, <item:amicore:ender_core>, <item:minecraft:leather>, 
    <item:malum:eldritch_spirit> * 16, <item:malum:tempestuous_spirit> * 16, <item:malum:aerial_spirit> * 16, <item:malum:magnetic_spirit> * 16
], 64, 0.9);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("quartz_growth_accelerator", <item:appliedenergistics2:quartz_growth_accelerator>, 12800, [
    <item:malum:hex_ash>,
    <item:appliedenergistics2:fluix_block>, <item:appliedenergistics2:fluix_glass_cable>, <item:amicore:mv_circuit>, <item:appliedenergistics2:fluix_glass_cable>, 
    <item:malum:electric_spirit> * 2, <item:malum:earthen_spirit> * 16, <item:malum:herbal_spirit> * 4, <item:malum:magnetic_spirit> * 2
], 64, 0.6);
mods.amicore.StabilityCombinationCrafting.addStabilityRecipe("inscriber", <item:appliedenergistics2:inscriber>, 12800, [
    <item:malum:hex_ash>,
    <item:appliedenergistics2:fluix_crystal>, <item:minecraft:piston>, <item:amicore:steel_large_sheet>, <item:minecraft:piston>, 
    <item:malum:electric_spirit> * 8, <item:malum:earthen_spirit> * 4, <item:malum:mechanical_spirit> * 16, <item:malum:ruinous_spirit> * 2
], 64, 0.9);

// mods.amicore.SpiritAltarHandler.addRecipe("pop", <item:minecraft:glass>, <item:immersivepetroleum:auto_lubricator>, [<item:amicore:lv_circuit>, <item:amicore:transmissive_gearbox>, <item:immersiveengineering:fluid_pipe>, <item:create:mechanical_pump>], [<item:malum:arcane_spirit> * 4, <item:malum:electric_spirit> * 2, <item:malum:mechanical_spirit> *4, <item:malum:magnetic_spirit> * 4]);



# attempting to translate the artisan recipes
