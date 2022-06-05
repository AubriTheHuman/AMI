import crafttweaker.api.BracketHandlers;

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
cloche.addRecipe("vines", <item:minecraft:vine>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:vine>] * 2, <blockstate:minecraft:vine>.block, "stacking");
cloche.addRecipe("glow_lichen", <item:cavesandcliffs:glow_lichen>, <item:farmersdelight:rich_soil>, 2200, [<item:cavesandcliffs:glow_lichen> * 2], <blockstate:cavesandcliffs:glow_lichen>.block, "stacking");
cloche.addRecipe("cave_roots", <item:quark:root>, <item:farmersdelight:rich_soil>, 2200, [<item:quark:root_item> * 2], <blockstate:quark:root>.block, "stacking");
cloche.addRecipe("bamboo", <item:minecraft:bamboo>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:bamboo> * 2], <blockstate:minecraft:bamboo>.block, "stacking");
cloche.addRecipe("sugarcane", <item:minecraft:sugar_cane>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:sugar_cane> * 2], <blockstate:minecraft:sugar_cane>.block, "stacking");
cloche.addRecipe("kelp", <item:minecraft:kelp>, <item:minecraft:water_bucket>, 2200, [<item:minecraft:kelp> * 2], <blockstate:minecraft:kelp>.block, "stacking");
cloche.addRecipe("seagrass", <item:minecraft:seagrass>, <item:minecraft:water_bucket>, 2200, [<item:minecraft:seagrass>] * 2, <blockstate:minecraft:seagrass>.block, "generic");
cloche.addRecipe("grass", <item:minecraft:grass>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:grass> * 2], <blockstate:minecraft:grass>.block, "generic");
cloche.addRecipe("sweet_berries", <item:minecraft:sweet_berries>, <item:farmersdelight:rich_soil>, 2200, [<item:minecraft:sweet_berries> * 2], <blockstate:minecraft:sweet_berry_bush>.withProperty("age", "3").block, "generic");

#dry plants
cloche.addRecipe("cactus", <item:minecraft:cactus>, <item:minecraft:sand>, 2200, [<item:minecraft:cactus>], <blockstate:minecraft:cactus>.block, "stacking");
cloche.addRecipe("cactus_red", <item:minecraft:cactus>, <item:minecraft:red_sand>, 2200, [<item:minecraft:cactus>], <blockstate:minecraft:cactus>.block, "stacking");


#nether
cloche.addRecipe("crimson_farming", <item:minecraft:crimson_fungus>, <item:amicore:rich_crimson_nylium>, 2200, [<item:minecraft:crimson_fungus>, <item:minecraft:nether_wart_block>], <blockstate:minecraft:crimson_fungus>.block, "generic");
cloche.addRecipe("crimson_chopping", <item:minecraft:crimson_fungus>, <item:minecraft:crimson_nylium>, 2200, [<item:minecraft:crimson_stem>], <blockstate:minecraft:crimson_fungus>.block, "generic");
cloche.addRecipe("warped_farming", <item:minecraft:warped_fungus>, <item:amicore:rich_warped_nylium>, 2200, [<item:minecraft:warped_fungus>, <item:minecraft:warped_wart_block>], <blockstate:minecraft:warped_fungus>.block, "generic");
cloche.addRecipe("warped_chopping", <item:minecraft:warped_fungus>, <item:minecraft:waped_nylium>, 2200, [<item:minecraft:warped_stem>], <blockstate:minecraft:warped_fungus>.block, "generic");
cloche.addRecipe("sythian_farming", <item:byg:sythian_fungus>, <item:amicore:rich_sythian_nylium>, 2200, [<item:byg:sythian_fungus>, <item:byg:sythian_wart_block>], <blockstate:byg:sythian_fungus>.block, "generic");
cloche.addRecipe("sythian_chopping", <item:byg:sythian_fungus>, <item:byg:sythian_nylium>, 2200, [<item:byg:sythian_stem>], <blockstate:byg:sythian_fungus>.block, "generic");
cloche.addRecipe("embur_farming", <item:byg:embur_wart>, <item:amicore:rich_embur_nylium>, 2200, [<item:byg:embur_wart>, <item:byg:embur_gel_ball>], <blockstate:byg:embur_wart>.block, "generic");
cloche.addRecipe("embur_chopping", <item:byg:embur_wart>, <item:byg:embur_nylium>, 2200, [<item:byg:embur_pedu>, <item:byg:pollen_block>], <blockstate:byg:embur_wart>.block, "generic");

cloche.addRecipe("weeping_vines", <item:minecraft:weeping_vines>, <item:amicore:rich_crimson_nylium>, 2200, [<item:minecraft:weeping_vines>*2], <blockstate:minecraft:weeping_vines>.block, "stacking");
cloche.addRecipe("twisting_vines", <item:minecraft:twisting_vines>, <item:amicore:rich_warped_nylium>, 2200, [<item:minecraft:twisting_vines>*2], <blockstate:minecraft:twisting_vines>.block, "stacking");
cloche.addRecipe("sythian_stalk", <item:byg:sythian_stalk_block>, <item:amicore:rich_sythian_nylium>, 2200, [<item:byg:sythian_stalk_block>*2], <blockstate:byg:sythian_stalk_block>.block, "stacking");
cloche.addRecipe("embur_gel_vines", <item:byg:embur_gel_vines>, <item:amicore:rich_embur_nylium>, 2200, [<item:byg:embur_gel_vines>*2, <item:byg:embur_gell_ball>], <blockstate:byg:embur_gel_vines>.block, "stacking");
cloche.addRecipe("embur_gel_branch", <item:byg:embur_gel_branch>, <item:byg:embur_pedu>, 2200, [<item:byg:embur_gel_branch>*2], <blockstate:byg:embur_gel_vines>.block, "stacking");

cloche.addRecipe("warped_cactus", <item:byg:warped_cactus>, <item:byg:nylium_soul_sand>, 2200, [<item:byg:warped_cactus> * 2], <blockstate:byg:warped_cactus>.block, "stacking");

cloche.addRecipe("blue_glowcane", <item:byg:blue_glowcane>, <item:byg:glowcylium_block>, 2200, [<item:byg:blue_glowcane> * 2], <blockstate:byg:blue_glowcane>.block, "stacking");
cloche.addRecipe("pink_glowcane", <item:byg:pink_glowcane>, <item:byg:glowcylium_block>, 2200, [<item:byg:pink_glowcane> * 2], <blockstate:byg:pink_glowcane>.block, "stacking");
cloche.addRecipe("purple_glowcane", <item:byg:purple_glowcane>, <item:byg:glowcylium_block>, 2200, [<item:byg:purple_glowcane> * 2], <blockstate:byg:purple_glowcane>.block, "stacking");
cloche.addRecipe("red_glowcane", <item:byg:red_glowcane>, <item:byg:glowcylium_block>, 2200, [<item:byg:red_glowcane> * 2], <blockstate:byg:red_glowcane>.block, "stacking");

cloche.addRecipe("weeping_roots", <item:byg:weeping_roots>, <item:amicore:rich_crimson_nylium>, 2200, [<item:byg:weeping_roots>*2], <blockstate:byg:weeping_roots>.block, "stacking");
cloche.addRecipe("lament_vine", <item:byg:lament_vine>, <item:byg:overgrown_netherrack>, 2200, [<item:byg:lament_vine>*2], <blockstate:byg:lament_vine>.block, "stacking");
cloche.addRecipe("arisian_bloom_branch", <item:byg:arisian_bloom_branch>, <item:byg:withering_oak_log>, 2200, [<item:byg:arisian_bloom_branch>*2], <blockstate:byg:arisian_bloom_branch>.block, "generic");


#ender
