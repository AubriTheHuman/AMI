import crafttweaker.api.recipe.RecipeFilter;


mods.jei.JEI.hideMod("extendedcrafting");

mods.jei.JEI.addItem(<item:extendedcrafting:crafting_core>);
mods.jei.JEI.addInfo(<item:extendedcrafting:crafting_core>, ["Automated Spirit altar, requires power to use. Use pedestals from extendedcrafting."]);
mods.jei.JEI.addItem(<item:extendedcrafting:pedestal>);
mods.jei.JEI.addInfo(<item:extendedcrafting:pedestal>, ["Used for the automated spirit altar."]);
mods.jei.JEI.addItem(<item:extendedcrafting:basic_auto_table>);
mods.jei.JEI.addInfo(<item:extendedcrafting:basic_auto_table>, ["Automated artisan crafter. Doesn't require tools or secondary components. Cannot do recipes with fluid outputs or inputs."]);
mods.jei.JEI.addItem(<item:extendedcrafting:recipe_maker>.withTag({Shapeless: 0 as byte, Type: "CraftTweaker" as string}));

craftingTable.removeByModid("extendedcrafting");