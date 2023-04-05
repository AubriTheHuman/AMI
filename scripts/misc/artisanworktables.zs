import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import mods.artisanworktables.Recipe;
import mods.artisanworktables.Type;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.SmithingManager;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.TagManagerItem;


mods.jei.JEI.hideItem(<item:artisanworktables:worktable_tailor>);
mods.jei.JEI.hideItem(<item:artisanworktables:workstation_tailor>);
mods.jei.JEI.hideItem(<item:artisanworktables:workshop_tailor>);
mods.jei.JEI.hideItem(<item:artisanworktables:worktable_mason>);
mods.jei.JEI.hideItem(<item:artisanworktables:workstation_mason>);
mods.jei.JEI.hideItem(<item:artisanworktables:workshop_mason>);
mods.jei.JEI.hideItem(<item:artisanworktables:worktable_jeweler>);
mods.jei.JEI.hideItem(<item:artisanworktables:workstation_jeweler>);
mods.jei.JEI.hideItem(<item:artisanworktables:workshop_jeweler>);
mods.jei.JEI.hideItem(<item:artisanworktables:worktable_scribe>);
mods.jei.JEI.hideItem(<item:artisanworktables:workstation_scribe>);
mods.jei.JEI.hideItem(<item:artisanworktables:workshop_scribe>);
mods.jei.JEI.hideItem(<item:artisanworktables:worktable_farmer>);
mods.jei.JEI.hideItem(<item:artisanworktables:workstation_farmer>);
mods.jei.JEI.hideItem(<item:artisanworktables:workshop_farmer>);
mods.jei.JEI.hideItem(<item:artisanworktables:worktable_chef>);
mods.jei.JEI.hideItem(<item:artisanworktables:workstation_chef>);
mods.jei.JEI.hideItem(<item:artisanworktables:workshop_chef>);
mods.jei.JEI.hideItem(<item:artisanworktables:worktable_tanner>);
mods.jei.JEI.hideItem(<item:artisanworktables:workstation_tanner>);
mods.jei.JEI.hideItem(<item:artisanworktables:workshop_tanner>);
mods.jei.JEI.hideItem(<item:artisanworktables:worktable_potter>);
mods.jei.JEI.hideItem(<item:artisanworktables:workstation_potter>);
mods.jei.JEI.hideItem(<item:artisanworktables:workshop_potter>);

val toolMats = [
	['flint', 'Flint', 0x191919, 32],
	['copper', 'Copper', 0xFFA131, 64],
	['invar', 'Invar', 0x8E9A95, 192],
	['nickel', 'Nickel', 0xA2975D, 96],
	['silver', 'Silver', 0x7B9DA4, 96],
	['tin', 'Tin', 0x7C9AB2, 96],
	['iron', 'Iron', 0xD4D4D4, 128],
	['bronze', 'Bronze', 0xD5905C, 128],
	['silicon_brass', 'Silicon Brass', 0xCEBD77, 128],
	['thallasium', 'Thallasium', 0x74C4C9, 128],
	['crude_steel', 'Crude Steel', 0x70848F, 320],
	['steel', 'Steel', 0x949CA1, 384],
	['terminite', 'Terminite', 0x00D392, 256],
	['diamond', 'Diamond', 0x33EBCB, 512],
	['netherite', 'Netherite', 0x756975, 768],
	['aeternium', 'Aeternium', 0x4E8250, 1024],
	['pendorite', 'Pendorite', 0x784B76, 1024],
	['soul_stained_steel', 'Soul Stained Steel', 0x9B5DB7, 1024]
] as string[][];


#UNDONE
craftingTable.addShaped("blacksmith_workshop", <item:artisanworktables:workshop_blacksmith>, [
    [<tag:items:tconstruct:seared_bricks>, <tag:items:tconstruct:seared_bricks>, <tag:items:tconstruct:seared_bricks>],
    [<tag:items:forge:ingots/iron>, <item:artisanworktables:workstation_blacksmith>, <tag:items:forge:ingots/iron>],
    [<tag:items:forge:ingots/iron>, <item:minecraft:air>, <tag:items:forge:ingots/iron>]]);

craftingTable.addShaped("basic_worktable", <item:artisanworktables:worktable_basic>, [
    [<tag:items:minecraft:logs>, <tag:items:minecraft:logs>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:planks>, <tag:items:forge:workbenches>, <tag:items:minecraft:planks>],
    [<tag:items:minecraft:planks>, <item:amicore:wooden_bolt>, <tag:items:minecraft:planks>]]);
craftingTable.addShaped("basic_workstation", <item:artisanworktables:workstation_basic>, [
    [<tag:items:minecraft:logs>, <tag:items:forge:large_sheets/iron>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:logs>, <item:artisanworktables:worktable_basic>, <tag:items:minecraft:logs>],
    [<tag:items:forge:rods/iron>, <item:minecraft:air>, <tag:items:forge:rods/iron>]]);
#UNDONE
craftingTable.addShaped("basic_workshop", <item:artisanworktables:workshop_basic>, [
    [<tag:items:tconstruct:seared_bricks>, <tag:items:tconstruct:seared_bricks>, <tag:items:tconstruct:seared_bricks>],
    [<tag:items:forge:ingots/iron>, <item:artisanworktables:workstation_basic>, <tag:items:forge:ingots/iron>],
    [<tag:items:forge:ingots/iron>, <item:minecraft:air>, <tag:items:forge:ingots/iron>]]);

craftingTable.addShaped("carpenter_worktable", <item:artisanworktables:worktable_carpenter>, [
    [<tag:items:minecraft:logs>, <item:charm:woodcutter>, <tag:items:minecraft:logs>],
    [<tag:items:minecraft:planks>, <tag:items:forge:workbenches>, <tag:items:minecraft:planks>],
    [<tag:items:forge:ingots/iron>, <item:minecraft:air>, <tag:items:forge:ingots/iron>]]);
craftingTable.addShaped("carpenter_workstation", <item:artisanworktables:workstation_carpenter>, [
    [<item:charm:woodcutter>, <tag:items:forge:coils/iron>, <item:charm:woodcutter>],
    [<tag:items:minecraft:logs>, <item:artisanworktables:worktable_carpenter>, <tag:items:minecraft:logs>],
    [<tag:items:forge:rods/iron>, <item:minecraft:air>, <tag:items:forge:rods/iron>]]);
#UNDONE
craftingTable.addShaped("carpenter_workshop", <item:artisanworktables:workshop_carpenter>, [
    [<tag:items:tconstruct:seared_bricks>, <tag:items:tconstruct:seared_bricks>, <tag:items:tconstruct:seared_bricks>],
    [<tag:items:forge:ingots/iron>, <item:artisanworktables:workshop_carpenter>, <tag:items:forge:ingots/iron>],
    [<tag:items:forge:ingots/iron>, <item:minecraft:air>, <tag:items:forge:ingots/iron>]]);

craftingTable.addShaped("mage_worktable", <item:artisanworktables:worktable_mage>, [
    [<tag:items:forge:obsidian>, <tag:items:forge:large_sheets/zinc>, <tag:items:forge:obsidian>],
    [<tag:items:forge:obsidian>, <item:minecraft:writable_book>, <tag:items:forge:obsidian>],
    [<tag:items:forge:rods/zinc>, <tag:items:forge:workbenches>, <tag:items:forge:rods/zinc>]]);
craftingTable.addShaped("mage_workstation", <item:artisanworktables:workstation_mage>, [
    [<tag:items:forge:obsidian>, <tag:items:forge:large_sheets/magnesium>, <tag:items:forge:obsidian>],
    [<tag:items:forge:obsidian>, <item:minecraft:writable_book>, <tag:items:forge:obsidian>],
    [<tag:items:forge:rods/magnesium>, <item:artisanworktables:worktable_mage>, <tag:items:forge:rods/magnesium>]]);

craftingTable.addShaped("engineer_worktable", <item:artisanworktables:worktable_engineer>, [
    [<tag:items:forge:large_sheets/zinc>, <item:minecraft:redstone>, <tag:items:forge:large_sheets/copper>],
    [<tag:items:forge:obsidian>, <item:minecraft:piston>, <tag:items:forge:obsidian>],
    [<tag:items:forge:rods/iron>, <tag:items:forge:workbenches>, <tag:items:forge:rods/iron>]]);
craftingTable.addShaped("engineer_workstation", <item:artisanworktables:workstation_engineer>, [
    [<tag:items:forge:large_sheets/silicon_brass>, <tag:items:forge:coils/sterling_silver>, <tag:items:forge:large_sheets/lead_brass>],
    [<item:create:mechanical_mixer>, <item:create:mechanical_pump>, <item:create:mechanical_press>],
    [<tag:items:forge:rods/tin_brass>, <item:artisanworktables:worktable_engineer>, <tag:items:forge:rods/tin_brass>]]);


craftingTable.addShaped("chemist_workstation", <item:artisanworktables:workstation_chemist>, [
    [<item:create:spout>, <tag:items:forge:large_sheets/bronze>, <item:create:spout>],
    [<tag:items:forge:plates/sterling_silver>, <item:artisanworktables:worktable_basic>, <tag:items:forge:plates/sterling_silver>],
    [<tag:items:forge:rods/iron>, <item:create:smart_fluid_pipe>, <tag:items:forge:rods/iron>]]);


#UNDONE
#  craftingTable.addShaped("mage_workshop", <item:artisanworktables:workshop_basic>, [
#      [<tag:items:tconstruct:seared_bricks>, <tag:items:tconstruct:seared_bricks>, <tag:items:tconstruct:seared_bricks>],
#      [<tag:items:forge:ingots/iron>, <item:artisanworktables:workstation_basic>, <tag:items:forge:ingots/iron>],
#      [<tag:items:forge:ingots/iron>, <item:minecraft:air>, <tag:items:forge:ingots/iron>]]);

#toolbox
Recipe.type(Type.CARPENTER)
  .shaped([[<tag:items:forge:rounded_sheets/iron>, <tag:items:forge:plates/iron>, <tag:items:forge:rounded_sheets/iron>],
  [<tag:items:minecraft:logs>, <tag:items:forge:chests>, <tag:items:minecraft:logs>],
  [<tag:items:minecraft:logs>, <tag:items:forge:plates/iron>, <tag:items:minecraft:logs>]])
  .output(<item:artisanworktables:toolbox>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register();

Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:plates/steel_crafting>, <item:minecraft:air>],
  [<item:steampowered:cast_iron_cogwheel>, <item:artisanworktables:toolbox>, <item:steampowered:cast_iron_cogwheel>],
  [<item:minecraft:air>, <tag:items:forge:plates/steel_crafting>, <item:minecraft:air>]])
  .output(<item:artisanworktables:mechanical_toolbox>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:plates/steel_crafting>, <item:minecraft:air>],
  [<item:steampowered:cast_iron_cogwheel>, <item:artisanworktables:toolbox>, <item:steampowered:cast_iron_cogwheel>],
  [<item:minecraft:air>, <tag:items:forge:plates/steel_crafting>, <item:minecraft:air>]])
  .output(<item:artisanworktables:mechanical_toolbox>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/spanner>, 1)
  .secondary([<item:amicore:steel_bolt>*2])
  .register();

#universal_toolset
for i, item in toolMats {
    Recipe.type(Type.BASIC)
        .shaped([[BracketHandlers.getItem("artisantools:cutters_" + toolMats[i][0]), BracketHandlers.getItem("artisantools:hammer_" + toolMats[i][0]), BracketHandlers.getItem("artisantools:driver_" + toolMats[i][0])],
        [BracketHandlers.getItem("artisantools:handsaw_" + toolMats[i][0]), BracketHandlers.getItem("artisantools:file_" + toolMats[i][0]), BracketHandlers.getItem("artisantools:spanner_" + toolMats[i][0])],
        [BracketHandlers.getItem("artisantools:solderer_" + toolMats[i][0]), <tag:items:forge:large_sheets/steel_crafting>, BracketHandlers.getItem("artisantools:knife_" + toolMats[i][0])]])
        .output(BracketHandlers.getItem("amicore:" + toolMats[i][0] + "_universal_toolset"))
        .tool(<tag:items:artisantools:type/hammer>, 1)
        .tool(<tag:items:artisantools:type/spanner>, 1)
        .secondary([<item:amicore:crude_steel_bolt>*6])
        .register();
    Recipe.type(Type.BASIC)
        .shaped([[BracketHandlers.getItem("artisantools:cutters_" + toolMats[i][0]), BracketHandlers.getItem("artisantools:hammer_" + toolMats[i][0]), BracketHandlers.getItem("artisantools:driver_" + toolMats[i][0])],
        [BracketHandlers.getItem("artisantools:handsaw_" + toolMats[i][0]), BracketHandlers.getItem("artisantools:file_" + toolMats[i][0]), BracketHandlers.getItem("artisantools:spanner_" + toolMats[i][0])],
        [BracketHandlers.getItem("artisantools:solderer_" + toolMats[i][0]), <tag:items:forge:large_sheets/steel_crafting>, BracketHandlers.getItem("artisantools:knife_" + toolMats[i][0])]])
        .output(BracketHandlers.getItem("amicore:" + toolMats[i][0] + "_universal_toolset"))
        .tool(<tag:items:artisantools:type/hammer>, 1)
        .tool(<tag:items:artisantools:type/spanner>, 1)
        .secondary([<item:amicore:steel_bolt>*6])
        .register();
}
