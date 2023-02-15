import crafttweaker.api.BracketHandlers;
import crafttweaker.api.SmithingManager;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.TagManagerItem;
import mods.artisanworktables.Recipe;
import mods.artisanworktables.Type;
import crafttweaker.api.ILogger;

#smithing.addRecipe("iron_plate_anvil_smithing", <item:amicore:iron_plate>, <item:betterendforge:iron_hammer>.transformDamage(), <tag:items:forge:heated_ingots/iron>);
#craftingTable.addShapeless("iron_plate_crafting_smithing", <item:amicore:iron_plate>, [<item:betterendforge:iron_hammer>.transformDamage(), <tag:items:forge:heated_ingots/iron>]);

var crushing = <recipetype:create:crushing>;
var mixing = <recipetype:create:mixing>;
var pressing = <recipetype:create:pressing>;
var washing = <recipetype:create:splashing>;
var milling = <recipetype:create:milling>;
var filling = <recipetype:create:filling>;

# [id, name, colorcool, colorhot, needingot]

val materials = [
  ["iron", "Iron", 0x8B8B94, 0xFFFFFF, true, true, true, true],
  ["gold", "Gold", 0xEAC33D, 0xFFFFFF, true, true, true, true],
  ["copper", "Copper", 0xBC765E, 0xFFFFFF, true, true, true, true],
  ["tin", "Tin", 0xADB0AD, 0xFFFFFF, true, true, true, true],
  ["silver", "Silver", 0xF2F2F2, 0xFFFFFF, true, true, true, true],
  ["lead", "Lead", 0x607489, 0xFFFFFF, true, true, true, true],
  ["aluminum", "Aluminum", 0xD2D4D6, 0xFFFFFF, true, true, true, true],
  ["nickel", "Nickel", 0xB1B09E, 0xFFFFFF, true, true, true, true],
  ["platinum", "Platinum", 0x7B8DA1, 0xFFFFFF, true, true, true, true],
  ["uranium", "Uranium", 0x878681, 0xFFFFFF, true, true, true, true],
  ["zinc", "Zinc", 0x9A958F, 0xFFFFFF, true, true, true, true],
  ["osmium", "Osmium", 0xAFB4BF, 0xFFFFFF, true, true, true, true],
  ["titanium", "Titanium", 0xA19E92, 0xFFFFFF, true, true, true, true],
  ["chromium", "Chromium", 0xC1C1C1, 0xFFFFFF, true, true, true, true],
  ["cobalt", "Cobalt", 0xE6E6DE, 0xFFFFFF, true, true, true, true],
  ["tungsten", "Tungsten", 0xB7C1C3, 0xFFFFFF, true, true, true, true],
  ["iridium", "Iridium", 0xE4E4E4, 0xFFFFFF, true, true, true, true],
  ["silicon", "Silicon", 0xBABCCC, 0xFFFFFF, true, true, true, true],
  ["magnesium", "Magnesium", 0xC0CCD8, 0xFFFFFF, true, true, true, true],
  ["lead_brass", "Leaded Brass", 0xBD9E7F, 0xFFFFFF, true, true, true, true],
  ["tin_brass", "Tinny Brass", 0xDEC082, 0xFFFFFF, true, true, true, true],
  ["iron_brass", "Ferrous Brass", 0xCDCDAB, 0xFFFFFF, true, true, true, true],
  ["silicon_brass", "Silicon Brass", 0x7B746D, 0xFFFFFF, false, true, true, true, "tconstruct:tinkers_bronze_ingot"],
  ["brass", "Brass", 0x9C9F99, 0xFFFFFF, true, true, true, true],
  ["pig_iron", "Pig Iron", 0xB47778, 0xFFFFFF, false, true, true, true, "tconstruct:pig_iron_ingot"],
  ["crude_steel", "Crude Steel", 0x70848F, 0xFFFFFF, true, true, true, true],
  ["steel", "Steel", 0x949CA1, 0xFFFFFF, true, true, true, true],
  ["cobalt_steel", "Cobalt Steel", 0xD4CBCB, 0xFFFFFF, true, true, true, true],
  ["stainless_steel", "Stainless Steel", 0x989898, 0xFFFFFF, true, true, true, true],
  ["damascus_steel", "Damascus Steel", 0xDDDDDD, 0xFFFFFF, true, true, true, true],
  ["alnico", "Alnico Alloy", 0xE0D2C7, 0xFFFFFF, true, true, true, true],
  ["bronze", "Bronze", 0xD5905C, 0xFFFFFF, true, true, true, true],
  ["aluminum_bronze", "Aluminum Bronze", 0xDFBC7F, 0xFFFFFF, true, true, true, true],
	["solder", "Solder", 0x837D7D, 0xFFFFFF, true, true, true, true],
  ["hepatizon", "Hepatizon", 0x473351, 0xFFFFFF, false, true, true, true, "tconstruct:hepatizon_ingot"],
  ["electrum", "Electrum", 0xAD624E, 0xFFFFFF, true, true, true, true],
  ["invar", "Invar", 0xA89E8D, 0xFFFFFF, true, true, true, true],
  ["nichrome", "Nichrome", 0xECE9E7, 0xFFFFFF, true, true, true, true],
  ["nitinol", "Nitinol", 0xD9E5D7 , 0xFFFFFF, true, true, true, true],
  ["sterling_silver", "Sterling Silver", 0xF4F4F2, 0xFFFFFF, true, true, true, true],
  ["constantan", "Constantan", 0xAD624E, 0xFFFFFF, true, true, true, true],
  ["netherite", "Netherite", 0x3F393B, 0xFFFFFF, false, true, true, true, "minecraft:netherite_ingot"],
  ["manasteel", "Manasteel", 0x4F78CD , 0xFFFFFF, false, true, true, true, "botania:manasteel_ingot"],
  ["terrasteel", "Terrasteel", 0x40AE15, 0xFFFFFF, false, true, true, true, "botania:terrasteel_ingot"],
  ["elementium", "Elementium", 0xCE5B91, 0xFFFFFF, false, true, true, true, "botania:elementium_ingot"],
  ["slimesteel", "Slimesteel", 0x70BBC0, 0xFFFFFF, false, true, true, true, "tconstruct:slimesteel_ingot"],
  ["queens_slime", "Queen's Slime", 0xAEB0E7, 0xFFFFFF, false, true, true, true, "tconstruct:queens_slime_ingot"],
  ["manyullyn", "Manyullyn", 0x7950A9, 0xFFFFFF, false, true, true, true, "tconstruct:manyullyn_ingot"],
  ["managold", "Managold", 0x19E8FF, 0xFFFFFF, true, true, true, true],
  ["enderium", "Enderium", 0x0F6A6A, 0xFFFFFF, true, true, true, true],
  ["titaniumaluminide", "Titanium Aluminide", 0xA7ADB1 , 0xFFFFFF, true, true, true, true],
  ["titaniumiridium", "Titanium-Iridium", 0xA7ADB1, 0xFFFFFF, true, true, true, true],
  ["refined_radiance", "Refined Radiance", 0xE7EBDC, 0xFFFFFF, false, true, true, true, "create:refined_radiance"],
  ["shadow_steel", "Shadow Steel", 0x433E52, 0xFFFFFF, false, true, true, true, "create:shadow_steel"],
  ["overcharged_alloy", "Overcharged Alloy", 0x70848F, 0xFFFFFF, false, true, true, true, "createaddition:overcharged_alloy"],
  ["aeternium", "Aeternium", 0x1E9376, 0xFFFFFF, false, true, true, true, "betterendforge:aeternium_ingot"],
  ["thallasium", "Thallasium", 0x74C4C9, 0xFFFFFF, false, true, true, true, "betterendforge:thallasium_ingot"],
  ["terminite", "Terminite", 0x00D392, 0xFFFFFF, false, true, true, true, "betterendforge:terminite_ingot"],
  ["pendorite", "Pendorite", 0x784B76, 0xFFFFFF, false, true, true, true, "byg:pendorite_ingot"],
  ["starmetal", "Starmetal", 0x0800C3, 0xFFFFFF, false, true, true, true, "astralsorcery:starmetal_ingot"],
	["rosenquartz", "Rosenquartz", 0xE646B9, 0xFFFFFF, false, true, true, true, "tdelight:rosenquartz_ingot"],
	["gildedfern", "Goldedfern", 0x096A14, 0xFFFFFF, false, true, true, true, "tdelight:gildedfern_ingot"],
	["hamletite", "Hamletite", 0x900821, 0xFFFFFF, false, true, true, true, "tdelight:hamletite_ingot"]
] as string[][];

var manager = <tag:items:forge:stone>.getManager();

<recipetype:createaddition:rolling>.removeAll();
<recipetype:immersiveengineering:metal_press>.removeAll();

for i, item in materials {
  #ingot to heated ingot
  Recipe.type(Type.BLACKSMITH)
    .shapeless([<tagManager:items>.getTag("forge:heated_ingots/" + item[0])])
    .output(BracketHandlers.getItem("amicore:" + item[0] + "_plate"))
    .tool(<tag:items:artisantools:type/hammer>, 1)
    .register();

  #plate to round sheet
  Recipe.type(Type.BLACKSMITH)
    .shapeless([<tagManager:items>.getTag("forge:plates/" + item[0])])
    .output(BracketHandlers.getItem("amicore:" + item[0] + "_round_sheet"))
    .tool(<tag:items:artisantools:type/hammer>, 1)
    .register();

  #heated cake to large plate
  Recipe.type(Type.BLACKSMITH)
    .shapeless([<tagManager:items>.getTag("forge:heated_cakes/" + item[0])])
    .output(BracketHandlers.getItem("amicore:" + item[0] + "_large_sheet"))
    .tool(<tag:items:artisantools:type/hammer>, 2)
    .register();

  #heated large plate to coil
  Recipe.type(Type.BLACKSMITH)
    .shapeless([<tagManager:items>.getTag("forge:heated_large_sheets/" + item[0])])
    .output(BracketHandlers.getItem("amicore:" + item[0] + "_coil"))
    .tool(<tag:items:artisantools:type/hammer>, 2)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .register();

  #heated coil to wires
  Recipe.type(Type.BLACKSMITH)
    .shapeless([<tagManager:items>.getTag("forge:coils/" + item[0])])
    .output(BracketHandlers.getItem("amicore:" + item[0] + "_wire") * 8)
    .tool(<tag:items:artisantools:type/hammer>, 2)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .register();

  #heated bar stock to rod
  Recipe.type(Type.BLACKSMITH)
    .shapeless([<tagManager:items>.getTag("forge:heated_bar_stocks/" + item[0])])
    .output(BracketHandlers.getItem("amicore:" + item[0] + "_rod") * 2)
    .tool(<tag:items:artisantools:type/hammer>, 1)
    .register();


  # rod to bolt
  Recipe.type(Type.BLACKSMITH)
    .shapeless([<tagManager:items>.getTag("forge:rods/" + item[0])])
    .output(BracketHandlers.getItem("amicore:" + item[0] + "_bolt") * 3)
    .tool(<tag:items:artisantools:type/hammer>, 1)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .register();

  # nuggets to bolt
  Recipe.type(Type.BLACKSMITH)
    .shapeless([<tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0])])
    .output(BracketHandlers.getItem("amicore:" + item[0] + "_bolt"))
    .tool(<tag:items:artisantools:type/hammer>, 1)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .register();

  craftingTable.addShapeless(item[0] + "_dust_from_tiny_dust", BracketHandlers.getItem("amicore:" + item[0] + "_dust"), [<tagManager:items>.getTag("forge:tiny_dusts/" + item[0]), <tagManager:items>.getTag("forge:tiny_dusts/" + item[0]), <tagManager:items>.getTag("forge:tiny_dusts/" + item[0]), <tagManager:items>.getTag("forge:tiny_dusts/" + item[0]), <tagManager:items>.getTag("forge:tiny_dusts/" + item[0]), <tagManager:items>.getTag("forge:tiny_dusts/" + item[0]), <tagManager:items>.getTag("forge:tiny_dusts/" + item[0]), <tagManager:items>.getTag("forge:tiny_dusts/" + item[0]), <tagManager:items>.getTag("forge:tiny_dusts/" + item[0])]);
  craftingTable.addShapeless(item[0] + "_tiny_dust_from_dust", BracketHandlers.getItem("amicore:" + item[0] + "_tiny_dust") * 9, [<tagManager:items>.getTag("forge:dusts/" + item[0])]);

  Recipe.type(Type.BLACKSMITH)
  .shapeless([<tagManager:items>.getTag("forge:tiny_dusts/" + item[0]),<tagManager:items>.getTag("forge:tiny_dusts/" + item[0]),<tagManager:items>.getTag("forge:tiny_dusts/" + item[0]),<tagManager:items>.getTag("forge:tiny_dusts/" + item[0]),<tagManager:items>.getTag("forge:tiny_dusts/" + item[0]),<tagManager:items>.getTag("forge:tiny_dusts/" + item[0]),<tagManager:items>.getTag("forge:tiny_dusts/" + item[0]),<tagManager:items>.getTag("forge:tiny_dusts/" + item[0]),<tagManager:items>.getTag("forge:tiny_dusts/" + item[0])])
  .output(BracketHandlers.getItem("amicore:" + item[0] + "_dust"))
  .register();

  Recipe.type(Type.BLACKSMITH)
  .shapeless([<tagManager:items>.getTag("forge:dusts/" + item[0])])
  .output(BracketHandlers.getItem("amicore:" + item[0] + "_tiny_dust") * 9)
  .register();




  if(materials[i][4] == "true") {
    craftingTable.addShapeless("amicore/" + item[0] + "_block_decompacting", BracketHandlers.getItem("amicore:" + item[0] + "_ingot") * 9,
    [<tagManager:items>.getTag("forge:storage_blocks/" + item[0])], null);
    craftingTable.addShapeless("amicore/" + item[0] + "_ingot_decompacting", BracketHandlers.getItem("amicore:" + item[0] + "_nugget") * 9,
    [<tagManager:items>.getTag("forge:ingots/" + item[0])], null);
    
    craftingTable.addShapeless("amicore/" + item[0] + "_ingot_compacting", BracketHandlers.getItem("amicore:" + item[0] + "_ingot"),
    [<tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),
    <tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),
    <tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0])], null);
    craftingTable.addShapeless("amicore/" + item[0] + "_block_compacting", BracketHandlers.getItem("amicore:" + item[0] + "_block"),
    [<tagManager:items>.getTag("forge:ingots/" + item[0]),<tagManager:items>.getTag("forge:ingots/" + item[0]),<tagManager:items>.getTag("forge:ingots/" + item[0]),
    <tagManager:items>.getTag("forge:ingots/" + item[0]),<tagManager:items>.getTag("forge:ingots/" + item[0]),<tagManager:items>.getTag("forge:ingots/" + item[0]),
    <tagManager:items>.getTag("forge:ingots/" + item[0]),<tagManager:items>.getTag("forge:ingots/" + item[0]),<tagManager:items>.getTag("forge:ingots/" + item[0])], null);
  } else {
    craftingTable.addShapeless("amicore/" + item[0] + "_block_decompacting", BracketHandlers.getItem(materials[i][8]) * 9,
    [<tagManager:items>.getTag("forge:storage_blocks/" + item[0])], null);
    craftingTable.addShapeless("amicore/" + item[0] + "_ingot_decompacting", BracketHandlers.getItem("amicore:" + item[0] + "_nugget") * 9,
    [BracketHandlers.getItem(materials[i][8])], null);

    craftingTable.addShapeless("amicore/" + item[0] + "_ingot_compacting", BracketHandlers.getItem(materials[i][8]),
    [<tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),
    <tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),
    <tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0]),<tagManager:items>.getTag("forge:nuggets/" + item[0])], null);
    craftingTable.addShapeless("amicore/" + item[0] + "_block_compacting", BracketHandlers.getItem("amicore:" + item[0] + "_block"),
    [BracketHandlers.getItem(materials[i][8]),BracketHandlers.getItem(materials[i][8]),BracketHandlers.getItem(materials[i][8]),
    BracketHandlers.getItem(materials[i][8]),BracketHandlers.getItem(materials[i][8]),BracketHandlers.getItem(materials[i][8]),
    BracketHandlers.getItem(materials[i][8]),BracketHandlers.getItem(materials[i][8]),BracketHandlers.getItem(materials[i][8])], null);
  }


  pressing.addRecipe("amicore/" + item[0] + "_plate_pressing", [BracketHandlers.getItem("amicore:" + item[0] + "_plate")], <tagManager:items>.getTag("forge:heated_ingots/" + item[0]));

  <recipetype:createaddition:rolling>.addJSONRecipe("amicore/" + item[0] + "_rod_rolling", {
    "type": "createaddition:rolling",
    "result": {
        "item": "amicore:" + item[0] + "_rod",
        "count": 2
    },
    "input": [ {
            "item": "amicore:" + item[0] + "_heated_bar_stock"
        }
    ]
  });

  <recipetype:createaddition:rolling>.addJSONRecipe("amicore/" + item[0] + "_round_sheet_rolling", {
    "type": "createaddition:rolling",
    "result": {
        "item": "amicore:" + item[0] + "_round_sheet",
        "count": 1
    },
    "input": [ {
            "item": "amicore:" + item[0] + "_plate"
        }
    ]
  });

  pressing.addRecipe("amicore/" + item[0] + "_large_sheet_pressing", [BracketHandlers.getItem("amicore:" + item[0] + "_large_sheet")], <tagManager:items>.getTag("forge:heated_cakes/" + item[0]));

  <recipetype:createaddition:rolling>.addJSONRecipe("amicore/" + item[0] + "_coil_rolling", {
    "type": "createaddition:rolling",
    "result": {
        "item": "amicore:" + item[0] + "_coil",
        "count": 1
    },
    "input": [ {
            "item": "amicore:" + item[0] + "_heated_large_sheet"
        }
    ]
  });

  <recipetype:createaddition:rolling>.addJSONRecipe("amicore/" + item[0] + "_wire_rolling", {
    "type": "createaddition:rolling",
    "result": {
        "item": "amicore:" + item[0] + "_wire",
        "count": 8
    },
    "input": [ {
            "item": "amicore:" + item[0] + "_coil"
        }
    ]
  });

  <recipetype:create:cutting>.addRecipe("amicore/" + item[0] + "_bolt_cutting", [BracketHandlers.getItem("amicore:" + item[0] + "_bolt") * 3], <tagManager:items>.getTag("forge:rods/" + item[0]));

  Recipe.type(Type.ENGINEER)
    .shaped([[<tagManager:items>.getTag("forge:plates/" + item[0]),<tagManager:items>.getTag("forge:rods/" + item[0]),<tagManager:items>.getTag("forge:plates/" + item[0])],
            [<item:minecraft:piston>,<tag:items:forge:nuggets/copper>,<item:amicore:simple_gearbox>],
            [<tagManager:items>.getTag("forge:plates/" + item[0]),<tagManager:items>.getTag("forge:rods/" + item[0]),<tagManager:items>.getTag("forge:plates/" + item[0])]])
    .output(BracketHandlers.getItem("amicore:" + item[0] + "_mech_component"))
    .tool(<tag:items:artisantools:type/hammer>, 1)
    .tool(<tag:items:artisantools:type/driver>, 1)
    .secondary([BracketHandlers.getItem("amicore:" + item[0] + "_bolt") * 4])
    .register();

  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_ingot_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust")], <tagManager:items>.getTag("forge:ingots/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_nugget_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_tiny_dust")], <tagManager:items>.getTag("forge:nuggets/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_plates_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust")], <tagManager:items>.getTag("forge:plates/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_round_sheets_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust")], <tagManager:items>.getTag("forge:rounded_sheets/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_cakes_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4], <tagManager:items>.getTag("forge:cakes/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_large_sheet_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4], <tagManager:items>.getTag("forge:large_sheets/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_coil_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4], <tagManager:items>.getTag("forge:coils/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_gear_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4], <tagManager:items>.getTag("forge:gears/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_bar_stock_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust")], <tagManager:items>.getTag("forge:bar_stocks/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_hot_ingot_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust")], <tagManager:items>.getTag("forge:heated_ingots/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_hot_bar_stock_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust")], <tagManager:items>.getTag("forge:heated_bar_stocks/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_hot_cake_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4], <tagManager:items>.getTag("forge:heated_cakes/" + item[0]));
  <recipetype:create:crushing>.addRecipe("amicore/create/" + item[0] + "_hor_large_sheet_crushing", [BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4], <tagManager:items>.getTag("forge:heated_large_sheets/" + item[0]));

if(materials[i][4] == "true") {
    <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_ingot_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_ingot"), 128, BracketHandlers.getItem("amicore:" + item[0] + "_dust"), <item:minecraft:air>);
} else {
    <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_ingot_crushing",  BracketHandlers.getItem(materials[i][8]), 128, BracketHandlers.getItem("amicore:" + item[0] + "_dust"), <item:minecraft:air>);
}
  
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_nugget_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_nugget"), 128, BracketHandlers.getItem("amicore:" + item[0] + "_tiny_dust"), <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_plates_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_plate"), 128, BracketHandlers.getItem("amicore:" + item[0] + "_dust"), <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_round_sheets_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_round_sheet"), 128, BracketHandlers.getItem("amicore:" + item[0] + "_dust"), <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_cakes_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_cake"), 512, BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4, <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_large_sheet_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_large_sheet"), 512, BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4, <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_coil_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_coil"), 512, BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4, <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_gear_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_gear"), 512, BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4, <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_bar_stock_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_bar_stock"), 128, BracketHandlers.getItem("amicore:" + item[0] + "_dust"), <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_hot_ingot_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_heated_ingot"), 128, BracketHandlers.getItem("amicore:" + item[0] + "_dust"), <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_hot_bar_stock_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_heated_bar_stock"), 128, BracketHandlers.getItem("amicore:" + item[0] + "_dust"), <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_hot_cake_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_heated_cake"), 512, BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4, <item:minecraft:air>);
  <recipetype:immersiveengineering:crusher>.addRecipe("amicore/immersive/" + item[0] + "_hor_large_sheet_crushing", BracketHandlers.getItem("amicore:" + item[0] + "_heated_large_sheet"), 512, BracketHandlers.getItem("amicore:" + item[0] + "_dust") * 4, <item:minecraft:air>);

  <recipetype:immersiveengineering:metal_press>.addRecipe("amicore/immersive/" + item[0] + "_plate_pressing", <tagManager:items>.getTag("forge:heated_ingots/" + item[0]), <item:immersiveengineering:mold_plate>, 128, BracketHandlers.getItem("amicore:" + item[0] + "_plate"));
  <recipetype:immersiveengineering:metal_press>.addRecipe("amicore/immersive/" + item[0] + "_gear_pressing", <tagManager:items>.getTag("forge:heated_large_sheets/" + item[0]), <item:immersiveengineering:mold_gear>, 512, BracketHandlers.getItem("amicore:" + item[0] + "_gear"));
  <recipetype:immersiveengineering:metal_press>.addRecipe("amicore/immersive/" + item[0] + "_rod_pressing", <tagManager:items>.getTag("forge:heated_bar_stocks/" + item[0]), <item:immersiveengineering:mold_rod>, 128, BracketHandlers.getItem("amicore:" + item[0] + "_rod") * 2);

}



val moltens = [
  <fluid:tconstruct:molten_iron>,
  <fluid:tconstruct:molten_gold>,
  <fluid:tconstruct:molten_copper>,
  <fluid:tconstruct:molten_tin>,
  <fluid:tconstruct:molten_silver>,
  <fluid:tconstruct:molten_lead>,
  <fluid:tconstruct:molten_aluminum>,
  <fluid:tconstruct:molten_nickel>,
  <fluid:tconstruct:molten_platinum>,
  <fluid:tconstruct:molten_uranium>,
  <fluid:tconstruct:molten_zinc>,
  <fluid:tconstruct:molten_osmium>,
  <fluid:amicore:molten_titanium>,
  <fluid:amicore:molten_chromium>,
  <fluid:tconstruct:molten_cobalt>,
  <fluid:tconstruct:molten_tungsten>,
  <fluid:amicore:molten_iridium>,
  <fluid:amicore:molten_silicon>,
  <fluid:amicore:molten_magnesium>,
  <fluid:amicore:molten_lead_brass>,
  <fluid:amicore:molten_tin_brass>,
  <fluid:amicore:molten_iron_brass>,
  <fluid:amicore:molten_silicon_brass>,
  <fluid:tconstruct:molten_brass>,
  <fluid:tconstruct:molten_pig_iron>,
  <fluid:amicore:molten_crude_steel>,
  <fluid:tconstruct:molten_steel>,
  <fluid:amicore:molten_cobalt_steel>,
  <fluid:amicore:molten_stainless_steel>,
  <fluid:amicore:molten_damascus_steel>,
  <fluid:amicore:molten_alnico>,
  <fluid:tconstruct:molten_bronze>,
  <fluid:amicore:molten_aluminum_bronze>,
  <fluid:amicore:molten_solder>,
  <fluid:tconstruct:molten_hepatizon>,
  <fluid:tconstruct:molten_electrum>,
  <fluid:tconstruct:molten_invar>,
  <fluid:amicore:molten_nichrome>,
  <fluid:amicore:molten_nitinol>,
  <fluid:amicore:molten_sterling_silver>,
  <fluid:tconstruct:molten_constantan>,
  <fluid:tconstruct:molten_netherite>,
  <fluid:amicore:molten_manasteel>,
  <fluid:amicore:molten_terrasteel>,
  <fluid:amicore:molten_elementium>,
  <fluid:tconstruct:molten_slimesteel>,
  <fluid:tconstruct:molten_queens_slime>,
  <fluid:tconstruct:molten_manyullyn>,
  <fluid:amicore:molten_managold>,
  <fluid:amicore:molten_enderium>,
  <fluid:amicore:molten_titaniumaluminide>,
  <fluid:amicore:molten_titaniumiridium>,
  <fluid:amicore:molten_refined_radiance>,
  <fluid:amicore:molten_shadow_steel>,
  <fluid:amicore:molten_overcharged_alloy>,
  <fluid:amicore:molten_aeternium>,
  <fluid:amicore:molten_thallasium>,
  <fluid:amicore:molten_terminite>,
  <fluid:amicore:molten_pendorite>,
  <fluid:amicore:molten_starmetal>,
  <fluid:tdelight:molten_hamletite>,
  <fluid:tdelight:molten_rosenquartz>,
  <fluid:tdelight:molten_gildedfern>
];

#fixing all the casting, bc THERES SOME ISSUES WITH IT

<recipetype:tconstruct:casting_table>.removeRecipe(<item:tconstruct:blank_cast>);
<recipetype:tconstruct:casting_table>.removeRecipe(<item:minecraft:iron_bars>);

<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:ingot_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:ingot_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:ingot_red_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:nugget_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:nugget_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:nugget_red_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:rod_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:rod_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:rod_red_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:plate_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:plate_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:plate_red_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:nugget_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:nugget_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:nugget_red_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:gear_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:gear_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:gear_red_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:wire_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:wire_sand_cast>);
<recipetype:tconstruct:casting_table>.removeRecipeByInput(<item:tconstruct:wire_red_sand_cast>);

#bar stock casts
<recipetype:tconstruct:casting_table>.addItemCastingRecipe("bar_stock_cast", <tag:items:forge:bar_stocks>, <fluid:tconstruct:molten_gold>, <item:amicore:bar_stock_cast>, 200, true, true);
<recipetype:tconstruct:molding_table>.addRecipe("bar_stock_sand_cast",  <item:tconstruct:blank_sand_cast>, <tag:items:forge:bar_stocks>, false, <item:amicore:bar_stock_sand_cast>);
<recipetype:tconstruct:molding_table>.addRecipe("bar_stock_red_sand_cast",  <item:tconstruct:blank_red_sand_cast>, <tag:items:forge:bar_stocks>, false, <item:amicore:bar_stock_red_sand_cast>);

#castings
for i, item in moltens {
  <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_metal_cake_casting", <item:minecraft:air>, moltens[i] * 576, BracketHandlers.getItem("amicore:" + materials[i][0] + "_cake"), 400, false, false);
  <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_bar_stock_casting", <item:amicore:bar_stock_cast>, moltens[i] * 144, BracketHandlers.getItem("amicore:" + materials[i][0] + "_bar_stock"), 80, false, false);
  <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_bar_stock_sand_casting", <item:amicore:bar_stock_sand_cast>, moltens[i] * 144, BracketHandlers.getItem("amicore:" + materials[i][0] + "_bar_stock"), 80, true, false);
  <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_bar_stock_red_sand_casting", <item:amicore:bar_stock_red_sand_cast>, moltens[i] * 144, BracketHandlers.getItem("amicore:" + materials[i][0] + "_bar_stock"), 80, true, false);
  <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_nugget_casting", <item:tconstruct:nugget_cast>, moltens[i] * 144, BracketHandlers.getItem("amicore:" + materials[i][0] + "_nugget"), 80, false, false);
  <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_nugget_sand_casting", <item:tconstruct:nugget_sand_cast>, moltens[i] * 144, BracketHandlers.getItem("amicore:" + materials[i][0] + "_nugget"), 80, true, false);
  <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_nugget_red_sand_casting", <item:tconstruct:nugget_red_sand_cast>, moltens[i] * 144, BracketHandlers.getItem("amicore:" + materials[i][0] + "_nugget"), 80, true, false);

  <recipetype:tconstruct:casting_basin>.addItemCastingRecipe(materials[i][0] + "_ami_block_casting", <item:minecraft:air>, moltens[i] * 1296, BracketHandlers.getItem("amicore:" + materials[i][0] + "_block"), 400, false, false);

  if(materials[i][4] == "true") {
    <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_ingot_casting", <item:tconstruct:ingot_cast>, moltens[i] * 144, BracketHandlers.getItem("amicore:" + materials[i][0] + "_ingot"), 80, false, false);
    <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_ingot_sand_casting", <item:tconstruct:ingot_sand_cast>, moltens[i] * 144, BracketHandlers.getItem("amicore:" + materials[i][0] + "_ingot"), 80, true, false);
    <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_ingot_red_sand_casting", <item:tconstruct:ingot_red_sand_cast>, moltens[i] * 144, BracketHandlers.getItem("amicore:" + materials[i][0] + "_ingot"), 80, true, false);
  } else {
    <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_ingot_casting", <item:tconstruct:ingot_cast>, moltens[i] * 144, BracketHandlers.getItem(materials[i][8]), 80, false, false);
    <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_ingot_sand_casting", <item:tconstruct:ingot_sand_cast>, moltens[i] * 144, BracketHandlers.getItem(materials[i][8]), 80, true, false);
    <recipetype:tconstruct:casting_table>.addItemCastingRecipe(materials[i][0] + "_ami_ingot_red_sand_casting", <item:tconstruct:ingot_red_sand_cast>, moltens[i] * 144, BracketHandlers.getItem(materials[i][8]), 80, true, false);
  }
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_heated_ingot", BracketHandlers.getItem("amicore:" + materials[i][0] + "_heated_ingot"), moltens[i] * 144, 950, 400);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_bar_stock", BracketHandlers.getItem("amicore:" + materials[i][0] + "_bar_stock"), moltens[i] * 144, 950, 400);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_heated_bar_stock", BracketHandlers.getItem("amicore:" + materials[i][0] + "_heated_bar_stock"), moltens[i] * 144, 950, 400);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_cake", BracketHandlers.getItem("amicore:" + materials[i][0] + "_cake"), moltens[i] * 576, 950, 800);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_heated_cake", BracketHandlers.getItem("amicore:" + materials[i][0] + "_heated_cake"), moltens[i] * 576, 950, 800);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_large_sheet", BracketHandlers.getItem("amicore:" + materials[i][0] + "_large_sheet"), moltens[i] * 576, 950, 800);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_heated_large_sheet", BracketHandlers.getItem("amicore:" + materials[i][0] + "_heated_large_sheet"), moltens[i] * 576, 950, 800);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_coil", BracketHandlers.getItem("amicore:" + materials[i][0] + "_coil"), moltens[i] * 576, 950, 500);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_nugget", BracketHandlers.getItem("amicore:" + materials[i][0] + "_nugget"), moltens[i] * 16, 950, 20);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_bolt", BracketHandlers.getItem("amicore:" + materials[i][0] + "_bolt"), moltens[i] * 24, 950, 20);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_rod", BracketHandlers.getItem("amicore:" + materials[i][0] + "_rod"), moltens[i] * 72, 950, 200);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_plate", BracketHandlers.getItem("amicore:" + materials[i][0] + "_plate"), moltens[i] * 144, 950, 400);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_round_sheet", BracketHandlers.getItem("amicore:" + materials[i][0] + "_round_sheet"), moltens[i] * 144, 950, 400);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_wire", BracketHandlers.getItem("amicore:" + materials[i][0] + "_wire"), moltens[i] * 72, 950, 100);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_dust", BracketHandlers.getItem("amicore:" + materials[i][0] + "_dust"), moltens[i] * 144, 950, 200);
  <recipetype:tconstruct:melting>.addMeltingRecipe(materials[i][0] + "_melt_tiny_dust", BracketHandlers.getItem("amicore:" + materials[i][0] + "_tiny_dust"), moltens[i] * 16, 950, 200);
}

#cauldron
craftingTable.removeByName("minecraft:cauldron");
Recipe.type(Type.BLACKSMITH)
  .shapeless([<tag:items:forge:ingots/iron>,<item:minecraft:air>,<tag:items:forge:ingots/iron>,
  <tag:items:forge:ingots/iron>,<item:minecraft:air>,<tag:items:forge:ingots/iron>,
  <tag:items:forge:ingots/iron>,<tag:items:forge:ingots/iron>,<tag:items:forge:ingots/iron>])
  .output(<item:minecraft:cauldron>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();

  
#tongs
Recipe.type(Type.BLACKSMITH)
  .shaped([[<tag:items:forge:nuggets/iron>,<tag:items:forge:ingots/iron>,<tag:items:forge:nuggets/iron>],
  [<item:minecraft:air>,<tag:items:forge:bolts/wooden>,<item:minecraft:air>],
  [<tag:items:forge:ingots/iron>,<item:minecraft:air>,<tag:items:forge:ingots/iron>]])
  .output(<item:amicore:metal_tongs>)
  .tool(<tag:items:artisantools:type/hammer>, 1)
  .register();