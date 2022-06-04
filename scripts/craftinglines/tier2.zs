import crafttweaker.api.BracketHandlers;
import crafttweaker.api.SmithingManager;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.TagManagerItem;
import mods.artisanworktables.Recipe;
import mods.artisanworktables.Type;
import crafttweaker.api.ILogger;

var crushing = <recipetype:create:crushing>;
var mixing = <recipetype:create:mixing>;
var pressing = <recipetype:create:pressing>;
var washing = <recipetype:create:splashing>;
var milling = <recipetype:create:milling>;
var filling = <recipetype:create:filling>;
var deploying = <recipetype:create:deploying>;
var sequence = <recipetype:create:sequenced_assembly>;
var draining = <recipetype:create:emptying>;

//blazing blood syntheis
<recipetype:create:sequenced_assembly>.addJSONRecipe("blazing_blood_sythesis_json", {
  "type": "create:sequenced_assembly",
  "ingredient": {"item": "tconstruct:copper_can" },
  "transitionalItem": { "item": "tconstruct:copper_can", "nbt": {fluid: "minecraft:lava"} },
  "sequence": [
    {
      "type": "create:filling",
      "ingredients": [
        {"item": "tconstruct:copper_can", "nbt": {fluid: "minecraft:lava"}},
        {"fluid": "minecraft:lava","nbt": {}, "amount": 144}
      ],
      "results": [
        { "item": "tconstruct:copper_can", "nbt": {fluid: "minecraft:lava"}}
      ]
    },
    {
      "type": "create:deploying",
      "ingredients": [ 
        { "item": "tconstruct:copper_can", "nbt": {fluid: "minecraft:lava"} },
        {"item": "minecraft:blaze_powder" }
      ],
      "results": [
        {"item": "tconstruct:copper_can","nbt": {fluid: "minecraft:lava"}}
      ]
    },
    {
      "type": "create:filling",
      "ingredients": [
        { "item": "tconstruct:copper_can", "nbt": {fluid: "minecraft:lava"}},
        { "fluid": "amicore:red_catalyst", "nbt" : {}, "amount": 10}
      ],
      "results": [
        { "item": "tconstruct:copper_can", "nbt": {fluid: "minecraft:lava"}}
      ]
    },
    {
        "type": "create:deploying",
        "ingredients": [
            { "item": "tconstruct:copper_can", "nbt": {fluid: "minecraft:lava"}},
            { "item": "amicore:bottle_mixer"}
        ],
        "results": [
            { "item": "tconstruct:copper_can", "nbt": {fluid: "minecraft:lava"}}
        ],
        "processingTime": 300
    }
  ],
  "results": [
    { "item": "tconstruct:copper_can", "nbt": {fluid: "tconstruct:blazing_blood"}}
  ],
  "loops": 1
});
mods.jei.JEI.addItem(<item:tconstruct:copper_can>.withTag({fluid: "tconstruct:blazing_blood" as string}));
// furnace.setFuel(<item:tconstruct:blazing_blood_bucket>, 30000); // in kubejs startup

//tempered bottles
Recipe.type(Type.CHEMIST)
  .shapeless([<tag:items:forge:heated_ingots/iron>])
  .output(<item:amicore:bottle_press>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .fluid(<fluid:minecraft:water> * 250)
  .register();
Recipe.type(Type.CHEMIST)
  .shapeless([<tag:items:forge:heated_ingots/sterling_silver>,<tag:items:forge:heated_ingots/iron>])
  .output(<item:amicore:bottle_mixer>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .fluid(<fluid:minecraft:water> * 250)
  .register();
Recipe.type(Type.CHEMIST)
  .shapeless([<tag:items:forge:heated_ingots/sterling_silver>,<item:tconstruct:copper_can>.withTag({fluid: "tconstruct:blazing_blood" as string}),<tag:items:forge:rods/sterling_silver>])
  .output(<item:amicore:bottle_heater>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .fluid(<fluid:minecraft:water> * 250)
  .register();
<recipetype:create:deploying>.addJSONRecipe("amicore/bottle_sand_mold_modeling3",{
  "type": "create:deploying",
  "ingredients": [
    { "item": "minecraft:sand"},
    { "item": "amicore:bottle_press"}
  ],
  "results": [
    { "item": "amicore:sand_bottle_mold"}
  ]
});
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("tempered_bottle_making")
    .transitionTo(<item:amicore:sand_bottle_mold_with_molten_glass>)
    .require(<item:amicore:sand_bottle_mold>)
    .loops(1)
    .addOutput(<item:amicore:tempered_bottle>, 1)
    .addStep(filling.factory(), (rb) => rb.duration(40).require(<fluid:tconstruct:molten_glass> * 250))
    .addStep(filling.factory(), (rb) => rb.duration(40).require(<fluid:amicore:compressed_air> * 100))
    .addStep(pressing.factory(), (rb) => rb.duration(40)));

//red and green catalyst
<recipetype:create:mixing>.addRecipe("red_catalyst", "none", <fluid:amicore:red_catalyst> * 100, [<tag:items:forge:tiny_dusts/copper>, <tag:items:forge:tiny_dusts/iron>], [<fluid:minecraft:water> * 100], 400);
<recipetype:create:mixing>.addRecipe("green_catalyst", "heated", <fluid:amicore:green_catalyst> * 100, [<tag:items:forge:tiny_dusts/lead>, <tag:items:forge:tiny_dusts/silver>], [<fluid:minecraft:water> * 100], 400);
mixing.removeByName("create:mixing/chromatic_compound");

//chromatic compound
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("chromatic_compound_making")
    .transitionTo(<item:amicore:chromatic_dust_bottle>)
    .require(<item:amicore:tempered_bottle>)
    .loops(1)
    .addOutput(<item:amicore:chromatic_compound_bottle>, 1)
    .addStep(deploying.factory(), (rb) => rb.require(<item:amicore:bronze_dust>))
    .addStep(deploying.factory(), (rb) => rb.require(<item:minecraft:glowstone_dust>))
    .addStep(deploying.factory(), (rb) => rb.require(<item:create:powdered_obsidian>))
    .addStep(deploying.factory(), (rb) => rb.require(<item:appliedenergistics2:nether_quartz_dust>))
    .addStep(deploying.factory(), (rb) => rb.require(<item:appliedenergistics2:certus_quartz_dust>))
    .addStep(deploying.factory(), (rb) => rb.require(<item:minecraft:redstone>))
    .addStep(filling.factory(), (rb) => rb.duration(40).require(<fluid:amicore:green_catalyst> * 100)));
Recipe.type(Type.CHEMIST)
  .shapeless([<item:amicore:chromatic_compound_bottle>])
  .output(<item:create:chromatic_compound>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();
pressing.addRecipe("remove_compound_from_bottle", [<item:create:chromatic_compound>], <item:amicore:chromatic_compound_bottle>);

#crude steel from iron
<recipetype:immersiveengineering:blast_furnace>.addRecipe("crude_steel", <item:minecraft:iron_ingot>, 600, <item:amicore:crude_steel_ingot>, <item:immersiveengineering:slag>);

#crude steel recipes TODO FIX
craftingTable.addShaped("water_wheel_crude", <item:immersiveengineering:watermill>,
[[<item:minecraft:air>,<item:immersiveengineering:waterwheel_segment>,<item:minecraft:air>],
[<item:immersiveengineering:waterwheel_segment>,<tag:items:forge:ingots/crude_steel>,<item:immersiveengineering:waterwheel_segment>],
[<item:minecraft:air>,<item:immersiveengineering:waterwheel_segment>,<item:minecraft:air>]], null);
craftingTable.addShaped("steel_wallmount_crude", <item:immersiveengineering:steel_wallmount>,
[[<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>],
[<tag:items:forge:ingots/crude_steel>,<tag:items:forge:rods/crude_steel>]], null);
craftingTable.addShaped("steel_scaffolding_crude", <item:immersiveengineering:steel_scaffolding_standard>,
[[<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>],
[<item:minecraft:air>,<tag:items:forge:rods/crude_steel>,<item:minecraft:air>],
[<tag:items:forge:rods/crude_steel>,<item:minecraft:air>,<tag:items:forge:rods/crude_steel>]], null);
craftingTable.addShaped("steel_fence_crude", <item:immersiveengineering:steel_fence>,
[[<tag:items:forge:ingots/crude_steel>,<tag:items:forge:rods/crude_steel>,<tag:items:forge:ingots/crude_steel>],
[<tag:items:forge:ingots/crude_steel>,<tag:items:forge:rods/crude_steel>,<tag:items:forge:ingots/crude_steel>]], null);
craftingTable.addShaped("thermoelectric_generator_crude", <item:immersiveengineering:thermoelectric_generator>,
[[<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>],
[<tag:items:forge:plates/constantan>,<item:immersiveengineering:coil_lv>,<tag:items:forge:plates/constantan>],
[<tag:items:forge:plates/constantan>,<tag:items:forge:plates/constantan>,<tag:items:forge:plates/constantan>]], null);
craftingTable.addShaped("crude_steel_block", <item:amicore:crude_steel_block>,
[[<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>],
[<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>],
[<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>,<tag:items:forge:ingots/crude_steel>]], null);
craftingTable.addShaped("crude_steel_sheetmetal", <item:amicore:crude_steel_sheetmetal> * 2,
[[<item:minecraft:air>,<tag:items:forge:plates/crude_steel>,<item:minecraft:air>],
[<tag:items:forge:plates/crude_steel>,<item:minecraft:air>,<tag:items:forge:plates/crude_steel>],
[<item:minecraft:air>,<tag:items:forge:plates/crude_steel>,<item:minecraft:air>]], null);


//soulfuric acid
<recipetype:create:sequenced_assembly>.addJSONRecipe("sulfuric_acid_synthesis", {
  "type": "create:sequenced_assembly",
  "ingredient": { "item": "amicore:tempered_bottle" },
  "transitionalItem": { "item": "amicore:sulfur_dioxide_bottle" },
  "sequence": [
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:sulfur_dioxide_bottle" },
            { "item": "immersiveengineering:dust_sulfur" }],
        "results": [ { "item": "amicore:sulfur_dioxide_bottle" } ]
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:sulfur_dioxide_bottle" },
            { "item": "amicore:bottle_heater" }],
        "results": [ { "item": "amicore:sulfur_dioxide_bottle" } ],
        "processingTime": 300
    },
    {
      "type": "create:filling",
      "ingredients": [ { "item": "amicore:sulfur_dioxide_bottle" },
        { "fluid": "minecraft:water", "nbt": {}, "amount": 100 } ],
      "results": [{ "item": "amicore:sulfur_dioxide_bottle" }]
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:sulfur_dioxide_bottle" },
            { "item": "amicore:bottle_mixer" }],
        "results": [{ "item": "amicore:sulfur_dioxide_bottle" }],
        "processingTime": 300
    }
  ],
  "results": [ { "item": "amicore:sulfuric_acid_bottle" } ],
  "loops": 1
});
<recipetype:create:sequenced_assembly>.addJSONRecipe("soulfuric_acid_synthesis", {
  "type": "create:sequenced_assembly",
  "ingredient": { "item": "amicore:sulfuric_acid_bottle" },
  "transitionalItem": { "item": "amicore:sulfuric_acid_bottle" },
  "sequence": [
    {
        "type": "create:filling",
        "ingredients": [ { "item": "amicore:sulfuric_acid_bottle" },
        { "fluid": "amicore:simple_spirit_distillation", "nbt": {}, "amount": 50 } ],
        "results": [{ "item": "amicore:sulfuric_acid_bottle" }]
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:sulfuric_acid_bottle" },
            { "item": "amicore:bottle_heater" }],
        "results": [ { "item": "amicore:sulfuric_acid_bottle" } ],
        "processingTime": 300
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:sulfuric_acid_bottle" },
            { "item": "amicore:bottle_mixer" }],
        "results": [{ "item": "amicore:sulfuric_acid_bottle" }],
        "processingTime": 300
    }
  ],
  "results": [ { "item": "amicore:soulfuric_acid_bottle" } ],
  "loops": 1
});
draining.addRecipe("sulfuric_acid_drain", <item:quark:clear_shard>, <fluid:amicore:sulfuric_acid> * 100, <item:amicore:sulfuric_acid_bottle>);
draining.addRecipe("soulfuric_acid_drain", <item:quark:clear_shard>, <fluid:amicore:soulfuric_acid> * 100, <item:amicore:soulfuric_acid_bottle>);
draining.addRecipe("spirit_distillation_drain", <item:amicore:tempered_bottle>, <fluid:amicore:simple_spirit_distillation> * 100, <item:amicore:spirit_distillation_bottle>);
filling.addRecipe("spirit_distillation_filling", <item:amicore:spirit_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:simple_spirit_distillation>);
mixing.addRecipe("simple_spirit_distillation_mixing", "heated", <fluid:amicore:simple_spirit_distillation> * 1000, [<tag:items:malum:spirits/basic_spirits>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 600);

//sulfur processings
milling.addRecipe("sulfur_milling", [<item:immersiveengineering:dust_sulfur> * 3, <item:immersiveengineering:dust_sulfur> % 50], <item:amicore:sulfur_crystal>);
milling.addRecipe("sulfur_milling_betterend", [<item:immersiveengineering:dust_sulfur> * 1, <item:immersiveengineering:dust_sulfur> % 50], <item:betterendforge:crystalline_sulphur>);
crushing.addRecipe("sulfur_crushing", [<item:immersiveengineering:dust_sulfur> * 3, <item:immersiveengineering:dust_sulfur> % 50], <item:amicore:sulfur_crystal>);
crushing.addRecipe("sulfur_crushing_betterend", [<item:immersiveengineering:dust_sulfur> * 1, <item:immersiveengineering:dust_sulfur> % 50], <item:betterendforge:crystalline_sulphur>);
<recipetype:immersiveengineering:crusher>.removeByName("immersiveengineering:crusher/blaze_powder");
<recipetype:immersiveengineering:crusher>.addRecipe("blaze_rod_crushing", <item:minecraft:blaze_rod>, 500, <item:minecraft:blaze_powder> * 4, <item:immersiveengineering:dust_sulfur> % 25);
craftingTable.addShapeless("tiny_sulfur_dust_decompacting", <item:amicore:tiny_sulfur_pile>*9, [<item:immersiveengineering:dust_sulfur>]);
craftingTable.addShapeless("sulfur_dust_compacting", <item:immersiveengineering:dust_sulfur>, [<item:amicore:tiny_sulfur_pile>, <item:amicore:tiny_sulfur_pile>, <item:amicore:tiny_sulfur_pile>, <item:amicore:tiny_sulfur_pile>, <item:amicore:tiny_sulfur_pile>, <item:amicore:tiny_sulfur_pile>, <item:amicore:tiny_sulfur_pile>, <item:amicore:tiny_sulfur_pile>, <item:amicore:tiny_sulfur_pile>]);

//sulfur extraction from weeping vines
mixing.addRecipe("weeping_paste", "heated", <fluid:amicore:weeping_paste> * 200, [<item:minecraft:weeping_vines> * 3], [<fluid:minecraft:water> * 100], 200);
mixing.addRecipe("ashy_weeping_paste", "heated", <fluid:amicore:ashy_weeping_paste> * 400, [<item:minecraft:yellow_dye>,<item:create:cinder_flour>], [<fluid:amicore:weeping_paste> * 200], 200);
mixing.addRecipe("limey_weeping_paste", "heated", <item:amicore:limey_weeping_paste>, [<item:create:limesand>], [<fluid:amicore:ashy_weeping_paste> * 400], 200);
draining.addRecipe("diry_sulfur_draining", <item:amicore:dirty_sulfur>, <fluid:amicore:unusable_waste_water> * 100, <item:amicore:limey_weeping_paste>);
crushing.addRecipe("dirty_sulfur_crushing", [<item:immersiveengineering:dust_sulfur> * 2, <item:minecraft:sand> * 2 % 50], <item:amicore:dirty_sulfur>);
milling.addRecipe("dirty_sulfur_milling", [<item:immersiveengineering:dust_sulfur> * 2, <item:minecraft:sand> * 2 % 50], <item:amicore:dirty_sulfur>);

//multicyl engine
<recipetype:create:sequenced_assembly>.addJSONRecipe("multicyliner_phase1", {
  "type": "create:sequenced_assembly",
  "ingredient": { "item": "amicore:crude_steel_plate" },
  "transitionalItem": { "item": ":multicylinder_phase1a" },
  "sequence": [
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase1a" },
            { "item": "amicore:high_torque_gearbox" }],
        "results": [ { "item": "amicore:multicylinder_phase1a" } ],
        "processingTime": 100
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase1a" },
            { "item": "amicore:crude_steel_bolt" }],
        "results": [ { "item": "amicore:multicylinder_phase1a" } ],
        "processingTime": 40
    },
    {
        "type": "create:pressing",
        "ingredients": [ { "item": "amicore:multicylinder_phase1a" } ],
        "results": [ { "item": "amicore:multicylinder_phase1a" } ],
        "processingTime": 40
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase1a" },
            { "item": "amicore:crude_steel_bolt" }],
        "results": [ { "item": "amicore:multicylinder_phase1a" } ],
        "processingTime": 40
    },
    {
        "type": "create:pressing",
        "ingredients": [ { "item": "amicore:multicylinder_phase1a" } ],
        "results": [ { "item": "amicore:multicylinder_phase1a" } ],
        "processingTime": 40
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase1a" },
            { "item": "amicore:crude_steel_bolt" }],
        "results": [ { "item": "amicore:multicylinder_phase1a" } ],
        "processingTime": 40
    },
    {
        "type": "create:pressing",
        "ingredients": [ { "item": "amicore:multicylinder_phase1a" } ],
        "results": [ { "item": "amicore:multicylinder_phase1a" } ],
        "processingTime": 40
    }
  ],
  "results": [ { "item": "amicore:multicylinder_phase1" } ],
  "loops": 1
});
<recipetype:create:sequenced_assembly>.addJSONRecipe("multicyliner_phase2", {
  "type": "create:sequenced_assembly",
  "ingredient": { "item": "amicore:multicylinder_phase1" },
  "transitionalItem": { "item": "amicore:multicylinder_phase2a" },
  "sequence": [
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase2a" },
            { "item": "amicore:crude_steel_mech_component" }],
        "results": [ { "item": "amicore:multicylinder_phase2a" } ],
        "processingTime": 100
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase2a" },
            { "item": "amicore:simple_engine" }],
        "results": [ { "item": "amicore:multicylinder_phase2a" } ],
        "processingTime": 40
    },
    {
        "type": "create:pressing",
        "ingredients": [ { "item": "amicore:multicylinder_phase2a" } ],
        "results": [ { "item": "amicore:multicylinder_phase2a" } ],
        "processingTime": 40
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase2a" },
            { "item": "amicore:simple_engine" }],
        "results": [ { "item": "amicore:multicylinder_phase2a" } ],
        "processingTime": 40
    },
    {
        "type": "create:pressing",
        "ingredients": [ { "item": "amicore:multicylinder_phase2a" } ],
        "results": [ { "item": "amicore:multicylinder_phase2a" } ],
        "processingTime": 40
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase2a" },
            { "item": "amicore:crude_steel_round_sheet" }],
        "results": [ { "item": "amicore:multicylinder_phase2a" } ],
        "processingTime": 40
    },
    {
        "type": "create:pressing",
        "ingredients": [ { "item": "amicore:multicylinder_phase2a" } ],
        "results": [ { "item": "amicore:multicylinder_phase2a" } ],
        "processingTime": 40
    }
  ],
  "results": [ { "item": "amicore:multicylinder_phase2" } ],
  "loops": 1
});
<recipetype:create:sequenced_assembly>.addJSONRecipe("multicyliner_phase3", {
  "type": "create:sequenced_assembly",
  "ingredient": { "item": "amicore:multicylinder_phase2" },
  "transitionalItem": { "item": "amicore:multicylinder_phase3a" },
  "sequence": [
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase3a" },
            { "item": "create:shaft" }],
        "results": [ { "item": "amicore:multicylinder_phase3a" } ],
        "processingTime": 100
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase3a" },
            { "item": "create:brass_casing" }],
        "results": [ { "item": "amicore:multicylinder_phase3a" } ],
        "processingTime": 40
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase3a" },
            { "item": "amicore:simple_engine" }],
        "results": [ { "item": "amicore:multicylinder_phase3a" } ],
        "processingTime": 40
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase3a" },
            { "item": "amicore:simple_engine" }],
        "results": [ { "item": "amicore:multicylinder_phase3a" } ],
        "processingTime": 40
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase3a" },
            { "item": "amicore:crude_steel_bolt" }],
        "results": [ { "item": "amicore:multicylinder_phase3a" } ],
        "processingTime": 40
    },
    {
        "type": "create:pressing",
        "ingredients": [ { "item": "amicore:multicylinder_phase3a" } ],
        "results": [ { "item": "amicore:multicylinder_phase3a" } ],
        "processingTime": 40
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:multicylinder_phase3a" },
            { "item": "amicore:crude_steel_bolt" }],
        "results": [ { "item": "amicore:multicylinder_phase3a" } ],
        "processingTime": 40
    },
    {
        "type": "create:pressing",
        "ingredients": [ { "item": "amicore:multicylinder_phase3a" } ],
        "results": [ { "item": "amicore:multicylinder_phase3a" } ],
        "processingTime": 40
    }
  ],
  "results": [ { "item": "amicore:multicyl_engine" } ],
  "loops": 1
});
mods.jei.JEI.hideItem(<item:amicore:multicylinder_phase1a>);
mods.jei.JEI.hideItem(<item:amicore:multicylinder_phase2a>);
mods.jei.JEI.hideItem(<item:amicore:multicylinder_phase3a>);


#coke, blast, and kiln
craftingTable.removeRecipe(<item:immersiveengineering:cokebrick>);
craftingTable.removeRecipe(<item:immersiveengineering:blastbrick>);
craftingTable.removeRecipe(<item:immersiveengineering:alloybrick>);
mixing.addRecipe("dark_clay_ami", "heated", <item:amicore:dark_clay> * 2, [<item:amicore:soul_soil_clay> * 2], [<fluid:amicore:simple_spirit_distillation> * 50], 500);
mixing.addRecipe("reddened_clay_ami", "heated", <item:amicore:reddened_clay> * 2, [<item:amicore:soul_soil_clay> * 2, <item:create:cinder_flour> * 2], [<fluid:tconstruct:blazing_blood> * 50], 500);  
mixing.addRecipe("sandy_clay_ami", "heated", <item:amicore:sandy_clay> * 2, [<item:amicore:soul_soil_clay> * 2, <item:minecraft:sand> * 2], [<fluid:immersiveengineering:creosote> * 50], 500);
<recipetype:charm:firing>.addJSONRecipe("amicore/coke_brick_kiln", {
  "type": "charm:firing",
  "ingredient": {
    "item": "amicore:dark_clay"
  },
  "result": "amicore:coke_brick_item",
  "experience": 0.35,
  "cookingtime": 100,
  "conditions": [
    {
      "type": "charm:module_enabled",
      "module": "charm:kilns"
    }
  ]
});
<recipetype:charm:firing>.addJSONRecipe("amicore/blast_brick_kiln", {
  "type": "charm:firing",
  "ingredient": {
    "item": "amicore:reddened_clay"
  },
  "result": "amicore:blast_brick_item",
  "experience": 0.35,
  "cookingtime": 100,
  "conditions": [
    {
      "type": "charm:module_enabled",
      "module": "charm:kilns"
    }
  ]
});
<recipetype:charm:firing>.addJSONRecipe("amicore/kiln_brick_kiln", {
  "type": "charm:firing",
  "ingredient": {
    "item": "amicore:sandy_clay"
  },
  "result": "amicore:kiln_brick_item",
  "experience": 0.35,
  "cookingtime": 100,
  "conditions": [
    {
      "type": "charm:module_enabled",
      "module": "charm:kilns"
    }
  ]
});
craftingTable.addShaped("coke_brick_ami", <item:immersiveengineering:cokebrick> * 3,
[[<item:amicore:coke_brick_item>,<item:amicore:coke_brick_item>],
[<item:amicore:coke_brick_item>,<item:amicore:coke_brick_item>]], null);
craftingTable.addShaped("blast_brick_ami", <item:immersiveengineering:blastbrick> * 3,
[[<item:amicore:blast_brick_item>,<item:amicore:blast_brick_item>],
[<item:amicore:blast_brick_item>,<item:amicore:blast_brick_item>]], null); 
craftingTable.addShaped("kiln_brick_ami", <item:immersiveengineering:alloybrick> * 2,
[[<item:amicore:kiln_brick_item>,<item:amicore:kiln_brick_item>],
[<item:amicore:kiln_brick_item>,<item:amicore:kiln_brick_item>]], null);

#coking
mixing.addRecipe("warped_paste", "heated", <item:amicore:warped_paste>, [<item:minecraft:twisting_vines> * 2, <item:minecraft:warped_roots> * 2], [<fluid:minecraft:water> * 50], 500);
mixing.addRecipe("sugary_paste", "heated", <item:amicore:sugary_paste>, [<item:minecraft:sugar_cane> * 2, <item:minecraft:sea_pickle> * 2], [<fluid:minecraft:water> * 50], 500);
mixing.addRecipe("fungal_paste", "heated", <item:amicore:fungal_paste>, [<item:minecraft:red_mushroom> * 2, <item:minecraft:brown_mushroom> * 2], [<fluid:minecraft:water> * 50], 500);
<recipetype:immersiveengineering:coke_oven>.addRecipe("warped_coke", <item:amicore:warped_paste>, 2000, <item:amicore:warped_coke>, 50);
<recipetype:immersiveengineering:coke_oven>.addRecipe("sugary_coke", <item:amicore:sugary_paste>, 2000, <item:amicore:sugary_coke>, 50);
<recipetype:immersiveengineering:coke_oven>.addRecipe("fungal_coke", <item:amicore:fungal_paste>, 2000, <item:amicore:fungal_coke>, 50);
<recipetype:immersiveengineering:blast_furnace_fuel>.addFuel("warped_coke", <item:amicore:warped_coke>, 600);
<recipetype:immersiveengineering:blast_furnace_fuel>.addFuel("sugary_coke", <item:amicore:sugary_coke>, 600);
<recipetype:immersiveengineering:blast_furnace_fuel>.addFuel("fungal_coke", <item:amicore:fungal_coke>, 800);

#trash can
craftingTable.removeRecipe(<item:trashcans:item_trash_can>);
craftingTable.removeRecipe(<item:trashcans:energy_trash_can>);
craftingTable.removeRecipe(<item:trashcans:liquid_trash_can>);
Recipe.type(Type.CHEMIST)
  .shaped([[<tag:items:forge:stone>, <tag:items:forge:plates/crude_steel>, <tag:items:forge:stone>],
  [<tag:items:forge:cobblestone>, <tag:items:forge:chests/wooden>, <tag:items:forge:cobblestone>],
  [<tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>]])
  .output(<item:trashcans:item_trash_can>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*2])
  .register();
Recipe.type(Type.CHEMIST)
  .shaped([[<tag:items:forge:stone>, <tag:items:forge:plates/crude_steel>, <tag:items:forge:stone>],
  [<tag:items:forge:cobblestone>, <item:minecraft:bucket>, <tag:items:forge:cobblestone>],
  [<tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>]])
  .output(<item:trashcans:liquid_trash_can>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*2])
  .register();
Recipe.type(Type.CHEMIST)
  .shaped([[<tag:items:forge:stone>, <tag:items:forge:plates/crude_steel>, <tag:items:forge:stone>],
  [<tag:items:forge:cobblestone>, <item:minecraft:redstone>, <tag:items:forge:cobblestone>],
  [<tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>, <tag:items:forge:cobblestone>]])
  .output(<item:trashcans:energy_trash_can>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*2])
  .register();

#lv circuits
craftingTable.addShaped("empty_wire_spool", <item:amicore:empty_wire_spool> * 8,
[[<item:immersiveengineering:slab_treated_wood_horizontal>],
[<item:immersiveengineering:stick_treated>],
[<item:immersiveengineering:slab_treated_wood_horizontal>]], null);
craftingTable.addShaped("solder_spool", <item:amicore:solder_spool>,
[[<item:minecraft:air>,<tag:items:forge:wires/solder>,<item:minecraft:air>],
[<tag:items:forge:wires/solder>,<item:amicore:empty_wire_spool>,<tag:items:forge:wires/solder>],
[<item:minecraft:air>,<tag:items:forge:wires/solder>,<item:minecraft:air>]], null);
<recipetype:create:crushing>.addRecipe("carbon_dust_from_charcoal", [<item:amicore:carbon_dust>], <item:minecraft:charcoal>);
<recipetype:create:crushing>.addRecipe("carbon_dust_from_warped", [<item:amicore:carbon_dust> * 2], <item:amicore:warped_coke>);
<recipetype:create:crushing>.addRecipe("carbon_dust_from_fungal", [<item:amicore:carbon_dust> * 2], <item:amicore:fungal_coke>);
<recipetype:create:crushing>.addRecipe("carbon_dust_from_sugary", [<item:amicore:carbon_dust> * 2], <item:amicore:sugary_coke>);
<recipetype:create:crushing>.addRecipe("carbon_dust_from_lgnite", [<item:amicore:carbon_dust> * 3], <item:geolosys:lignite_coal_coke>);
<recipetype:create:crushing>.addRecipe("carbon_dust_from_bitumn", [<item:amicore:carbon_dust> * 5], <item:geolosys:bituminous_coal_coke>);
<recipetype:create:crushing>.addRecipe("carbon_dust_from_coal", [<item:amicore:carbon_dust> * 3], <item:immersiveengineering:coal_coke>);
<recipetype:create:crushing>.addRecipe("carbon_dust_from_petcoke", [<item:amicore:carbon_dust> * 3], <item:immersivepetroleum:petcoke>);
<recipetype:create:mechanical_crafting>.addRecipe("simple_resistor", <item:amicore:simple_resistor>, [[<tag:items:forge:wires/copper>, <item:amicore:carbon_dust>, <tag:items:forge:wires/copper>]]);
<recipetype:create:sequenced_assembly>.addJSONRecipe("lv_circuit", {
  "type": "create:sequenced_assembly",
  "ingredient": { "tag": "minecraft:wooden_slabs" },
  "transitionalItem": { "item": "amicore:partial_lv_circuit" },
  "sequence": [
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:partial_lv_circuit" },
            { "item": "amicore:simple_resistor" }],
        "results": [ { "item": "amicore:partial_lv_circuit" } ],
        "processingTime": 100
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:partial_lv_circuit" },
            { "item": "amicore:solder_spool" }],
        "results": [ { "item": "amicore:partial_lv_circuit" } ],
        "processingTime": 100
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:partial_lv_circuit" },
            { "item": "amicore:held_solderer" }],
        "results": [ { "item": "amicore:partial_lv_circuit" } ],
        "processingTime": 100
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:partial_lv_circuit" },
            { "item": "amicore:simple_resistor" }],
        "results": [ { "item": "amicore:partial_lv_circuit" } ],
        "processingTime": 100
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:partial_lv_circuit" },
            { "item": "amicore:solder_spool" }],
        "results": [ { "item": "amicore:partial_lv_circuit" } ],
        "processingTime": 100
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:partial_lv_circuit" },
            { "item": "amicore:held_solderer" }],
        "results": [ { "item": "amicore:partial_lv_circuit" } ],
        "processingTime": 100
    },
    {
        "type": "create:deploying",
        "ingredients": [{ "item": "amicore:partial_lv_circuit" },
            { "item": "amicore:crude_steel_bolt" }],
        "results": [ { "item": "amicore:partial_lv_circuit" } ],
        "processingTime": 100
    },
    {
        "type": "create:pressing",
        "ingredients": [ { "item": "amicore:partial_lv_circuit" } ],
        "results": [ { "item": "amicore:partial_lv_circuit" } ],
        "processingTime": 100
    }
  ],
  "results": [ { "item": "amicore:lv_circuit" } ],
  "loops": 1
});
Recipe.type(Type.ENGINEER)
  .shapeless([<tag:items:forge:heated_bar_stocks/crude_steel>,<tag:items:forge:wires/crude_steel>,<tag:items:forge:wires/crude_steel>])
  .output(<item:amicore:held_solderer>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .fluid(<fluid:minecraft:water> * 250)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wires/copper>,<item:amicore:carbon_dust>,<tag:items:forge:wires/copper>]])
  .output(<item:amicore:simple_resistor>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .register();

#sitting pool components
Recipe.type(Type.ENGINEER)
  .shaped([[<item:steampowered:cast_iron_large_cogwheel>, <tag:items:forge:large_sheets/crude_steel>, <item:steampowered:cast_iron_large_cogwheel>],
  [<tag:items:forge:plates/iron_brass>, <item:create:copper_casing>, <tag:items:forge:plates/iron_brass>],
  [<item:createdeco:copper_sheet_metal>, <item:amicore:multicyl_engine>, <item:createdeco:copper_sheet_metal>]])
  .output(<item:amicore:sitting_tank>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*4])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:fluid_pipe>, <item:create:fluid_valve>, <item:create:fluid_pipe>],
  [<tag:items:forge:rods/iron_brass>, <item:create:copper_casing>, <tag:items:forge:rods/iron_brass>],
  [<item:createdeco:copper_sheet_metal>, <tag:items:forge:plates/crude_steel>, <item:createdeco:copper_sheet_metal>]])
  .output(<item:amicore:sitting_pool_fluid_input>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*2])
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:create:fluid_pipe>, <tag:items:forge:plates/crude_steel>, <item:create:fluid_pipe>],
  [<tag:items:forge:rods/iron_brass>, <item:create:copper_casing>, <tag:items:forge:rods/iron_brass>],
  [<item:createdeco:copper_sheet_metal>, <item:create:fluid_valve>, <item:createdeco:copper_sheet_metal>]])
  .output(<item:amicore:sitting_pool_fluid_output>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*2])
  .register();
craftingTable.addShapeless("ami_fluid_outlet_inlet", <item:amicore:sitting_pool_fluid_output>,
[<item:amicore:sitting_pool_fluid_input>], null);
craftingTable.addShapeless("ami_fluid_inlet_outlet", <item:amicore:sitting_pool_fluid_input>,
[<item:amicore:sitting_pool_fluid_output>], null);

Recipe.type(Type.ENGINEER)
  .shaped([[<item:minecraft:air>, <tag:items:forge:plates/crude_steel>, <item:minecraft:air>],
  [<item:createdeco:copper_sheet_metal>, <item:create:brass_casing>,<item:createdeco:copper_sheet_metal>],
  [<tag:items:forge:rounded_sheets/lead_brass>, <item:quark:chute>, <tag:items:forge:rounded_sheets/lead_brass>]])
  .output(<item:amicore:sitting_pool_item_output>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .secondary([<item:amicore:crude_steel_bolt>*2])
  .register();

#tank components
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:minecraft:planks>, <tag:items:forge:plates/bronze>,<tag:items:minecraft:planks>],
  [<tag:items:minecraft:planks>, <tag:items:forge:plates/bronze>, <tag:items:minecraft:planks>]])
  .output(<item:amicore:tank_wall>*4)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
.register();
  Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:plates/bronze>, <tag:items:forge:plates/bronze>],
  [<item:amicore:tank_wall>, <item:create:fluid_pipe>]])
  .output(<item:amicore:tank_valve>)
  .tool(<tag:items:artisantools:type/driver>, 1)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

#powdered obsidian
<recipetype:create:crushing>.addRecipe("powdered_obsidian", [<item:create:powdered_obsidian>], <item:tconstruct:obsidian_pane>);

#antenna
Recipe.type(Type.ENGINEER)
  .shaped([[<tag:items:forge:wires/copper>, <item:minecraft:air>],
  [<tag:items:forge:wires/copper>, <item:minecraft:air>],
  [<tag:items:forge:wires/copper>, <item:amicore:simple_resistor>]])
  .output(<item:amicore:antenna>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .tool(<tag:items:artisantools:type/solderer>, 1)
  .extra(<item:amicore:solder_spool>)
  .register();
Recipe.type(Type.ENGINEER)
  .shaped([[<item:amicore:antenna>, <item:amicore:antenna>],
  [<item:amicore:antenna>, <item:amicore:antenna>],
  [<item:amicore:antenna>, <item:amicore:lv_circuit>]])
  .output(<item:amicore:antenna_cluster>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .tool(<tag:items:artisantools:type/solderer>, 1)
  .extra(<item:amicore:solder_spool>)
  .register();