

var crushing = <recipetype:create:crushing>;
var mixing = <recipetype:create:mixing>;
var pressing = <recipetype:create:pressing>;
var washing = <recipetype:create:splashing>;
var milling = <recipetype:create:milling>;
var filling = <recipetype:create:filling>;

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