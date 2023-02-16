import crafttweaker.api.BracketHandlers;
import mods.botanypots.ZenCrop;
import mods.botanypots.ZenSoil;
import mods.botanypots.ZenFertilizer;

val fertilizers = <recipetype:botanypots:fertilizer>;
val soils = <recipetype:botanypots:soil>;
val crops = <recipetype:botanypots:crop>;
var cloche = <recipetype:immersiveengineering:cloche>;

cloche.removeAll();

<recipetype:immersiveengineering:fertilizer>.addFertilizer("biowaste", <item:amicore:biowaste>, 1.5F);

#pams fruit trees
val pamstreetypes = [
    ["avocado", "oak"], 
    ["candlenut", "oak"], 
    ["cherry", "oak"], 
    ["chestnut", "oak"], 
    ["gooseberry", "oak"],
    ["lemon", "oak"], 
["nutmeg", "oak"], 
["orange", "oak"], 

["peach", "oak"], 
["pear", "oak"], 
["plum", "oak"], 
["walnut", "oak"], 
["hazelnut", "oak"], 
["pawpaw", "oak"], 
["soursop", "oak"], 
["almond", "jungle"], 
["apricot", "jungle"], 
["banana", "jungle"], 
["cashew", "jungle"], 
["cinnamon", "jungle"], 
["coconut", "jungle"], 
["date", "jungle"],
["dragonfruit", "jungle"],

["durian", "jungle"], 
["fig", "jungle"], 
["grapefruit", "jungle"], 
["lime", "jungle"], 
["mango", "jungle"], 
["olive", "jungle"], 
["papaya", "jungle"],
["pecan", "jungle"],

["peppercorn", "jungle"], 
["persimmon", "jungle"], 
["pistachio", "jungle"], 
["pomegranate", "jungle"], 
["starfruit", "jungle"],
["vanillabean", "jungle"], 
["breadfruit", "jungle"], 
["guava", "jungle"], 

["jackfruit", "jungle"], 
["lychee", "jungle"], 
["passionfruit", "jungle"],
["rambutan", "jungle"], 
["tamarind", "jungle"], 
["pinenut", "spruce"]] as string[][];

for item in pamstreetypes {
    cloche.addRecipe("pamhc2_" + item[0] + "_farming", BracketHandlers.getItem("pamhc2trees:" + item[0] + "_sapling"), <item:farmersdelight:rich_soil>, 2200, [BracketHandlers.getItem("pamhc2trees:" + item[0] + "item")], BracketHandlers.getBlockState("pamhc2trees:" + item[0] + "_sapling").block, "generic");
    cloche.addRecipe("pamhc2_" + item[0] + "_chopping", BracketHandlers.getItem("pamhc2trees:" + item[0] + "_sapling"), <item:minecraft:dirt>, 2200, [BracketHandlers.getItem("minecraft:" + item[1] + "_log")* 2], BracketHandlers.getBlockState("pamhc2trees:" + item[0] + "_sapling").block, "generic");
}

cloche.addRecipe("pamhc2_apple_farming", <item:pamhc2trees:apple_sapling>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:apple>], <blockstate:pamhc2trees:apple_sapling>.block, "generic");
cloche.addRecipe("pamhc2_apple_chopping", <item:pamhc2trees:apple_sapling>, <item:minecraft:dirt>, 2200, [<item:minecraft:oak_log> * 2], <blockstate:pamhc2trees:apple_sapling>.block, "generic");

cloche.addRecipe("pamhc2_paper_farming", <item:pamhc2trees:paperbark_sapling>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:paper> * 2], <blockstate:pamhc2trees:paperbark_sapling>.block, "generic");

cloche.addRecipe("pamhc2_maple_farming", <item:pamhc2trees:maple_sapling>, <item:farmersdelight:rich_soil>, 2200, [<item:pamhc2trees:maplesyrupitem>], <blockstate:pamhc2trees:maple_sapling>.block, "generic");

cloche.addRecipe("pamhc2_string_farming", <item:pamhc2trees:spiderweb_sapling>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:string>], <blockstate:pamhc2trees:spiderweb_sapling>.block, "generic");
cloche.addRecipe("pamhc2_string_chopping", <item:pamhc2trees:spiderweb_sapling>, <item:minecraft:dirt>, 2200, [<item:minecraft:oak_log> * 2], <blockstate:pamhc2trees:spiderweb_sapling>.block, "generic");

#regular trees
cloche.addRecipe("oak_chopping", <item:minecraft:oak_sapling>, <item:minecraft:dirt>, 2200, [<item:minecraft:oak_log> * 2], <blockstate:minecraft:oak_sapling>.block, "generic");
cloche.addRecipe("birch_chopping", <item:minecraft:birch_sapling>, <item:minecraft:dirt>, 2200, [<item:minecraft:birch_log> * 2], <blockstate:minecraft:birch_sapling>.block, "generic");
cloche.addRecipe("spruce_chopping", <item:minecraft:spruce_sapling>, <item:minecraft:dirt>, 2200, [<item:minecraft:spruce_log> * 2], <blockstate:minecraft:spruce_sapling>.block, "generic");
cloche.addRecipe("jungle_chopping", <item:minecraft:jungle_sapling>, <item:minecraft:dirt>, 2200, [<item:minecraft:jungle_log> * 2], <blockstate:minecraft:jungle_sapling>.block, "generic");
cloche.addRecipe("acacia_chopping", <item:minecraft:acacia_sapling>, <item:minecraft:dirt>, 2200, [<item:minecraft:acacia_log> * 2], <blockstate:minecraft:acacia_sapling>.block, "generic");
cloche.addRecipe("dark_oak_chopping", <item:minecraft:dark_oak_sapling>, <item:minecraft:dirt>, 2200, [<item:minecraft:dark_oak_log> * 2], <blockstate:minecraft:dark_oak_sapling>.block, "generic");

var bygWoods = ["aspen", "baobab", "blue_enchanted", "cika", "cypress", "ebony", "fir", 
"green_enchanted", "holly", "jacaranda", "mahogany", "mangrove", "maple", "palm", 
"pine", "rainbow_eucalyptus", "redwood", "skyris", "willow", "witch_hazel", "zelkova"] as string[];
var bygMixed = [
    ["blue_spruce", "spruce"],
    ["brown_birch", "birch"],
    ["brown_oak", "oak"],
    ["joshua", "oak"],
    ["orange_birch", "birch"],
    ["orange_oak", "oak"],
    ["orange_spruce", "spruce"],
    ["orchard", "oak"],
    ["red_birch", "birch"],
    ["red_oak", "oak"],
    ["red_spruce", "spruce"],
    ["yellow_birch", "birch"],
    ["yellow_spruce", "spruce"]
] as string[][];
var bygMixedNV = [
    ["brown_zelkova", "zelkova"],
    ["araucaria", "pine"],
    ["pink_cherry", "cherry"],
    ["white_cherry", "cherry"]
] as string [][];

for item in bygWoods {
    cloche.addRecipe("byg_" + item + "_chopping", BracketHandlers.getItem("byg:" + item + "_sapling"), <item:minecraft:dirt>, 2200, [BracketHandlers.getItem("byg:" + item + "_log")* 2], BracketHandlers.getBlockState("byg:" + item + "_sapling").block, "generic");
}
for item in bygMixed {
    cloche.addRecipe("byg_" + item[0] + "_chopping", BracketHandlers.getItem("byg:" + item[0] + "_sapling"), <item:minecraft:dirt>, 2200, [BracketHandlers.getItem("minecraft:" + item[1] + "_log")* 2], BracketHandlers.getBlockState("byg:" + item[0] + "_sapling").block, "generic");
}
for item in bygMixedNV {
    cloche.addRecipe("byg_" + item[0] + "_chopping", BracketHandlers.getItem("byg:" + item[0] + "_sapling"), <item:minecraft:dirt>, 2200, [BracketHandlers.getItem("byg:" + item[1] + "_log")* 2], BracketHandlers.getBlockState("byg:" + item[0] + "_sapling").block, "generic");
}

var quark = [
    "blue_blossom",
    "lavender_blossom",
    "orange_blossom",
    "pink_blossom",
    "yellow_blossom",
    "red_blossom"
] as string[];


for item in quark {
    cloche.addRecipe("quark_" + item + "_chopping", BracketHandlers.getItem("quark:" + item + "_sapling"), <item:minecraft:dirt>, 2200, [<item:minecraft:spruce_log>* 2], BracketHandlers.getBlockState("quark:" + item + "_sapling").block, "generic");
}

cloche.addRecipe("malum_runewood_chopping", <item:malum:runewood_sapling>, <item:minecraft:dirt>, 2200, [<item:malum:runewood_log> * 2], <blockstate:malum:runewood_sapling>.block, "generic");
cloche.addRecipe("malum_sappy_runewood_chopping", <item:malum:runewood_sapling>, <item:farmersdelight:rich_soil>, 2200, [<item:malum:sap_filled_runewood_log> * 2], <blockstate:malum:runewood_sapling>.block, "generic");

#vines
// //grass vines
cloche.addRecipe("vines", <item:minecraft:vine>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:vine> * 2], <blockstate:minecraft:vine>.block, "stacking");
// cloche.addRecipe("glow_lichen", <item:cavesandcliffs:glow_lichen>, <item:farmersdelight:rich_soil>, 2200, [<item:cavesandcliffs:glow_lichen> * 2], <blockstate:cavesandcliffs:glow_lichen>.block, "stacking");
cloche.addRecipe("cave_roots", <item:quark:root>, <item:farmersdelight:rich_soil>, 2200, [<item:quark:root_item> * 2], <blockstate:quark:root>.block, "stacking");
cloche.addRecipe("bamboo", <item:minecraft:bamboo>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:bamboo> * 2], <blockstate:minecraft:bamboo>.block, "stacking");
cloche.addRecipe("sugarcane", <item:minecraft:sugar_cane>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:sugar_cane> * 2], <blockstate:minecraft:sugar_cane>.block, "stacking");
cloche.addRecipe("kelp", <item:minecraft:kelp>, <item:minecraft:water_bucket>, 2200, [<item:minecraft:kelp> * 2], <blockstate:minecraft:kelp>.block, "stacking");
cloche.addRecipe("seagrass", <item:minecraft:seagrass>, <item:minecraft:water_bucket>, 2200, [<item:minecraft:seagrass> * 2], <blockstate:minecraft:seagrass>.block, "generic");
cloche.addRecipe("grass", <item:minecraft:grass>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:grass> * 2], <blockstate:minecraft:grass>.block, "generic");
cloche.addRecipe("sweet_berries", <item:minecraft:sweet_berries>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:sweet_berries> * 2], <blockstate:minecraft:sweet_berry_bush>.withProperty("age", "3").block, "generic");

#dry plants
cloche.addRecipe("cactus", <item:minecraft:cactus>, <item:minecraft:sand>, 2200, [<item:minecraft:cactus>], <blockstate:minecraft:cactus>.block, "stacking");
cloche.addRecipe("cactus_red", <item:minecraft:cactus>, <item:minecraft:red_sand>, 2200, [<item:minecraft:cactus>], <blockstate:minecraft:cactus>.block, "stacking");


#nether
cloche.addRecipe("crimson_farming", <item:minecraft:crimson_fungus>, <item:amicore:rich_crimson_nylium>, 2200, [<item:minecraft:crimson_fungus>, <item:minecraft:nether_wart_block>, <item:minecraft:shroomlight>], <blockstate:minecraft:crimson_fungus>.block, "generic");
cloche.addRecipe("crimson_chopping", <item:minecraft:crimson_fungus>, <item:minecraft:crimson_nylium>, 2200, [<item:minecraft:crimson_stem>], <blockstate:minecraft:crimson_fungus>.block, "generic");
cloche.addRecipe("warped_farming", <item:minecraft:warped_fungus>, <item:amicore:rich_warped_nylium>, 2200, [<item:minecraft:warped_fungus>, <item:minecraft:warped_wart_block>, <item:minecraft:shroomlight>], <blockstate:minecraft:warped_fungus>.block, "generic");
cloche.addRecipe("warped_chopping", <item:minecraft:warped_fungus>, <item:minecraft:warped_nylium>, 2200, [<item:minecraft:warped_stem>], <blockstate:minecraft:warped_fungus>.block, "generic");
cloche.addRecipe("sythian_farming", <item:byg:sythian_fungus>, <item:amicore:rich_sythian_nylium>, 2200, [<item:byg:sythian_fungus>, <item:byg:sythian_wart_block>, <item:minecraft:shroomlight>], <blockstate:byg:sythian_fungus>.block, "generic");
cloche.addRecipe("sythian_chopping", <item:byg:sythian_fungus>, <item:byg:sythian_nylium>, 2200, [<item:byg:sythian_stem>], <blockstate:byg:sythian_fungus>.block, "generic");
cloche.addRecipe("embur_farming", <item:byg:embur_wart>, <item:amicore:rich_embur_nylium>, 2200, [<item:byg:embur_wart>, <item:byg:embur_gel_ball>], <blockstate:byg:embur_wart>.block, "generic");
cloche.addRecipe("embur_chopping", <item:byg:embur_wart>, <item:byg:embur_nylium>, 2200, [<item:byg:embur_pedu>, <item:byg:pollen_block>], <blockstate:byg:embur_wart>.block, "generic");

cloche.addRecipe("weeping_vines", <item:minecraft:weeping_vines>, <item:amicore:rich_crimson_nylium>, 2200, [<item:minecraft:weeping_vines>*2], <blockstate:minecraft:weeping_vines>.block, "stacking");
cloche.addRecipe("twisting_vines", <item:minecraft:twisting_vines>, <item:amicore:rich_warped_nylium>, 2200, [<item:minecraft:twisting_vines>*2], <blockstate:minecraft:twisting_vines>.block, "stacking");
cloche.addRecipe("sythian_stalk", <item:byg:sythian_stalk_block>, <item:amicore:rich_sythian_nylium>, 2200, [<item:byg:sythian_stalk_block>*2], <blockstate:byg:sythian_stalk_block>.block, "stacking");
cloche.addRecipe("embur_gel_vines", <item:byg:embur_gel_vines>, <item:amicore:rich_embur_nylium>, 2200, [<item:byg:embur_gel_vines>*2, <item:byg:embur_gel_ball>], <blockstate:byg:embur_gel_vines>.block, "stacking");
cloche.addRecipe("embur_gel_branch", <item:byg:embur_gel_branch>, <item:byg:embur_pedu>, 2200, [<item:byg:embur_gel_branch>*2], <blockstate:byg:embur_gel_vines>.block, "stacking");

cloche.addRecipe("warped_cactus", <item:byg:warped_cactus>, <item:byg:nylium_soul_sand>, 2200, [<item:byg:warped_cactus> * 2], <blockstate:byg:warped_cactus>.block, "stacking");

cloche.addRecipe("blue_glowcane", <item:byg:blue_glowcane>, <item:byg:glowcelium_block>, 2200, [<item:byg:blue_glowcane> * 2], <blockstate:byg:blue_glowcane>.block, "stacking");
cloche.addRecipe("pink_glowcane", <item:byg:pink_glowcane>, <item:byg:glowcelium_block>, 2200, [<item:byg:pink_glowcane> * 2], <blockstate:byg:pink_glowcane>.block, "stacking");
cloche.addRecipe("purple_glowcane", <item:byg:purple_glowcane>, <item:byg:glowcelium_block>, 2200, [<item:byg:purple_glowcane> * 2], <blockstate:byg:purple_glowcane>.block, "stacking");
cloche.addRecipe("red_glowcane", <item:byg:red_glowcane>, <item:byg:glowcelium_block>, 2200, [<item:byg:red_glowcane> * 2], <blockstate:byg:red_glowcane>.block, "stacking");

cloche.addRecipe("weeping_roots", <item:byg:weeping_roots>, <item:amicore:rich_crimson_nylium>, 2200, [<item:byg:weeping_roots>*2], <blockstate:byg:weeping_roots>.block, "stacking");
cloche.addRecipe("lament_vine", <item:byg:lament_vine>, <item:byg:overgrown_netherrack>, 2200, [<item:byg:lament_vine>*2], <blockstate:byg:lament_vine>.block, "stacking");
cloche.addRecipe("arisian_bloom_branch", <item:byg:arisian_bloom_branch>, <item:byg:withering_oak_log>, 2200, [<item:byg:arisian_bloom_branch>*2], <blockstate:byg:arisian_bloom_branch>.block, "generic");

#slimy
cloche.addRecipe("greenheart_chopping", <item:tconstruct:earth_slime_sapling>, <item:tconstruct:earth_slime_dirt>, 2200, [<item:tconstruct:greenheart_log> * 2], <blockstate:tconstruct:earth_slime_sapling>.block, "generic");
cloche.addRecipe("greenheart_growing", <item:tconstruct:earth_slime_sapling>, <item:amicore:rich_earth_slime_dirt>, 2200, [<item:minecraft:slime_ball> * 2], <blockstate:tconstruct:earth_slime_sapling>.block, "generic");
cloche.addRecipe("skyroot_chopping", <item:tconstruct:sky_slime_sapling>, <item:tconstruct:sky_slime_dirt>, 2200, [<item:tconstruct:skyroot_log> * 2], <blockstate:tconstruct:sky_slime_sapling>.block, "generic");
cloche.addRecipe("skyroot_growing", <item:tconstruct:sky_slime_sapling>, <item:amicore:rich_sky_slime_dirt>, 2200, [<item:tconstruct:sky_slime_ball> * 2], <blockstate:tconstruct:sky_slime_sapling>.block, "generic");
cloche.addRecipe("endersime_chopping", <item:tconstruct:ender_slime_sapling>, <item:tconstruct:ender_slime_dirt>, 2200, [<item:tconstruct:greenheart_log> * 2], <blockstate:tconstruct:ender_slime_sapling>.block, "generic");
cloche.addRecipe("endersime_growing", <item:tconstruct:ender_slime_sapling>, <item:amicore:rich_ender_slime_dirt>, 2200, [<item:tconstruct:ender_slime_ball> * 2], <blockstate:tconstruct:ender_slime_sapling>.block, "generic");

cloche.addRecipe("sky_slime_vine", <item:tconstruct:sky_slime_vine>, <item:amicore:rich_sky_slime_dirt>, 2200, [<item:tconstruct:sky_slime_vine> * 2], <blockstate:tconstruct:sky_slime_vine>.block, "stacking");
cloche.addRecipe("ender_slime_vine", <item:tconstruct:ender_slime_vine>, <item:amicore:rich_ender_slime_dirt>, 2200, [<item:tconstruct:ender_slime_vine> * 2], <blockstate:tconstruct:ender_slime_vine>.block, "stacking");

#ender


#soils
craftingTable.addShapeless("rich_crimson_nylium", <item:amicore:rich_crimson_nylium>, [<item:farmersdelight:rich_soil>,<item:minecraft:crimson_nylium>]);
craftingTable.addShapeless("rich_warped_nylium", <item:amicore:rich_warped_nylium>, [<item:farmersdelight:rich_soil>,<item:minecraft:warped_nylium>]);
craftingTable.addShapeless("rich_sythian_nylium", <item:amicore:rich_sythian_nylium>, [<item:farmersdelight:rich_soil>,<item:byg:sythian_nylium>]);
craftingTable.addShapeless("rich_embur_nylium", <item:amicore:rich_embur_nylium>, [<item:farmersdelight:rich_soil>,<item:byg:embur_nylium>]);

craftingTable.addShapeless("rich_earth_slime_dirt", <item:amicore:rich_earth_slime_dirt>, [<item:farmersdelight:rich_soil>,<item:tconstruct:earth_slime_dirt>]);
craftingTable.addShapeless("rich_sky_slime_dirt", <item:amicore:rich_sky_slime_dirt>, [<item:farmersdelight:rich_soil>,<item:tconstruct:sky_slime_dirt>]);
craftingTable.addShapeless("rich_ender_slime_dirt", <item:amicore:rich_ender_slime_dirt>, [<item:farmersdelight:rich_soil>,<item:tconstruct:ender_slime_dirt>]);
craftingTable.addShapeless("rich_ichor_slime_dirt", <item:amicore:rich_ichor_slime_dirt>, [<item:farmersdelight:rich_soil>,<item:tconstruct:ichor_slime_dirt>]);

/**
    Botany Pot Changes   -----------------------------------------------------------=-=-=-=-=---------------------------------------------------------
 */



soils.removeAll();

val dirtSoil = soils.create("amicore:dirt", <item:minecraft:dirt>, <blockstate:minecraft:dirt>, 0, "overworld");
val farmlandSoil = soils.create("amicore:farmland", <item:minecraft:farmland>, <blockstate:minecraft:farmland>, 0.05, "overworld");
val coarse_dirtSoil = soils.create("amicore:coarse_dirt", <item:minecraft:coarse_dirt>, <blockstate:minecraft:coarse_dirt>, 0, "overworld");
val rich_soilSoil = soils.create("amicore:rich_soil", <item:farmersdelight:rich_soil>, <blockstate:farmersdelight:rich_soil>, 0.1, "overworld");
val rich_soil_farmlandSoil = soils.create("amicore:rich_soil_farmland", <item:farmersdelight:rich_soil_farmland>, <blockstate:farmersdelight:rich_soil_farmland>, 0.25, "overworld");

val grass_blockSoil = soils.create("amicore:grass_block", <item:minecraft:grass_block>, <blockstate:minecraft:grass_block>, 0, "grassy_overworld");

val sandSoil = soils.create("amicore:sand", <item:minecraft:sand>, <blockstate:minecraft:sand>, 0, "sandy_overworld");

val dry_grassSoil = soils.create("amicore:dry_grass", <item:botania:dry_grass>, <blockstate:botania:dry_grass>, 0, "botanic_grass");
val golden_grassSoil = soils.create("amicore:golden_grass", <item:botania:golden_grass>, <blockstate:botania:golden_grass>, 0.05, "botanic_grass");
val vivid_grassSoil = soils.create("amicore:vivid_grass", <item:botania:vivid_grass>, <blockstate:botania:vivid_grass>, 0.1, "botanic_grass");
val scorched_grassSoil = soils.create("amicore:scorched_grass", <item:botania:scorched_grass>, <blockstate:botania:scorched_grass>, 0, "botanic_grass");
val infused_grassSoil = soils.create("amicore:infused_grass", <item:botania:infused_grass>, <blockstate:botania:infused_grass>, 0.1, "botanic_grass");
val mutated_grassSoil = soils.create("amicore:mutated_grass", <item:botania:mutated_grass>, <blockstate:botania:mutated_grass>, 0, "botanic_grass");

val myceliumSoil = soils.create("amicore:mycelium", <item:minecraft:mycelium>, <blockstate:minecraft:mycelium>, 0, "mycelial");
val glowcelium_blockSoil = soils.create("amicore:glowcelium_block", <item:byg:glowcelium_block>, <blockstate:byg:glowcelium_block>, 0.05, "mycelial");
val glowceliumSoil = soils.create("amicore:glowcelium", <item:quark:glowcelium>, <blockstate:quark:glowcelium>, 0.05, "mycelial");

val waterSoil = soils.create("amicore:water", <item:minecraft:water_bucket>, <blockstate:minecraft:water>, 0, "watery");

val soul_soilSoil = soils.create("amicore:soul_soil", <item:minecraft:soul_soil>, <blockstate:minecraft:soul_soil>, 0.05, "soulfull");
val soul_sandSoil = soils.create("amicore:soul_sand", <item:minecraft:soul_sand>, <blockstate:minecraft:soul_sand>, 0, "soulfull");
val crimson_nyliumSoil = soils.create("amicore:crimson_nylium", <item:minecraft:crimson_nylium>, <blockstate:minecraft:crimson_nylium>, 0, "crimson");
val rich_crimson_nyliumSoil = soils.create("amicore:rich_crimson_nylium", <item:amicore:rich_crimson_nylium>, <blockstate:amicore:rich_crimson_nylium>, 0.1, "crimson");
val warped_nyliumSoil = soils.create("amicore:warped_nylium", <item:minecraft:warped_nylium>, <blockstate:minecraft:warped_nylium>, 0, "warped");
val rich_warped_nyliumSoil = soils.create("amicore:rich_warped_nylium", <item:amicore:rich_warped_nylium>, <blockstate:amicore:rich_warped_nylium>, 0.1, "warped");
val sythian_nyliumSoil = soils.create("amicore:sythian_nylium", <item:byg:sythian_nylium>, <blockstate:byg:sythian_nylium>, 0, "sythian");
val rich_sythian_nyliumSoil = soils.create("amicore:rich_sythian_nylium", <item:amicore:rich_sythian_nylium>, <blockstate:amicore:rich_sythian_nylium>, 0.1, "sythian");
val emburSoil = soils.create("amicore:embur_nylium", <item:byg:embur_nylium>, <blockstate:byg:embur_nylium>, 0, "embur");
val rich_emburSoil = soils.create("amicore:rich_embur_nylium", <item:amicore:rich_embur_nylium>, <blockstate:amicore:rich_embur_nylium>, 0.1, "embur");

val earth_slime_dirtSoil = soils.create("amicore:earth_slime_dirt", <item:tconstruct:earth_slime_dirt>, <blockstate:tconstruct:earth_slime_dirt>, 0, "earth_slime");
val sky_slime_dirtSoil = soils.create("amicore:sky_slime_dirt", <item:tconstruct:sky_slime_dirt>, <blockstate:tconstruct:sky_slime_dirt>, 0, "sky_slime");
val ender_slime_dirtSoil = soils.create("amicore:ender_slime_dirt", <item:tconstruct:ender_slime_dirt>, <blockstate:tconstruct:ender_slime_dirt>, 0, "ender_slime");
val ichor_slime_dirtSoil = soils.create("amicore:ichor_slime_dirt", <item:tconstruct:ichor_slime_dirt>, <blockstate:tconstruct:ichor_slime_dirt>, 0, "ichor_slime");
val rich_earth_slime_dirtSoil = soils.create("amicore:rich_earth_slime_dirt", <item:amicore:rich_earth_slime_dirt>, <blockstate:amicore:rich_earth_slime_dirt>, 0.1, "earth_slime");
val rich_sky_slime_dirtSoil = soils.create("amicore:rich_sky_slime_dirt", <item:amicore:rich_sky_slime_dirt>, <blockstate:amicore:rich_sky_slime_dirt>, 0.1, "sky_slime");
val rich_ender_slime_dirtSoil = soils.create("amicore:rich_ender_slime_dirt", <item:amicore:rich_ender_slime_dirt>, <blockstate:amicore:rich_ender_slime_dirt>, 0.1, "ender_slime");
val rich_ichor_slime_dirtSoil = soils.create("amicore:rich_ichor_slime_dirt", <item:amicore:rich_ichor_slime_dirt>, <blockstate:amicore:rich_ichor_slime_dirt>, 0.1, "ichor_slime");

// crops
// var crops = [["byg:snowdrops", ["byg:snowdrops", 0.75, 1], ["byg:snowdrops", 0.05, 1, 2]]
// ] as string[][][];


val allCrops = [["farmersdelight:integration/botanypots/crops/cabbages", "overworld"],
["farmersdelight:integration/botanypots/crops/tomatoes", "overworld"],
["farmersdelight:integration/botanypots/crops/rice_crop", "overworld"],
["farmersdelight:integration/botanypots/crops/onions", "overworld"],
["immersiveengineering:crops/industrial_hemp", "overworld"],
["supplementaries:crops/flax", "overworld"],
["botanypots:crops/potatoes", "overworld"],
["botanypots:crops/red_tulip", "overworld"],
["botanypots:crops/pink_tulip", "overworld"],
["botanypots:crops/orange_tulip", "overworld"],
["botanypots:crops/white_tulip", "overworld"],
["botanypots:crops/azure_bluet", "overworld"],
["botanypots:crops/poppy", "overworld"],
["botanypots:crops/pumpkin", "overworld"],
["botanypots:crops/oxeye_daisy", "overworld"],
["botanypots:crops/sunflower", "overworld"],
["botanypots:crops/allium", "overworld"],
["botanypots:crops/lilac", "overworld"],
["botanypots:crops/blue_orchid", "overworld"],
["botanypots:crops/fern", "overworld"],
["botanypots:crops/rose_bush", "overworld"],
["botanypots:crops/dandelion", "overworld"],
["botanypots:crops/lily_of_the_valley", "overworld"],
["botanypots:crops/beetroot", "overworld"],
["botanypots:crops/wheat", "overworld"],
["botanypots:crops/carrots", "overworld"],
["botanypots:crops/melon", "overworld"],
["botanypots:crops/cornflower", "overworld"],
["botanypots:crops/peony", "overworld"],
["botanypots:crops/red_mushroom", "mycelial"],
["botanypots:crops/brown_mushroom", "mycelial"],
["botanypots:crops/fire_coral_fan", "watery"],
["botanypots:crops/brain_coral_fan", "watery"],
["botanypots:crops/bubble_coral", "watery"],
["botanypots:crops/bubble_coral_fan", "watery"],
["botanypots:crops/fire_coral", "watery"],
["botanypots:crops/tube_coral_fan", "watery"],
["botanypots:crops/horn_coral_fan", "watery"],
["botanypots:crops/tube_coral", "watery"],
["botanypots:crops/horn_coral", "watery"],
["botanypots:crops/brain_coral", "watery"],
["botanypots:crops/sea_pickle", "watery"],
["botanypots:crops/wither_rose", "soulfull"],
["botanypots:crops/crimson_roots", "crimson"],
["botanypots:crops/warped_roots", "warped"],
["botanypots:crops/nether_wart", "soulfull"],
["quark:crops/glowshroom", "mycelial"],
["quark:crops/turf", "grassy_overworld"],
["tconstruct:crops/blood_slime_tall_grass", "ichor_slime"],
["tconstruct:crops/blood_slime_fern", "ichor_slime"],
["tconstruct:crops/sky_slime_fern", "sky_slime"],
["tconstruct:crops/ender_slime_tall_grass", "ender_slime"],
["tconstruct:crops/ender_slime_fern", "ender_slime"],
["tconstruct:crops/sky_slime_tall_grass", "sky_slime"],
["botania:crops/brown_mystical_flower", "botanic_grass"],
["botania:crops/blue_mystical_flower", "botanic_grass"],
["botania:crops/gray_mystical_flower", "botanic_grass"],
["botania:crops/magenta_mystical_flower", "botanic_grass"],
["botania:crops/green_mystical_flower", "botanic_grass"],
["botania:crops/light_gray_mystical_flower", "botanic_grass"],
["botania:crops/light_blue_mystical_flower", "botanic_grass"],
["botania:crops/white_mystical_flower", "botanic_grass"],
["botania:crops/red_mystical_flower", "botanic_grass"],
["botania:crops/yellow_mystical_flower", "botanic_grass"],
["botania:crops/lime_mystical_flower", "botanic_grass"],
["botania:crops/pink_mystical_flower", "botanic_grass"],
["botania:crops/orange_mystical_flower", "botanic_grass"],
["botania:crops/cyan_mystical_flower", "botanic_grass"],
["botania:crops/black_mystical_flower", "botanic_grass"],
["botania:crops/purple_mystical_flower", "botanic_grass"],
["botania:crops/red_mushroom", "mycelial"],
["botania:crops/gray_mushroom", "mycelial"],
["botania:crops/cyan_mushroom", "mycelial"],
["botania:crops/light_blue_mushroom", "mycelial"],
["botania:crops/blue_mushroom", "mycelial"],
["botania:crops/lime_mushroom", "mycelial"],
["botania:crops/black_mushroom", "mycelial"],
["botania:crops/pink_mushroom", "mycelial"],
["botania:crops/brown_mushroom", "mycelial"],
["botania:crops/yellow_mushroom", "mycelial"],
["botania:crops/white_mushroom", "mycelial"],
["botania:crops/orange_mushroom", "mycelial"],
["botania:crops/magenta_mushroom", "mycelial"],
["botania:crops/light_gray_mushroom", "mycelial"],
["botania:crops/green_mushroom", "mycelial"],
["botania:crops/purple_mushroom", "mycelial"],
["byg:crops/sythian_sprout", "sythian"],
["byg:crops/sythian_roots", "sythian"],
["byg:crops/embur_roots", "embur"],
["byg:crops/warped_cactus", "warped"],
["byg:crops/warped_bush", "warped"],
["byg:crops/ivis_sprout", "ender"],
["byg:crops/ivis_roots", "ender"],
["byg:crops/mini_cactus", "sandy_overworld"],
["byg:crops/warped_coral", "warped"],
["byg:crops/blue_glowshroom", "mycelial"],
["byg:crops/purple_glowshroom", "mycelial"],
["byg:crops/snowdrops", "overworld"],
["byg:crops/magenta_tulip", "overworld"],
["byg:crops/pink_orchid", "overworld"],
["byg:crops/green_mushroom", "mycelial"],
["byg:crops/winter_grass", "overworld"],
["byg:crops/white_anemone", "overworld"],
["byg:crops/osiria_rose", "overworld"],
["byg:crops/red_cornflower", "overworld"],
["byg:crops/prairie_grass", "overworld"],
["byg:crops/purple_orchid", "overworld"],
["byg:crops/weeping_milkcap", "overworld"],
["byg:crops/richea", "overworld"],
["byg:crops/azalea", "overworld"],
["byg:crops/begonia", "overworld"],
["byg:crops/prickly_pear_cactus", "sandy_overworld"],
["byg:crops/yellow_tulip", "overworld"],
["byg:crops/beach_grass", "overworld"],
["byg:crops/winter_rose", "overworld"],
["byg:crops/crocus", "overworld"],
["byg:crops/alpine_bellflower", "overworld"],
["byg:crops/wood_blewit", "overworld"],
["byg:crops/lazarus_bellflower", "overworld"],
["byg:crops/cyan_tulip", "overworld"],
["byg:crops/short_grass", "overworld"],
["byg:crops/blueberries", "overworld"],
["byg:crops/black_puff", "overworld"],
["byg:crops/rose", "overworld"],
["byg:crops/peach_leather_flower", "overworld"],
["byg:crops/pink_daffodil", "overworld"],
["byg:crops/green_tulip", "overworld"],
["byg:crops/amaranth", "overworld"],
["byg:crops/pink_anemone", "overworld"],
["byg:crops/black_rose", "overworld"],
["byg:crops/iris", "overworld"],
["byg:crops/purple_sage", "overworld"],
["byg:crops/tall_allium", "overworld"],
["byg:crops/kovan_flower", "overworld"],
["byg:crops/weed_grass", "overworld"],
["byg:crops/yellow_daffodil", "overworld"],
["byg:crops/winter_succulent", "overworld"],
["byg:crops/winter_cyclamen", "overworld"],
["byg:crops/daffodil", "overworld"],
["byg:crops/pink_allium", "overworld"],
["byg:crops/japanese_orchid", "overworld"],
["byg:crops/pink_allium_flower_bush", "overworld"],
["byg:crops/angelica", "overworld"],
["byg:crops/cyan_rose", "overworld"],
["byg:crops/lolipop_flower", "overworld"],
["byg:crops/orange_daisy", "overworld"],
["byg:crops/protea_flower", "overworld"],
["byg:crops/incan_lily", "overworld"],
["byg:crops/fairy_slipper", "overworld"],
["byg:crops/red_orchid", "overworld"],
["byg:crops/white_sage", "overworld"],
["byg:crops/allium_flower_bush", "overworld"],
["byg:crops/short_beach_grass", "overworld"],
["byg:crops/violet_leather_flower", "overworld"],
["byg:crops/purple_tulip", "overworld"],
["byg:crops/winter_scilla", "overworld"],
["byg:crops/clover_patch", "overworld"],
["byg:crops/purple_amaranth", "overworld"],
["byg:crops/blue_sage", "overworld"],
["byg:crops/firecracker_flower_bush", "overworld"],
["byg:crops/leaf_pile", "overworld"],
["byg:crops/tall_pink_allium", "overworld"],
["byg:crops/foxglove", "overworld"],
["byg:crops/delphinium", "overworld"],
["byg:crops/torch_ginger", "overworld"],
["byg:crops/golden_spined_cactus", "overworld"],
["byg:crops/flower_patch", "overworld"],
["byg:crops/orange_amaranth", "overworld"],
["byg:crops/bistort", "overworld"],
["byg:crops/wilted_grass", "overworld"],
["byg:crops/california_poppy", "overworld"],
["byg:crops/cyan_amaranth", "overworld"],
["byg:crops/magenta_amaranth", "overworld"],
["byg:crops/silver_vase_flower", "overworld"],
["byg:crops/guzmania", "overworld"],
["pamhc2crops:crops/blackberry", "overworld"],
["pamhc2crops:crops/coffeebean", "overworld"],
["pamhc2crops:crops/sweetpotato", "overworld"],
["pamhc2crops:crops/agave", "overworld"],
["pamhc2crops:crops/pineapple", "overworld"],
["pamhc2crops:crops/mustardseeds", "overworld"],
["pamhc2crops:crops/rhubarb", "overworld"],
["pamhc2crops:crops/oats", "overworld"],
["pamhc2crops:crops/greengrape", "overworld"],
["pamhc2crops:crops/cauliflower", "overworld"],
["pamhc2crops:crops/broccoli", "overworld"],
["pamhc2crops:crops/sesameseeds", "overworld"],
["pamhc2crops:crops/corn", "overworld"],
["pamhc2crops:crops/sisal", "overworld"],
["pamhc2crops:crops/bean", "overworld"],
["pamhc2crops:crops/wintersquash", "overworld"],
["pamhc2crops:crops/candleberry", "overworld"],
["pamhc2crops:crops/grape", "overworld"],
["pamhc2crops:crops/leek", "overworld"],
["pamhc2crops:crops/cantaloupe", "overworld"],
["pamhc2crops:crops/asparagus", "overworld"],
["pamhc2crops:crops/cassava", "overworld"],
["pamhc2crops:crops/onion", "overworld"],
["pamhc2crops:crops/turnip", "overworld"],
["pamhc2crops:crops/kohlrabi", "overworld"],
["pamhc2crops:crops/huckleberry", "overworld"],
["pamhc2crops:crops/elderberry", "overworld"],
["pamhc2crops:crops/cactusfruit", "overworld"],
["pamhc2crops:crops/soybean", "overworld"],
["pamhc2crops:crops/jicama", "overworld"],
["pamhc2crops:crops/artichoke", "overworld"],
["pamhc2crops:crops/tomatillo", "overworld"],
["pamhc2crops:crops/whitemushroom", "overworld"],
["pamhc2crops:crops/zucchini", "overworld"],
["pamhc2crops:crops/spinach", "overworld"],
["pamhc2crops:crops/ginger", "overworld"],
["pamhc2crops:crops/rice", "overworld"],
["pamhc2crops:crops/blueberry", "overworld"],
["pamhc2crops:crops/radish", "overworld"],
["pamhc2crops:crops/celery", "overworld"],
["pamhc2crops:crops/quinoa", "overworld"],
["pamhc2crops:crops/bellpepper", "overworld"],
["pamhc2crops:crops/brusselsprout", "overworld"],
["pamhc2crops:crops/rutabaga", "overworld"],
["pamhc2crops:crops/kiwi", "overworld"],
["pamhc2crops:crops/cucumber", "overworld"],
["pamhc2crops:crops/okra", "overworld"],
["pamhc2crops:crops/jute", "overworld"],
["pamhc2crops:crops/spiceleaf", "overworld"],
["pamhc2crops:crops/amaranth", "overworld"],
["pamhc2crops:crops/raspberry", "overworld"],
["pamhc2crops:crops/peas", "overworld"],
["pamhc2crops:crops/lentil", "overworld"],
["pamhc2crops:crops/tomato", "overworld"],
["pamhc2crops:crops/rye", "overworld"],
["pamhc2crops:crops/millet", "overworld"],
["pamhc2crops:crops/mulberry", "overworld"],
["pamhc2crops:crops/kale", "overworld"],
["pamhc2crops:crops/cabbage", "overworld"],
["pamhc2crops:crops/parsnip", "overworld"],
["pamhc2crops:crops/eggplant", "overworld"],
["pamhc2crops:crops/tealeaf", "overworld"],
["pamhc2crops:crops/cotton", "overworld"],
["pamhc2crops:crops/strawberry", "overworld"],
["pamhc2crops:crops/flax", "overworld"],
["pamhc2crops:crops/juniperberry", "overworld"],
["pamhc2crops:crops/cranberry", "overworld"],
["pamhc2crops:crops/chilipepper", "overworld"],
["pamhc2crops:crops/arrowroot", "overworld"],
["pamhc2crops:crops/waterchestnut", "overworld"],
["pamhc2crops:crops/taro", "overworld"],
["pamhc2crops:crops/garlic", "overworld"],
["pamhc2crops:crops/peanut", "overworld"],
["pamhc2crops:crops/lettuce", "overworld"],
["pamhc2crops:crops/kenaf", "overworld"],
["pamhc2crops:crops/chickpea", "overworld"],
["pamhc2crops:crops/barley", "overworld"],
["pamhc2crops:crops/scallion", "overworld"]] as string[][];

// ["byg:crops/blue_glowcane", "soulfull"],
// ["byg:crops/purple_glowcane", "soulfull"],
// ["byg:crops/red_glowcane", "soulfull"],
// ["byg:crops/pink_glowcane", "soulfull"],
// ["byg:crops/embur", "noit"],
// ["botanypots:crops/cactus", "noit"],
// ["botanypots:crops/sweet_berries", "noit"],
// ["botanypots:crops/grass", "noit"],
// ["botanypots:crops/sugar_cane", "noit"],
// ["botanypots:crops/bamboo", "noit"],
// ["botanypots:crops/chorus_flower", "noit"],
// ["botanypots:crops/kelp", "noit"],
// ["botanypots:crops/fire_coral_block", "noit"],
// ["botanypots:crops/brain_coral_block", "noit"],
// ["botanypots:crops/seagrass", "noit"],
// ["botanypots:crops/tube_coral_block", "noit"],
// ["botanypots:crops/horn_coral_block", "noit"],
// ["botanypots:crops/bubble_coral_block", "noit"],
// ["botanypots:crops/weeping_vine", "noit"],
// ["botanypots:crops/twisting_vine", "noit"],
// ["byg:crops/sythian_stalk", "noit"],
// ["quark:crops/pink_blossom", "overworld"],
// ["quark:crops/orange_blossom", "overworld"],
// ["quark:crops/blue_blossom", "overworld"],
// ["quark:crops/yellow_blossom", "overworld"],
// ["quark:crops/lavender_blossom", "overworld"],
// ["botanypots:crops/crimson_fungus", "crimson"],
// ["botanypots:crops/warped_fungus", "warped"],

// Remove
crops.removeByName("quark:crops/pink_blossom");
crops.removeByName("quark:crops/orange_blossom");
crops.removeByName("quark:crops/blue_blossom");
crops.removeByName("quark:crops/yellow_blossom");
crops.removeByName("quark:crops/lavender_blossom");
crops.removeByName("botanypots:crops/cactus");
crops.removeByName("botanypots:crops/sweet_berries");
crops.removeByName("botanypots:crops/grass");
crops.removeByName("botanypots:crops/sugar_cane");
crops.removeByName("botanypots:crops/bamboo");
crops.removeByName("botanypots:crops/chorus_flower");
crops.removeByName("botanypots:crops/kelp");
crops.removeByName("botanypots:crops/fire_coral_block");
crops.removeByName("botanypots:crops/brain_coral_block");
crops.removeByName("botanypots:crops/seagrass");
crops.removeByName("botanypots:crops/tube_coral_block");
crops.removeByName("botanypots:crops/horn_coral_block");
crops.removeByName("botanypots:crops/bubble_coral_block");
crops.removeByName("botanypots:crops/weeping_vine");
crops.removeByName("botanypots:crops/twisting_vine");
crops.removeByName("byg:crops/blue_glowcane");
crops.removeByName("byg:crops/purple_glowcane");
crops.removeByName("byg:crops/red_glowcane");
crops.removeByName("byg:crops/pink_glowcane");
crops.removeByName("byg:crops/embur");
crops.removeByName("byg:crops/sythian_stalk");

// Modify
val crimsonFungus = crops.getCrop("botanypots:crops/crimson_fungus");
crimsonFungus.removeDrop(<item:minecraft:nether_wart_block>);
crimsonFungus.removeDrop(<item:minecraft:crimson_stem>);
crimsonFungus.removeDrop(<item:minecraft:shroomlight>);
crimsonFungus.clearCategories();
crimsonFungus.addCategory("crimson");
val warpedFungus = crops.getCrop("botanypots:crops/warped_fungus");
warpedFungus.removeDrop(<item:minecraft:warped_wart_block>);
warpedFungus.removeDrop(<item:minecraft:warped_stem>);
warpedFungus.removeDrop(<item:minecraft:shroomlight>);
warpedFungus.clearCategories();
warpedFungus.addCategory("warped");

// New
val nether_sprouts = crops.create("amicore:nether_sprouts", <item:minecraft:nether_sprouts>, <blockstate:minecraft:nether_sprouts>, 600, "warped");
nether_sprouts.addDrop(<item:minecraft:nether_sprouts>, 0.75, 1);
val embur_sprouts = crops.create("amicore:embur_sprouts", <item:byg:embur_sprouts>, <blockstate:byg:embur_sprouts>, 600, "embur");
embur_sprouts.addDrop(<item:byg:embur_sprouts>, 0.75, 1);
val earth_slime_tall_grass = crops.create("amicore:earth_slime_tall_grass", <item:tconstruct:earth_slime_tall_grass>, <blockstate:tconstruct:earth_slime_tall_grass>, 600, "earth_slime");
earth_slime_tall_grass.addDrop(<item:tconstruct:earth_slime_tall_grass>, 0.8, 1);
val earth_slime_fern = crops.create("amicore:earth_slime_fern", <item:tconstruct:earth_slime_fern>, <blockstate:tconstruct:earth_slime_fern>, 600, "earth_slime");
earth_slime_fern.addDrop(<item:tconstruct:earth_slime_fern>, 0.65, 1);


//modify soil based on the table
for i in allCrops {
//     print("[" + i.id + ", " + i.output.registryName + ", " + i.ingredients.toString() + "]");
    var cropp = crops.getCrop(i[0]);
    cropp.clearCategories();
    if(i[1] != "noit") {    
        cropp.addCategory(i[1]);
    } else {
        crops.removeByName(i[0]);
    }

    // var catas = cropp.getCategories().toArray();
    // // print(cropp.getCategories());

    // if(catas.size() >= 1) {
    //     var type1 = catas[0];
    //     print(type1);
    //     if(type1 == "dirt") {
    //         cropp.clearCategories();
    //         cropp.addCategory("overworld");
    //     }
    // }

     
//     var seedId = cropp.getSeed();

}
