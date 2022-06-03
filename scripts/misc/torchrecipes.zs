import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;

craftingTable.addShaped("lignite_torches", <item:minecraft:torch> * 6, [[<item:geolosys:lignite_coal>], [<item:minecraft:stick>]], null);
craftingTable.addShaped("bitumen_torches", <item:minecraft:torch> * 8, [[<item:geolosys:bituminous_coal>], [<item:minecraft:stick>]], null);
craftingTable.addShaped("anthracite_torches", <item:minecraft:torch> * 10, [[<item:geolosys:anthracite_coal>], [<item:minecraft:stick>]], null);

var forge_coal = <tag:items:forge:gems/coal>;
forge_coal.add(<item:geolosys:lignite_coal>);
forge_coal.add(<item:geolosys:bituminous_coal>);
forge_coal.add(<item:geolosys:anthracite_coal>);
