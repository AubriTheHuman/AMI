
var dont = [  "bloomery",  "clay_refractory",  "bricks_refractory",  "stairs_refractory",  "slab_refractory",  "reinforced_refractory_brick",  "electronic_engineering",  "bucket_brine",  "flask_glass",  "flask_hydrofluoric_acid",  "flask_nitric_acid",  "flask_hydrochloric_acid",  "flask_sulfuric_dioxide",  "flask_sulfuric_acid",  "flask_sodium_hydroxide"] as string[];

#this wont exclude and idk why?
mods.jei.JEI.hideMod("immersive_geology", (name) => {
    return name in dont;
});

mods.jei.JEI.addItem(<item:immersive_geology:bloomery>);
mods.jei.JEI.addItem(<item:immersive_geology:clay_refractory>);
mods.jei.JEI.addItem(<item:immersive_geology:clay_kaolinite>);
mods.jei.JEI.addItem(<item:immersive_geology:bricks_refractory>);
mods.jei.JEI.addItem(<item:immersive_geology:stairs_refractory>);
mods.jei.JEI.addItem(<item:immersive_geology:slab_refractory>);
mods.jei.JEI.addItem(<item:immersive_geology:reinforced_refractory_brick>);
mods.jei.JEI.addItem(<item:immersive_geology:electronic_engineering>);
mods.jei.JEI.addItem(<item:immersive_geology:bucket_brine>);
mods.jei.JEI.addItem(<item:immersive_geology:flask_glass>);
mods.jei.JEI.addItem(<item:immersive_geology:flask_sulfuric_acid>);
mods.jei.JEI.addItem(<item:immersive_geology:flask_nitric_acid>);
mods.jei.JEI.addItem(<item:immersive_geology:flask_sodium_hydroxide>);
mods.jei.JEI.addItem(<item:immersive_geology:flask_sulfuric_dioxide>);
mods.jei.JEI.addItem(<item:immersive_geology:flask_hydrochloric_acid>);
mods.jei.JEI.addItem(<item:immersive_geology:flask_hydrofluoric_acid>);
mods.jei.JEI.addItem(<item:immersive_geology:brick_refractory>);
mods.jei.JEI.addInfo(<item:immersive_geology:bloomery>, ["§cThis item is unused!"]);
