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

#ItemStages.restrict(<item:create:andesite_alloy>, "002crude_andesite_alloy");
#ItemStages.restrict(<item:charm:woodcutter>, "002crude_andesite_alloy");
#ItemStages.restrict(<item:minecraft:stonecutter>, "002crude_andesite_alloy");
#ItemStages.restrict(<item:jecalculation:item_calculator_math>, "002crude_andesite_alloy");
#ItemStages.restrict(<item:jecalculation:item_calculator_craft>, "002crude_andesite_alloy");
#ItemStages.restrict(<item:create:ornate_iron_window>, "002crude_andesite_alloy");
#ItemStages.restrict(<item:create:ornate_iron_window_pane>, "002crude_andesite_alloy");

#mods.recipestages.Recipes.setRecipeStage("002crude_andesite_alloy", <item:create:andesite_alloy>);
#mods.recipestages.Recipes.setRecipeStage("002crude_andesite_alloy", <item:charm:woodcutter>);
#mods.recipestages.Recipes.setRecipeStage("002crude_andesite_alloy", <item:minecraft:stonecutter>);
#mods.recipestages.Recipes.setRecipeStage("002crude_andesite_alloy", <item:jecalculation:item_calculator_math>);
#mods.recipestages.Recipes.setRecipeStage("002crude_andesite_alloy", <item:jecalculation:item_calculator_craft>);
#mods.recipestages.Recipes.setRecipeStage("002crude_andesite_alloy", <item:create:ornate_iron_window>);
#mods.recipestages.Recipes.setRecipeStage("002crude_andesite_alloy", <item:create:ornate_iron_window_pane>);
