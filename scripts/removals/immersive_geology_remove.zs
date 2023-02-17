import crafttweaker.api.recipe.RecipeFilter;

var dont = [  "bloomery",  "clay_refractory",  "bricks_refractory",  "stairs_refractory",  "slab_refractory",  "reinforced_refractory_brick",  "electronic_engineering",  "bucket_brine",  "flask_glass",  "flask_hydrofluoric_acid",  "flask_nitric_acid",  "flask_hydrochloric_acid",  "flask_sulfuric_dioxide",  "flask_sulfuric_acid",  "flask_sodium_hydroxide"] as string[];

#this wont exclude and idk why?
mods.jei.JEI.hideMod("immersive_geology", (name) => {
    return name in dont;
});

mods.jei.JEI.addItem(<item:immersive_geology:block_item_machine_stone_bloomery>);
mods.jei.JEI.addItem(<item:immersive_geology:clay_kaolinite>);
mods.jei.JEI.addItem(<item:immersive_geology:block_item_refractory_brick_storage>);
mods.jei.JEI.addItem(<item:immersive_geology:block_item_refractory_brick_stairs>);
mods.jei.JEI.addItem(<item:immersive_geology:block_item_refractory_brick_slab>);
mods.jei.JEI.addItem(<item:immersive_geology:block_item_reinforced_refractory_brick_storage>);
mods.jei.JEI.addItem(<item:immersive_geology:block_item_reinforced_refractory_brick_stairs>);
mods.jei.JEI.addItem(<item:immersive_geology:block_item_reinforced_refractory_brick_slab>);
mods.jei.JEI.addItem(<item:immersive_geology:ingot_refractory_brick>);
mods.jei.JEI.addInfo(<item:immersive_geology:block_item_machine_stone_bloomery>, ["§cThis item is unused!"]);

craftingTable.removeByModid("immersive_geology", (name as string) => {return name == "refractory";});