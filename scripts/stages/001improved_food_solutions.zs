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


#ItemStages.restrict(<item:solpotato:lunchbag>, "001improved_food_solutions");
#ItemStages.restrict(<item:solpotato:lunchbox>, "001improved_food_solutions");
#ItemStages.restrict(<item:solpotato:food_book>, "001improved_food_solutions");
#mods.recipestages.Recipes.setRecipeStage("001improved_food_solutions", <item:solpotato:lunchbag>);
#mods.recipestages.Recipes.setRecipeStage("001improved_food_solutions", <item:solpotato:lunchbox>);
#mods.recipestages.Recipes.setRecipeStage("001improved_food_solutions", <item:solpotato:food_book>);
