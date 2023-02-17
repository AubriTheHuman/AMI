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

    # og malum recipes
mods.extendedcrafting.CombinationCrafting.addRecipe("hex_ash_powered", <item:malum:hex_ash>, 320, [
    <item:minecraft:gunpowder>,
    <item:malum:arcane_spirit> * 2
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("ether_powered", <item:malum:yellow_ether> * 2, 320, [
    <item:minecraft:glowstone_dust> * 4,
    <item:malum:blazing_quartz>, <item:malum:infernal_spirit> * 2, <item:malum:arcane_spirit>
], 64);

mods.extendedcrafting.CombinationCrafting.addRecipe("tainted_rock_powered", <item:malum:tainted_rock> * 16, 320, [
    <tag:items:forge:cobblestone>,
    <item:malum:arcane_spirit>, <item:malum:sacred_spirit> * 2
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("twisted_rock_powered", <item:malum:twisted_rock> * 16, 320, [
    <tag:items:forge:cobblestone>,
    <item:malum:arcane_spirit>, <item:malum:wicked_spirit> * 2
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("cleansed_rock_powered", <item:malum:cleansed_rock> * 16, 320, [
    <item:minecraft:granite>,
    <item:malum:arcane_spirit>, <item:malum:earthen_spirit>
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("purified_rock_powered", <item:malum:purified_rock> * 16, 320, [
    <item:minecraft:diorite>,
    <item:malum:arcane_spirit>, <item:malum:earthen_spirit>
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("eroded_rock_powered", <item:malum:eroded_rock> * 16, 320, [
    <item:minecraft:andesite>,
    <item:malum:arcane_spirit>, <item:malum:earthen_spirit>
], 64);

mods.extendedcrafting.CombinationCrafting.addRecipe("sacrificial_dagger_powered", <item:malum:sacrificial_dagger>, 320, [
    <item:minecraft:iron_sword>,
    <item:malum:tainted_rock>, <item:malum:soulstone>, <item:malum:runewood_planks>,
    <item:malum:earth_spirit> * 8
], 64);

mods.extendedcrafting.CombinationCrafting.addRecipe("totem_base_powered", <item:malum:totem_base>, 320, [
    <item:malum:runewood_log> * 4,
    <item:malum:runewood_planks>, <item:malum:runewood_planks>,
    <item:malum:arcane_spirit> * 2, <item:malum:earth_spirit> * 4
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("rune_table_powered", <item:malum:rune_table>, 320, [
    <item:malum:twisted_rock_item_pedestal>,
    <item:malum:runewood_planks>, <item:malum:runewood_planks>,
    <item:malum:arcane_spirit> * 2, <item:malum:earth_spirit> * 4
], 64);

mods.extendedcrafting.CombinationCrafting.addRecipe("ring_of_arcane_reach_powered", <item:malum:ring_of_arcane_reach>, 320, [
    <item:malum:gilded_ring>,
    <item:malum:soulstone>, <item:malum:soulstone>, <item:malum:soulstone>, <item:malum:hallowed_gold_ingot>, <item:malum:hallowed_spirit_resonator>,
    <item:malum:sacred_spirit> * 4
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("ring_of_prowess_powered", <item:malum:ring_of_prowess>, 320, [
    <item:malum:gilded_ring>,
    <item:malum:soulstone>, <item:malum:confined_brilliance>, <item:malum:confined_brilliance>, <item:malum:confined_brilliance>, <item:malum:hallowed_spirit_resonator>,
    <item:malum:arcane_spirit> * 4
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("ring_of_arcane_spoil_powered", <item:malum:ring_of_arcane_spoil>, 320, [
    <item:malum:ornate_ring>,
    <item:malum:soulstone>, <item:malum:soulstone>, <item:malum:soulstone>, <item:malum:soul_stained_steel_ingot>, <item:malum:stained_spirit_resonator>,
    <item:malum:wicked_spirit> * 4
], 64);

mods.extendedcrafting.CombinationCrafting.addRecipe("radiant_soulstone_powered", <item:malum:radiant_soulstone>, 320, [
    <item:malum:soulstone> * 2,
    <item:malum:hex_ash>, <item:minecraft:phantom_membrane>,
    <item:malum:wicked_spirit> * 2, <item:malum:sacred_spirit> * 2, <item:malum:arcane_spirit>
], 64);

mods.extendedcrafting.CombinationCrafting.addRecipe("tyrving_powered", <item:malum:tyrving>, 320, [
    <item:malum:soul_stained_steel_sword>,
    <item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:malum:tainted_rock>, <item:malum:soulstone>, <item:malum:hex_ash>,
    <item:malum:eldritch_spirit> * 2, <item:malum:wicked_spirit> * 12
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("awakened_tyrving_powered", <item:malum:awakened_tyrving>, 320, [
    <item:malum:tyrving>,
    <item:minecraft:obsidian>, <item:malum:twisted_rock>, <item:malum:radiant_soulstone>, <item:minecraft:nether_star>,
    <item:malum:wicked_spirit> * 32
], 64);

mods.extendedcrafting.CombinationCrafting.addRecipe("soul_stained_stronghold_helmet_powered", <item:malum:soul_stained_stronghold_helmet>, 320, [
    <item:malum:soul_stained_steel_helmet>,
    <item:minecraft:netherite_scrap>, <item:malum:tainted_rock>, <item:malum:soul_stained_steel_ingot>, <item:malum:radiant_soulstone>, <item:malum:hex_ash>,
    <item:malum:eldritch_spirit> * 2, <item:malum:earthen_spirit> * 6, <item:malum:arcane_spirit> * 12, <item:malum:wicked_spirit> * 12
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("soul_stained_stronghold_chestplate_powered", <item:malum:soul_stained_stronghold_chestplate>, 320, [
    <item:malum:soul_stained_steel_chestplate>,
    <item:minecraft:netherite_scrap>, <item:malum:tainted_rock>, <item:malum:soul_stained_steel_ingot>, <item:malum:radiant_soulstone>, <item:malum:hex_ash>,
    <item:malum:eldritch_spirit> * 2, <item:malum:infernal_spirit> * 6, <item:malum:arcane_spirit> * 12, <item:malum:wicked_spirit> * 12
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("soul_stained_stronghold_leggings_powered", <item:malum:soul_stained_stronghold_leggings>, 320, [
    <item:malum:soul_stained_steel_leggings>,
    <item:minecraft:netherite_scrap>, <item:malum:tainted_rock>, <item:malum:soul_stained_steel_ingot>, <item:malum:radiant_soulstone>, <item:malum:hex_ash>,
    <item:malum:eldritch_spirit> * 2, <item:malum:aerial_spirit> * 6, <item:malum:arcane_spirit> * 12, <item:malum:wicked_spirit> * 12
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("soul_stained_stronghold_boots_powered", <item:malum:soul_stained_stronghold_boots>, 320, [
    <item:malum:soul_stained_steel_boots>,
    <item:minecraft:netherite_scrap>, <item:malum:tainted_rock>, <item:malum:soul_stained_steel_ingot>, <item:malum:radiant_soulstone>, <item:malum:hex_ash>,
    <item:malum:eldritch_spirit> * 2, <item:malum:aquatic_spirit> * 6, <item:malum:arcane_spirit> * 12, <item:malum:wicked_spirit> * 12
], 64);

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

mods.extendedcrafting.CombinationCrafting.addRecipe("autolube", <item:immersivepetroleum:auto_lubricator>, 640, [
    <item:malum:hex_ash>,
    <item:amicore:lv_circuit>, <item:amicore:transmissive_gearbox>, <item:immersiveengineering:fluid_pipe>, <item:create:mechanical_pump>, 
    <item:malum:arcane_spirit> * 4, <item:malum:electric_spirit> * 2, <item:malum:mechanical_spirit> *4, <item:malum:magnetic_spirit> * 4
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("megatorch", <item:torchmaster:megatorch>, 640, [
    <item:malum:hex_ash>,
    <item:minecraft:oak_log>, <item:minecraft:oak_log>, <item:minecraft:diamond>, <item:minecraft:gold_block>, <item:malum:arcane_spirit> * 4, 
    <item:malum:ruinous_spirit> * 2, <item:malum:tempestuous_spirit> *4, <item:malum:magnetic_spirit> * 4
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("feral_flare_lantern", <item:torchmaster:feral_flare_lantern>, 640, [
    <item:malum:hex_ash>,
    <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:glowstone_dust>, 
    <item:malum:arcane_spirit> * 4, <item:malum:electric_spirit> * 2, <item:malum:tempestuous_spirit> *4, <item:malum:magnetic_spirit> * 4
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("dreadlamp", <item:torchmaster:dreadlamp>, 640, [
    <item:malum:hex_ash>,
    <item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>, <item:minecraft:obsidian>,
    <item:malum:wicked_spirit> * 4, <item:malum:ruinous_spirit> * 4, <item:malum:tempestuous_spirit> *4, <item:malum:malicious_spirit> * 4
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("brass_encased_jet", <item:create_stuff_additions:encased_jet_chestplate>, 640, [
    <item:malum:hex_ash>,
    <item:create_stuff_additions:brass_chestplate>, <item:amicore:transmissive_gearbox>, <item:create:encased_fan>, <item:create:encased_fan>, 
    <item:malum:aerial_spirit> * 4, <item:malum:mechanical_spirit> * 16, <item:malum:tempestuous_spirit> * 16, <item:malum:magnetic_spirit> * 4
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("travel_staff", <item:travel_anchors:travel_staff>, 640, [
    <item:malum:hex_ash>,
    <item:amicore:steel_rod>, <item:amicore:lv_circuit>, <item:amicore:ender_core>, <item:amicore:steel_rod>, 
    <item:malum:eldritch_spirit> * 16, <item:malum:electric_spirit> * 16, <item:malum:aerial_spirit> * 16, <item:malum:magnetic_spirit> * 16
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("travel_anchor", <item:travel_anchors:travel_anchor>, 640, [
    <item:malum:hex_ash>,
    <item:amicore:steel_large_sheet>, <item:amicore:lv_circuit>, <item:amicore:ender_core>, <item:amicore:steel_large_sheet>, 
    <item:malum:eldritch_spirit> * 4, <item:malum:electric_spirit> * 4, <item:malum:aerial_spirit> * 4, <item:malum:magnetic_spirit> * 4
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("ender_pouch", <item:enderstorage:ender_pouch>, 640, [
    <item:malum:hex_ash>,
    <item:minecraft:leather>, <item:minecraft:blaze_powder>, <item:amicore:ender_core>, <item:minecraft:leather>, 
    <item:malum:eldritch_spirit> * 16, <item:malum:tempestuous_spirit> * 16, <item:malum:aerial_spirit> * 16, <item:malum:magnetic_spirit> * 16
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("quartz_growth_accelerator", <item:appliedenergistics2:quartz_growth_accelerator>, 640, [
    <item:malum:hex_ash>,
    <item:appliedenergistics2:fluix_block>, <item:appliedenergistics2:fluix_glass_cable>, <item:amicore:mv_circuit>, <item:appliedenergistics2:fluix_glass_cable>, 
    <item:malum:electric_spirit> * 2, <item:malum:earthen_spirit> * 16, <item:malum:herbal_spirit> * 4, <item:malum:magnetic_spirit> * 2
], 64);
mods.extendedcrafting.CombinationCrafting.addRecipe("inscriber", <item:appliedenergistics2:inscriber>, 640, [
    <item:malum:hex_ash>,
    <item:appliedenergistics2:fluix_crystal>, <item:minecraft:piston>, <item:amicore:steel_large_sheet>, <item:minecraft:piston>, 
    <item:malum:electric_spirit> * 8, <item:malum:earthen_spirit> * 4, <item:malum:mechanical_spirit> * 16, <item:malum:ruinous_spirit> * 2
], 64);


# attempting to translate the artisan recipes