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

#mods.recipestages.Recipes.setRecipeStage("021enhanced_food_solutions", <item:solpotato:golden_lunchbox>);
#ItemStages.restrict(<item:solpotato:golden_lunchbox>, "021enhanced_food_solutions");
