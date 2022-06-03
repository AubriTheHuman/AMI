var dont = [ "peat", "rhododendron", "peat_coal", "lignite_coal", "bituminous_coal", "anthracite_coal", "lignite_coal_coke", "bituminous_coal_coke", "prospectors_pick", "guide_book" ] as string[];

mods.jei.JEI.hideMod("geolosys", (name) => {
    return name in dont;
});

mods.jei.JEI.addItem(<item:geolosys:peat>);
mods.jei.JEI.addItem(<item:geolosys:rhododendron>);
mods.jei.JEI.addItem(<item:geolosys:peat_coal>);
mods.jei.JEI.addItem(<item:geolosys:lignite_coal>);
mods.jei.JEI.addItem(<item:geolosys:bituminous_coal>);
mods.jei.JEI.addItem(<item:geolosys:anthracite_coal>);
mods.jei.JEI.addItem(<item:geolosys:lignite_coal_coke>);
mods.jei.JEI.addItem(<item:geolosys:bituminous_coal_coke>);
mods.jei.JEI.addItem(<item:geolosys:prospectors_pick>);
mods.jei.JEI.addItem(<item:patchouli:guide_book>.withTag({"patchouli:book": "geolosys:field_manual" as string}));

craftingTable.removeRecipe(<item:patchouli:guide_book>.withTag({"patchouli:book": "geolosys:field_manual" as string}));
craftingTable.addShapeless("ami_field_guide", <item:patchouli:guide_book>.withTag({"patchouli:book": "patchouli:field_manual_ami" as string}),
[<item:minecraft:book>,<item:minecraft:wooden_pickaxe>]);
