import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.MCItemDefinition;

//recipe conflict fixes



//steam boiling smeltery
<recipetype:tconstruct:alloying>.addRecipe("steam_from_water", [<fluid:minecraft:water> * 25], <fluid:amicore:steam> * 100, 110);
<recipetype:tconstruct:alloying>.addRecipe("steam_from_pure_water", [<fluid:amicore:purified_water> * 25], <fluid:amicore:steam> * 100, 110);
<recipetype:tconstruct:alloying>.addRecipe("steam_from_electrolytic_water", [<fluid:amicore:electrolytic_water> * 25], <fluid:amicore:steam> * 100, 110);
#<recipetype:tconstruct:alloying>.addRecipe("steam_burnoff", [<fluid:amicore:steam> * 100], <fluid:amicore:burnoff_slag> * 1, 2400);

//other materials burnoff
<recipetype:tconstruct:alloying>.addRecipe("milk_burnoff", [<fluid:minecraft:milk> * 25], <fluid:amicore:burnoff_slag> * 2, 110);
<recipetype:tconstruct:alloying>.addRecipe("lava_burnoff", [<fluid:minecraft:lava> * 25], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("honey_burnoff", [<fluid:create:honey> * 25], <fluid:amicore:burnoff_slag> * 2, 300);
<recipetype:tconstruct:alloying>.addRecipe("chocolate_burnoff", [<fluid:create:chocolate> * 25], <fluid:amicore:burnoff_slag> * 2, 400);
<recipetype:tconstruct:alloying>.addRecipe("seedoil_burnoff", [<fluid:createaddition:seed_oil> * 25], <fluid:amicore:burnoff_slag> * 2, 700);
<recipetype:tconstruct:alloying>.addRecipe("plantoil_burnoff", [<fluid:immersiveengineering:plantoil> * 25], <fluid:amicore:burnoff_slag> * 2, 700);
<recipetype:tconstruct:alloying>.addRecipe("magma_tic_burnoff", [<fluid:tconstruct:magma> * 25], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("creosote_burnoff", [<fluid:immersiveengineering:creosote> * 25], <fluid:amicore:burnoff_slag> * 2, 800);
<recipetype:tconstruct:alloying>.addRecipe("ethanol_burnoff", [<fluid:immersiveengineering:ethanol> * 25], <fluid:amicore:burnoff_slag> * 2, 300);
<recipetype:tconstruct:alloying>.addRecipe("biodiesel_burnoff", [<fluid:immersiveengineering:biodiesel> * 25], <fluid:amicore:burnoff_slag> * 2, 500);
<recipetype:tconstruct:alloying>.addRecipe("concrete_burnoff", [<fluid:immersiveengineering:concrete> * 25], <fluid:amicore:burnoff_slag> * 2, 2700);
<recipetype:tconstruct:alloying>.addRecipe("potion_burnoff", [<fluid:immersiveengineering:potion> * 25], <fluid:amicore:steam> * 100, 130);
#<recipetype:tconstruct:alloying>.addRecipe("potion_cofh_burnoff", [<fluid:cofh_core:potion> * 25], <fluid:amicore:steam> * 100, 130);
<recipetype:tconstruct:alloying>.addRecipe("potion_create_burnoff", [<fluid:create:potion> * 25], <fluid:amicore:steam> * 100, 130);
<recipetype:tconstruct:alloying>.addRecipe("herbicide_burnoff", [<fluid:immersiveengineering:herbicide> * 25], <fluid:amicore:burnoff_slag> * 2, 300);
<recipetype:tconstruct:alloying>.addRecipe("crude_oil_burnoff", [<fluid:immersivepetroleum:oil> * 25], <fluid:amicore:burnoff_slag> * 2, 1100);
<recipetype:tconstruct:alloying>.addRecipe("diesel_burnoff", [<fluid:immersivepetroleum:diesel> * 25], <fluid:amicore:burnoff_slag> * 2, 500);
<recipetype:tconstruct:alloying>.addRecipe("sulfurized_diesel_burnoff", [<fluid:immersivepetroleum:diesel_sulfur> * 25], <fluid:amicore:burnoff_slag> * 2, 500);
<recipetype:tconstruct:alloying>.addRecipe("lubricant_burnoff", [<fluid:immersivepetroleum:lubricant> * 25], <fluid:amicore:burnoff_slag> * 2, 1050);
<recipetype:tconstruct:alloying>.addRecipe("gasoline_burnoff", [<fluid:immersivepetroleum:gasoline> * 25], <fluid:amicore:burnoff_slag> * 2, 500);
<recipetype:tconstruct:alloying>.addRecipe("napalm_burnoff", [<fluid:immersivepetroleum:napalm> * 25], <fluid:amicore:burnoff_slag> * 2, 1400);
#<recipetype:tconstruct:alloying>.addRecipe("virulent_mix_burnoff", [<fluid:undergarden:virulent_mix> * 25], <fluid:amicore:burnoff_slag> * 2, 110);
<recipetype:tconstruct:alloying>.addRecipe("blood_burnoff", [<fluid:tconstruct:blood> * 25], <fluid:amicore:burnoff_slag> * 2, 110);
<recipetype:tconstruct:alloying>.addRecipe("earth_slime_burnoff", [<fluid:tconstruct:earth_slime> * 25], <fluid:amicore:burnoff_slag> * 2, 400);
<recipetype:tconstruct:alloying>.addRecipe("sky_slime_burnoff", [<fluid:tconstruct:sky_slime> * 25], <fluid:amicore:burnoff_slag> * 2, 400);
<recipetype:tconstruct:alloying>.addRecipe("ender_slime_burnoff", [<fluid:tconstruct:ender_slime> * 25], <fluid:amicore:burnoff_slag> * 2, 400);
<recipetype:tconstruct:alloying>.addRecipe("seared_stone_burnoff", [<fluid:tconstruct:seared_stone> * 25], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("scorched_stone_burnoff", [<fluid:tconstruct:scorched_stone> * 25], <fluid:amicore:burnoff_slag> * 2, 5400);
<recipetype:tconstruct:alloying>.addRecipe("liquid_soul_burnoff", [<fluid:tconstruct:liquid_soul> * 25], <fluid:amicore:burnoff_slag> * 2, 1600);
<recipetype:tconstruct:alloying>.addRecipe("blazing_blood_burnoff", [<fluid:tconstruct:blazing_blood> * 25], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("hyrdogen_gas_burnoff", [<fluid:amicore:hydrogen_gas> * 25], <fluid:amicore:burnoff_slag> * 2, 4000);
<recipetype:tconstruct:alloying>.addRecipe("oxygen_gas_burnoff", [<fluid:amicore:oxygen_gas> * 25], <fluid:amicore:burnoff_slag> * 2, 4000);
<recipetype:tconstruct:alloying>.addRecipe("hydroxide_fuel_burnoff", [<fluid:amicore:hydroxide_fuel> * 25], <fluid:amicore:burnoff_slag> * 2, 4000);
<recipetype:tconstruct:alloying>.addRecipe("rich_slimeslag_burnoff", [<fluid:amicore:slimeslag_rich> * 25], <fluid:amicore:burnoff_slag> * 2, 4000);
<recipetype:tconstruct:alloying>.addRecipe("poor_slimeslag_burnoff", [<fluid:amicore:slimeslag_poor> * 25], <fluid:amicore:burnoff_slag> * 2, 4000);
<recipetype:tconstruct:alloying>.addRecipe("weak_alc_wash_burnoff", [<fluid:amicore:weak_alc_wash> * 25], <fluid:amicore:steam> * 100, 130);
<recipetype:tconstruct:alloying>.addRecipe("strong_alc_wash_burnoff", [<fluid:amicore:strong_alc_wash> * 25], <fluid:amicore:steam> * 100, 130);

//metal burnoff
<recipetype:tconstruct:alloying>.addRecipe("aluminum_burnoff", [<fluid:tconstruct:molten_aluminum> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("brass_burnoff", [<fluid:tconstruct:molten_brass> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("clay_burnoff", [<fluid:tconstruct:molten_clay> * 25], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("cobalt_burnoff", [<fluid:tconstruct:molten_cobalt> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("constantan_burnoff", [<fluid:tconstruct:molten_constantan> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("copper_burnoff", [<fluid:tconstruct:molten_copper> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("debris_burnoff", [<fluid:tconstruct:molten_debris> * 16], <fluid:amicore:burnoff_slag> * 2, 5500);
<recipetype:tconstruct:alloying>.addRecipe("diamond_burnoff", [<fluid:tconstruct:molten_diamond> * 16], <fluid:amicore:burnoff_slag> * 2, 5200);
<recipetype:tconstruct:alloying>.addRecipe("emerald_burnoff", [<fluid:tconstruct:molten_emerald> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("ender_burnoff", [<fluid:tconstruct:molten_ender> * 25], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("glass_burnoff", [<fluid:tconstruct:molten_glass> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("gold_burnoff", [<fluid:tconstruct:molten_gold> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("hepatizon_burnoff", [<fluid:tconstruct:molten_hepatizon> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("iron_burnoff", [<fluid:tconstruct:molten_iron> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("lead_burnoff", [<fluid:tconstruct:molten_lead> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("manyullyn_burnoff", [<fluid:tconstruct:molten_manyullyn> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("netherite_burnoff", [<fluid:tconstruct:molten_netherite> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("nickel_burnoff", [<fluid:tconstruct:molten_nickel> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("obsidian_burnoff", [<fluid:tconstruct:molten_obsidian> * 25], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("osmium_burnoff", [<fluid:tconstruct:molten_osmium> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("pig_iron_burnoff", [<fluid:tconstruct:molten_pig_iron> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("platinum_burnoff", [<fluid:tconstruct:molten_platinum> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("quartz_burnoff", [<fluid:tconstruct:molten_quartz> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("queens_slime_burnoff", [<fluid:tconstruct:molten_queens_slime> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("rose_gold_burnoff", [<fluid:tconstruct:molten_rose_gold> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("silver_burnoff", [<fluid:tconstruct:molten_silver> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("slimesteel_burnoff", [<fluid:tconstruct:molten_slimesteel> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("steel_burnoff", [<fluid:tconstruct:molten_steel> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("tin_burnoff", [<fluid:tconstruct:molten_tin> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("tinkers_bronze_burnoff", [<fluid:tconstruct:molten_tinkers_bronze> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("uranium_burnoff", [<fluid:tconstruct:molten_uranium> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("zinc_burnoff", [<fluid:tconstruct:molten_zinc> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("elementium_burnoff", [<fluid:amicore:molten_elementium> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("manasteel_burnoff", [<fluid:amicore:molten_manasteel> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("terminite_burnoff", [<fluid:amicore:molten_terminite> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("terrasteel_burnoff", [<fluid:amicore:molten_terrasteel> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
<recipetype:tconstruct:alloying>.addRecipe("thallasium_burnoff", [<fluid:amicore:molten_thallasium> * 16], <fluid:amicore:burnoff_slag> * 2, 3300);
