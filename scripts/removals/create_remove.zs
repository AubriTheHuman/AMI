

var crushing = <recipetype:create:crushing>;
var mixing = <recipetype:create:mixing>;
var pressing = <recipetype:create:pressing>;
var washing = <recipetype:create:splashing>;
var milling = <recipetype:create:milling>;
var filling = <recipetype:create:filling>;
var draining = <recipetype:create:emptying>;

#brass
furnace.removeByName("create:smelting/brass_ingot_from_crushed");
blastFurnace.removeByName("create:blasting/brass_ingot_from_crushed");
mixing.removeByName("create:mixing/crushed_brass");
mixing.removeByName("create:mixing/brass_ingot");
<recipetype:immersiveengineering:alloy>.removeByName("immersiveengineering:alloysmelter/brass");
craftingTable.removeByName("create:crafting/materials/brass_ingot_from_decompacting");
craftingTable.removeByName("create:crafting/materials/brass_nugget_from_decompacting");
craftingTable.removeByName("create:crafting/materials/brass_block_from_compacting");
mods.jei.JEI.hideItem(<item:create:brass_ingot>);
mods.jei.JEI.hideItem(<item:create:brass_nugget>);
mods.jei.JEI.hideItem(<item:create:brass_block>);

#copper
mods.jei.JEI.hideItem(<item:create:copper_ingot>);
mods.jei.JEI.hideItem(<item:create:copper_nugget>);
mods.jei.JEI.hideItem(<item:create:copper_block>);

#zinc
mods.jei.JEI.hideItem(<item:create:zinc_ingot>);
mods.jei.JEI.hideItem(<item:create:zinc_nugget>);
mods.jei.JEI.hideItem(<item:create:zinc_block>);



#crushed ores
mods.jei.JEI.hideItem(<item:create:crushed_iron_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_gold_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_zinc_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_copper_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_osmium_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_platinum_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_silver_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_tin_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_lead_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_aluminum_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_uranium_ore>);
mods.jei.JEI.hideItem(<item:create:crushed_nickel_ore>);


#steampowere
mods.jei.JEI.hideItem(<item:steampowered:bronze_sheet>);
mods.jei.JEI.hideItem(<item:steampowered:cast_iron_sheet>);
mods.jei.JEI.hideItem(<item:steampowered:steel_sheet>);
mods.jei.JEI.hideItem(<item:steampowered:cast_iron_ingot>);
mods.jei.JEI.hideItem(<item:steampowered:steel_ingot>);
pressing.removeRecipe(<item:steampowered:cast_iron_sheet>);
mixing.removeRecipe(<item:steampowered:cast_iron_ingot>);

pressing.removeRecipe(<item:create:iron_sheet>);
pressing.removeRecipe(<item:create:golden_sheet>);
pressing.removeRecipe(<item:create:copper_sheet>);
pressing.removeRecipe(<item:create:brass_sheet>);
pressing.removeRecipe(<item:createdeco:zinc_sheet>);
pressing.removeRecipe(<item:createaddition:zinc_sheet>);
pressing.removeRecipe(<item:createdeco:netherite_sheet>);

<recipetype:create:compacting>.removeRecipe(<item:steampowered:cast_iron_ingot>);
<recipetype:create:sequenced_assembly>.removeByName("create:sequenced_assembly/precision_mechanism");


// draining.removeByName("create:empty_immersive_geology_flask_hydrofluoric_acid_of_immersive_geology_fluid_hydrofluoric_acid");
// draining.removeByName("create:empty_immersive_geology_flask_nitric_acid_of_immersive_geology_fluid_nitric_acid");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_of_immersive_geology_fluid_hydrochloric_acid");
// draining.removeByName("create:empty_immersive_geology_flask_sulfuric_acid_of_immersive_geology_fluid_sulfuric_acid");
// draining.removeByName("create:empty_immersive_geology_flask_sodium_hydroxide_of_immersive_geology_fluid_sodium_hydroxide_acid");

// draining.removeByName("create:empty_immersive_geology_flask_hydrofluoric_acid_uranium_of_immersive_geology_slurry_hydrofluoric_acid_uranium");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_cobalt_of_immersive_geology_slurry_hydrochloric_acid_cobalt");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_gypsum_of_immersive_geology_slurry_hydrochloric_acid_gypsum");
// draining.removeByName("create:empty_immersive_geology_flask_nitric_acid_unobtanium_of_immersive_geology_slurry_nitric_acid_unobtanium");
// draining.removeByName("create:empty_immersive_geology_flask_hydrofluoric_acid_neodymium_of_immersive_geology_slurry_hydrofluoric_acid_neodymium");
// draining.removeByName("create:empty_immersive_geology_flask_nitric_acid_chromium_of_immersive_geology_slurry_nitric_acid_chromium");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_zinc_of_immersive_geology_slurry_hydrochloric_acid_zinc");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_uranium_of_immersive_geology_slurry_hydrochloric_acid_uranium");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_silver_of_immersive_geology_slurry_hydrochloric_acid_silver");
// draining.removeByName("create:empty_immersive_geology_flask_sulfuric_acid_zinc_of_immersive_geology_slurry_sulfuric_acid_zinc");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_copper_of_immersive_geology_slurry_hydrochloric_acid_copper");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_chromium_of_immersive_geology_slurry_hydrochloric_acid_chromium");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_manganese_of_immersive_geology_slurry_hydrochloric_acid_manganese");
// draining.removeByName("create:empty_immersive_geology_flask_sulfuric_acid_manganese_of_immersive_geology_slurry_sulfuric_acid_manganese");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_titanium_of_immersive_geology_slurry_hydrochloric_acid_titanium");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_nickel_of_immersive_geology_slurry_hydrochloric_acid_nickel");
// draining.removeByName("create:empty_immersive_geology_flask_hydrochloric_acid_neodymium_of_immersive_geology_slurry_hydrochloric_acid_neodymium");
// draining.removeByName("create:empty_immersive_geology_flask_brine_of_immersive_geology_fluid_brine");

draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid_chromium>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid_cobalt>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid_copper>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid_gypsum>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid_manganese>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid_neodymium>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid_nickel>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid_silver>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid_titanium>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrofluoric_acid_uranium>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid_zinc>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrofluoric_acid_neodymium>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrofluoric_acid_uranium>);
draining.removeRecipeByInput(<item:immersive_geology:flask_nitric_acid_chromium>);
draining.removeRecipeByInput(<item:immersive_geology:flask_nitric_acid_unobtanium>);
draining.removeRecipeByInput(<item:immersive_geology:flask_sodium_hydroxide_unobtanium>);
draining.removeRecipeByInput(<item:immersive_geology:flask_sulfuric_acid_manganese>);
draining.removeRecipeByInput(<item:immersive_geology:flask_sulfuric_acid_zinc>);
draining.removeRecipeByInput(<item:immersive_geology:flask_brine>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrofluoric_acid>);
draining.removeRecipeByInput(<item:immersive_geology:flask_nitric_acid>);
draining.removeRecipeByInput(<item:immersive_geology:flask_hydrochloric_acid>);
draining.removeRecipeByInput(<item:immersive_geology:flask_sulfuric_acid>);
draining.removeRecipeByInput(<item:immersive_geology:flask_sodium_hydroxide>);

filling.removeRecipe(<item:immersive_geology:flask_hydrofluoric_acid>);
filling.removeRecipe(<item:immersive_geology:flask_nitric_acid>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid>);
filling.removeRecipe(<item:immersive_geology:flask_sulfuric_acid>);
filling.removeRecipe(<item:immersive_geology:flask_sodium_hydroxide>);
filling.removeRecipe(<item:immersive_geology:flask_brine>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_chromium>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_cobalt>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_copper>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_gypsum>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_manganese>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_neodymium>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_nickel>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_silver>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_titanium>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_uranium>);
filling.removeRecipe(<item:immersive_geology:flask_hydrochloric_acid_zinc>);
filling.removeRecipe(<item:immersive_geology:flask_hydrofluoric_acid_neodymium>);
filling.removeRecipe(<item:immersive_geology:flask_hydrofluoric_acid_uranium>);
filling.removeRecipe(<item:immersive_geology:flask_nitric_acid_chromium>);
filling.removeRecipe(<item:immersive_geology:flask_nitric_acid_unobtanium>);
filling.removeRecipe(<item:immersive_geology:flask_sodium_hydroxide_unobtanium>);
filling.removeRecipe(<item:immersive_geology:flask_sulfuric_acid_manganese>);
filling.removeRecipe(<item:immersive_geology:flask_sulfuric_acid_zinc>);