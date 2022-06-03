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


var colorname = ["white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"] as string[];
var colors = [16383998,16351261,13061821,3847130,16701501,8439583,15961002,6316128,10329495,1481884,8991416,3949738,8606770,6192150,11546150,3289650] as int[];
var types = ["fairy_light", "paper_lantern", "orb_lantern", "flower_light", "candle_lantern_light", "oil_lantern_light", "jack_o_lantern", "skull_light", "ghost_light", "spider_light",
"witch_light", "snowflake_light", "heart_light", "moon_light", "star_light", "icicle_lights", "meteor_light"] as string[];

craftingTable.removeRecipe(<item:fairylights:fairy_light>);
craftingTable.removeRecipe(<item:fairylights:paper_lantern>);
craftingTable.removeRecipe(<item:fairylights:orb_lantern>);
craftingTable.removeRecipe(<item:fairylights:flower_light>);
craftingTable.removeRecipe(<item:fairylights:candle_lantern_light>);
craftingTable.removeRecipe(<item:fairylights:oil_lantern_light>);
craftingTable.removeRecipe(<item:fairylights:jack_o_lantern>);
craftingTable.removeRecipe(<item:fairylights:skull_light>);
craftingTable.removeRecipe(<item:fairylights:ghost_light>);
craftingTable.removeRecipe(<item:fairylights:spider_light>);
craftingTable.removeRecipe(<item:fairylights:witch_light>);
craftingTable.removeRecipe(<item:fairylights:snowflake_light>);
craftingTable.removeRecipe(<item:fairylights:heart_light>);
craftingTable.removeRecipe(<item:fairylights:moon_light>);
craftingTable.removeRecipe(<item:fairylights:star_light>);
craftingTable.removeRecipe(<item:fairylights:icicle_lights>);
craftingTable.removeRecipe(<item:fairylights:meteor_light>);
craftingTable.removeRecipe(<item:fairylights:triangle_pennant>);
craftingTable.removeRecipe(<item:fairylights:spearhead_pennant>);
craftingTable.removeRecipe(<item:fairylights:swallowtail_pennant>);
craftingTable.removeRecipe(<item:fairylights:square_pennant>);
craftingTable.removeRecipe(<item:fairylights:tinsel>);
craftingTable.removeRecipe(<item:fairylights:pennant_bunting>);
craftingTable.removeRecipe(<item:fairylights:hanging_lights>);
craftingTable.removeRecipe(<item:fairylights:oil_lantern>);
craftingTable.removeRecipe(<item:fairylights:candle_lantern>);
craftingTable.removeRecipe(<item:fairylights:incandescent_light>);
craftingTable.removeRecipe(<item:fairylights:letter_bunting>);
craftingTable.removeRecipe(<item:fairylights:garland>);

craftingTable.removeByName("fairylights:color_changing_light");

#basics
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:minecraft:stick>,<item:minecraft:air>],
  [<item:minecraft:stick>,<item:minecraft:glowstone_dust>,<item:minecraft:stick>],
  [<tag:items:forge:plates/iron>,<tag:items:forge:glass_panes/colorless>,<tag:items:forge:plates/iron>]])
  .output(<item:fairylights:oil_lantern>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register("fairylight_oil_lantern");
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<tag:items:forge:nuggets/gold>,<item:minecraft:air>],
  [<tag:items:forge:nuggets/gold>,<item:minecraft:glowstone_dust>,<tag:items:forge:nuggets/gold>],
  [<tag:items:forge:plates/iron>,<tag:items:forge:glass_panes/colorless>,<tag:items:forge:plates/iron>]])
  .output(<item:fairylights:candle_lantern>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register("fairylight_candle_lantern");
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<tag:items:forge:nuggets/gold>,<item:minecraft:air>],
  [<tag:items:forge:glass_panes/colorless>,<item:minecraft:glowstone_dust>,<tag:items:forge:glass_panes/colorless>],
  [<tag:items:forge:plates/iron>,<tag:items:forge:glass_panes/colorless>,<tag:items:forge:plates/iron>]])
  .output(<item:fairylights:incandescent_light>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register("fairylight_incandescent_lantern");
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:minecraft:string>,<item:minecraft:air>],
  [<item:minecraft:paper>,<item:minecraft:black_dye>,<item:minecraft:feather>]])
  .output(<item:fairylights:letter_bunting>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register("fairylight_letter_bunting");
Recipe.type(Type.BASIC)
  .shaped([[<item:minecraft:air>,<item:minecraft:vine>,<item:minecraft:air>]])
  .output(<item:fairylights:garland>)
  .tool(<tag:items:artisantools:type/cutters>, 1)
  .secondary([<item:amicore:iron_bolt>*2])
  .register("fairylight_garland");


for i, zzz in colors {
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:forge:plates/iron>,<item:minecraft:glowstone_dust>,<tag:items:forge:plates/iron>],
    [<item:minecraft:air>,<tag:items:forge:glass_panes/colorless>,<item:minecraft:air>]])
    .output(<item:fairylights:fairy_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_fairy_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:paper>,<item:minecraft:glowstone_dust>,<item:minecraft:paper>],
    [<item:minecraft:air>,<item:minecraft:paper>,<item:minecraft:air>]])
    .output(<item:fairylights:paper_lantern>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_paper_lantern_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:white_wool>,<item:minecraft:glowstone_dust>,<item:minecraft:white_wool>],
    [<item:minecraft:air>,<item:minecraft:paper>,<item:minecraft:air>]])
    .output(<item:fairylights:orb_lantern>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_orb_lantern_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:minecraft:small_flowers>,<item:minecraft:glowstone_dust>,<tag:items:minecraft:small_flowers>],
    [<item:minecraft:air>,<item:minecraft:paper>,<item:minecraft:air>]])
    .output(<item:fairylights:flower_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_flower_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:forge:plates/iron>,<item:minecraft:glowstone_dust>,<tag:items:forge:plates/iron>],
    [<tag:items:forge:nuggets/gold>,<tag:items:forge:nuggets/gold>,<tag:items:forge:nuggets/gold>]])
    .output(<item:fairylights:candle_lantern_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_candle_lantern_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:stick>,<item:minecraft:glowstone_dust>,<item:minecraft:stick>],
    [<tag:items:forge:plates/iron>,<tag:items:forge:glass_panes/colorless>,<tag:items:forge:plates/iron>]])
    .output(<item:fairylights:oil_lantern_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_oil_lantern_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:paper>,<item:minecraft:glowstone_dust>,<item:minecraft:paper>],
    [<item:minecraft:torch>,<item:minecraft:jack_o_lantern>,<item:minecraft:torch>]])
    .output(<item:fairylights:jack_o_lantern>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_jack_o_lantern_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:forge:plates/iron>,<item:minecraft:glowstone_dust>,<tag:items:forge:plates/iron>],
    [<item:minecraft:air>,<tag:items:forge:bones>,<item:minecraft:air>]])
    .output(<item:fairylights:skull_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_skull_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:paper>,<item:minecraft:glowstone_dust>,<item:minecraft:paper>],
    [<tag:items:forge:rounded_sheets/iron>,<tag:items:forge:glass_panes/colorless>,<tag:items:forge:rounded_sheets/iron>]])
    .output(<item:fairylights:ghost_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_ghost_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:stick>,<item:minecraft:glowstone_dust>,<item:minecraft:stick>],
    [<item:minecraft:string>,<item:minecraft:spider_eye>,<item:minecraft:string>]])
    .output(<item:fairylights:spider_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_spider_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:paper>,<item:minecraft:glowstone_dust>,<item:minecraft:paper>],
    [<item:minecraft:glass_bottle>,<tag:items:forge:rounded_sheets/iron>,<item:minecraft:wheat>]])
    .output(<item:fairylights:witch_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_witch_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:forge:ices/snowball>,<item:minecraft:glowstone_dust>,<tag:items:forge:ices/snowball>],
    [<item:minecraft:air>,<tag:items:forge:glass_panes/colorless>,<item:minecraft:air>]])
    .output(<item:fairylights:snowflake_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_snowflake_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:forge:plates/iron>,<item:minecraft:glowstone_dust>,<tag:items:forge:plates/iron>],
    [<item:minecraft:air>,<tag:items:forge:glass_panes/red>,<item:minecraft:air>]])
    .output(<item:fairylights:heart_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_heart_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:forge:plates/iron>,<item:minecraft:glowstone_dust>,<tag:items:forge:plates/iron>],
    [<tag:items:forge:glass_panes/light_gray>,<tag:items:forge:glass_panes/white>,<tag:items:forge:glass_panes/gray>]])
    .output(<item:fairylights:moon_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_moon_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:forge:plates/iron>,<item:minecraft:glowstone_dust>,<tag:items:forge:plates/iron>],
    [<tag:items:forge:nuggets/gold>,<tag:items:forge:glass_panes/yellow>,<tag:items:forge:nuggets/gold>]])
    .output(<item:fairylights:star_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_star_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:forge:glass_panes/colorless>,<item:minecraft:glowstone_dust>,<tag:items:forge:plates/iron>],
    [<item:minecraft:air>,<item:minecraft:water_bucket>,<item:minecraft:air>]])
    .output(<item:fairylights:icicle_lights>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_icicle_lights_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:forge:glass_panes/colorless>,<item:minecraft:glowstone_dust>,<tag:items:forge:plates/iron>]])
    .output(<item:fairylights:icicle_lights>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .fluid(<fluid:minecraft:water>*1000)
    .register("fairylight_icicle_lights_fluid_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<tag:items:forge:plates/iron>,<item:minecraft:glowstone_dust>,<tag:items:forge:plates/iron>],
    [<tag:items:forge:glass_panes/colorless>,<item:minecraft:glowstone_dust>,<tag:items:forge:glass_panes/colorless>]])
    .output(<item:fairylights:meteor_light>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_meteor_light_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:string>,<item:minecraft:paper>,<item:minecraft:string>],
    [<item:minecraft:air>,<item:minecraft:paper>,<item:minecraft:air>]])
    .output(<item:fairylights:triangle_pennant>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_triangle_pennant_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:string>,<item:minecraft:paper>,<item:minecraft:string>],
    [<item:minecraft:air>,<item:minecraft:paper>,<item:minecraft:paper>]])
    .output(<item:fairylights:spearhead_pennant>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_spearhead_pennant_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:string>,<item:minecraft:paper>,<item:minecraft:string>],
    [<item:minecraft:paper>,<item:minecraft:air>,<item:minecraft:paper>]])
    .output(<item:fairylights:swallowtail_pennant>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_swallowtail_pennant_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:air>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:air>],
    [<item:minecraft:string>,<item:minecraft:paper>,<item:minecraft:string>],
    [<item:minecraft:paper>,<item:minecraft:paper>,<item:minecraft:paper>]])
    .output(<item:fairylights:square_pennant>.withTag({color: zzz as int})*4)
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_square_pennant_" + colorname[i]);

  for type in types {
    Recipe.type(Type.BASIC)
      .shaped([[<item:minecraft:string>,<item:minecraft:string>,<item:minecraft:string>],
      [BracketHandlers.getItem("fairylights:" + type).withTag({color: zzz as int}),<item:minecraft:air>,<item:minecraft:air>]])
      .output(<item:fairylights:hanging_lights>.withTag({"string": "fairylights:" + colorname[i] + "_string" as string, pattern: [{id: "fairylights:" + type as string, Count: 1 as byte, tag: {color: zzz as int}}]}))
      .tool(<tag:items:artisantools:type/cutters>, 1)
      .secondary([<item:amicore:iron_bolt>*2])
      .register("fairylight_hanging_lights_" + colorname[i] + "_" + type);
    }

  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:string>,<item:minecraft:string>,<item:minecraft:string>],
    [<item:fairylights:triangle_pennant>.withTag({color: zzz as int}),<item:minecraft:air>,<item:minecraft:air>]])
    .output(<item:fairylights:pennant_bunting>.withTag({pattern: [{id: "fairylights:triangle_pennant" as string, Count: 1 as byte, tag: {color: zzz as int}}], text: {styling: [], value: "" as string}, color: zzz as int}))
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_pennant_bunting_triangle_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:string>,<item:minecraft:string>,<item:minecraft:string>],
    [<item:fairylights:swallowtail_pennant>.withTag({color: zzz as int}),<item:minecraft:air>,<item:minecraft:air>]])
    .output(<item:fairylights:pennant_bunting>.withTag({pattern: [{id: "fairylights:swallowtail_pennant" as string, Count: 1 as byte, tag: {color: zzz as int}}], text: {styling: [], value: "" as string}, color: zzz as int}))
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_pennant_bunting_swallowtail_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:string>,<item:minecraft:string>,<item:minecraft:string>],
    [<item:fairylights:spearhead_pennant>.withTag({color: zzz as int}),<item:minecraft:air>,<item:minecraft:air>]])
    .output(<item:fairylights:pennant_bunting>.withTag({pattern: [{id: "fairylights:spearhead_pennant" as string, Count: 1 as byte, tag: {color: zzz as int}}], text: {styling: [], value: "" as string}, color: zzz as int}))
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_pennant_bunting_spearhead" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:string>,<item:minecraft:string>,<item:minecraft:string>],
    [<item:fairylights:square_pennant>.withTag({color: zzz as int}),<item:minecraft:air>,<item:minecraft:air>]])
    .output(<item:fairylights:pennant_bunting>.withTag({pattern: [{id: "fairylights:square_pennant" as string, Count: 1 as byte, tag: {color: zzz as int}}], text: {styling: [], value: "" as string}, color: zzz as int}))
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_pennant_bunting_square_" + colorname[i]);
  Recipe.type(Type.BASIC)
    .shaped([[<item:minecraft:string>,<tagManager:items>.getTag("forge:dyes/" + colorname[i]),<item:minecraft:string>],
    [<item:minecraft:paper>,<item:minecraft:string>,<item:minecraft:paper>]])
    .output(<item:fairylights:tinsel>.withTag({color: zzz as int}))
    .tool(<tag:items:artisantools:type/cutters>, 1)
    .secondary([<item:amicore:iron_bolt>*2])
    .register("fairylight_tinsel_" + colorname[i]);
}
