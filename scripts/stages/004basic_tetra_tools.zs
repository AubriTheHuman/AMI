#import #mods.#ItemStages.#ItemStages;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;
import crafttweaker.api.SmithingManager;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.TagManagerItem;
#import #mods.artisanworktables.Recipe;
#import #mods.artisanworktables.Type;
import crafttweaker.api.ILogger;

#mods.recipestages.Recipes.setRecipeStage("004basic_tetra_tools", <item:tetra:modular_double>);
#mods.recipestages.Recipes.setRecipeStage("004basic_tetra_tools", <item:tetra:basic_workbench>);
#mods.recipestages.Recipes.setRecipeStage("004basic_tetra_tools", <item:tetra:scroll_rolled>);
#ItemStages.restrict(<item:tetra:modular_double>, "004basic_tetra_tools");
#ItemStages.restrict(<item:tetra:basic_workbench>, "004basic_tetra_tools");
#ItemStages.restrict(<item:tetra:scroll_rolled>, "004basic_tetra_tools");
