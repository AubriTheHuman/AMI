var glowings1 = [];
var glowings2 = [];
var glowings3 = [];
var glowings4 = [];

const malumRecipe = java("com.sammy.malum.core.modcontent.MalumSpiritAltarRecipes$MalumSpiritAltarRecipe");
const itemIngredient = java("com.sammy.malum.core.systems.recipes.ItemIngredient");
const simpleItemIngredient = java("com.sammy.malum.core.systems.recipes.SimpleItemIngredient");
const spiritIngredient = java("com.sammy.malum.core.systems.recipes.SpiritIngredient");
const malumSpiritTypes = java("com.sammy.malum.core.modcontent.MalumSpiritTypes");
// const addSpirit = malumRecipe.getMethod("addSpirit", spiritIngredient);
// const addExtra = malumRecipe.getMethod("addExtraItem", simpleItemIngredient);

onEvent('recipes', event => {

  for (let i = 0; i < metalvariants.length; i++) {
    event.recipes.custommachinery.custom_machine("custommachinery:forge_furnace", 100)
    .requireItemTag("#forge:ingots/" + metalvariants[i][0], 1)
    .requireFuel()
    .requireBlock("supplementaries:bellows", true, 1, 0, 1, -1, 0, -1, 1, "==")
    .produceItem(Item.of("amicore:" + metalvariants[i][0] + "_heated_ingot"), 1);

    event.recipes.custommachinery.custom_machine("custommachinery:forge_furnace", 100)
    .requireItemTag("#forge:cakes/" + metalvariants[i][0], 1)
    .requireFuel()
    .requireBlock("supplementaries:bellows", true, 1, 0, 1, -1, 0, -1, 1, "==")
    .produceItem(Item.of("amicore:" + metalvariants[i][0] + "_heated_cake"), 1);

    event.recipes.custommachinery.custom_machine("custommachinery:forge_furnace", 100)
    .requireItemTag("#forge:bar_stocks/" + metalvariants[i][0], 1)
    .requireFuel()
    .requireBlock("supplementaries:bellows", true, 1, 0, 1, -1, 0, -1, 1, "==")
    .produceItem(Item.of("amicore:" + metalvariants[i][0] + "_heated_bar_stock"), 1);

    event.recipes.custommachinery.custom_machine("custommachinery:forge_furnace", 100)
    .requireItemTag("#forge:large_sheets/" + metalvariants[i][0], 1)
    .requireFuel()
    .requireBlock("supplementaries:bellows", true, 1, 0, 1, -1, 0, -1, 1, "==")
    .produceItem(Item.of("amicore:" + metalvariants[i][0] + "_heated_large_sheet"), 1);
  }

  event.recipes.custommachinery.custom_machine("custommachinery:small_air_vent", 200)
  .produceFluid(Fluid.of("amicore:compressed_air", 100))

  // broken attempt at malum registry reflection
  let test = new malumRecipe(new itemIngredient(Item.of("amicore:iron_ingot"), 4), new itemIngredient(Item.of("amicore:gold_ingot"), 1))
  .addSpirit(new spiritIngredient(malumSpiritTypes.ARCANE_SPIRIT, 2))
  .addExtraItem(new simpleItemIngredient(Item.of("amicore:copper_ingot")));
  
//   try {
//     addSpirit.invoke(test, new spiritIngredient(malumSpiritTypes.ARCANE_SPIRIT, 2));
//     addSpirit.invoke(test, new spiritIngredient(malumSpiritTypes.EARTHEN_SPIRIT, 4));
//     addExtra.invoke(test, new simpleItemIngredient(Item.of("amicore:nickel_ingot")));
//     addExtra.invoke(test, new simpleItemIngredient(Item.of("amicore:copper_ingot")));
//   } catch (error) {
//     console.erorr(error);
//     console.log(error.getMessage());
//     console.log(error.getLocalizedMessage());
//   }
})
