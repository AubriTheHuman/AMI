import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.MCItemDefinition;

craftingTable.addShaped("oak_plank_from_slab", <item:minecraft:oak_planks>, [[<item:minecraft:oak_slab>], [<item:minecraft:oak_slab>]], null);
craftingTable.addShaped("birch_plank_from_slab", <item:minecraft:birch_planks>, [[<item:minecraft:birch_slab>], [<item:minecraft:birch_slab>]], null);
craftingTable.addShaped("acacia_plank_from_slab", <item:minecraft:acacia_planks>, [[<item:minecraft:acacia_slab>], [<item:minecraft:acacia_slab>]], null);
craftingTable.addShaped("spruce_plank_from_slab", <item:minecraft:spruce_planks>, [[<item:minecraft:spruce_slab>], [<item:minecraft:spruce_slab>]], null);
craftingTable.addShaped("jungle_plank_from_slab", <item:minecraft:jungle_planks>, [[<item:minecraft:jungle_slab>], [<item:minecraft:jungle_slab>]], null);
craftingTable.addShaped("dark_oak_plank_from_slab", <item:minecraft:dark_oak_planks>, [[<item:minecraft:dark_oak_slab>], [<item:minecraft:dark_oak_slab>]], null);
craftingTable.addShaped("crimson_plank_from_slab", <item:minecraft:crimson_planks>, [[<item:minecraft:crimson_slab>], [<item:minecraft:crimson_slab>]], null);
craftingTable.addShaped("warped_plank_from_slab", <item:minecraft:warped_planks>, [[<item:minecraft:warped_slab>], [<item:minecraft:warped_slab>]], null);
#craftingTable.addShaped("stone_from_slab", <item:minecraft:stone>, [[<item:minecraft:stone_slab>], [<item:minecraft:stone_slab>]], null);
#craftingTable.addShaped("smooth_stone_from_slab", <item:minecraft:smooth_stone>, [[<item:minecraft:smooth_stone_slab>], [<item:minecraft:smooth_stone_slab>]], null);
#craftingTable.addShaped("sandstone_from_slab", <item:minecraft:sandstone>, [[<item:minecraft:sandstone_slab>], [<item:minecraft:sandstone_slab>]], null);

#var minecraft_slabs = <tag:items:minecraft:slabs>;
#var slab_list = minecraft_slabs.elements;
#var slab_array = slab_list.toArray();

#for i, item in slab_array {
#    craftingTable.addShapeless("slab_to_block_",<item:minecraft:oak_planks>,[item, item]);
#}


#universal chest


<tag:items:quark:stone_tool_materials>.remove(<item:minecraft:flint>);
<tag:items:quark:stone_tool_materials>.remove(<item:minecraft:sandstone>);
<tag:items:quark:stone_tool_materials>.remove(<item:minecraft:infested_stone>);
<tag:items:quark:stone_tool_materials>.remove(<item:minecraft:infested_cobblestone>);
<tag:items:quark:stone_tool_materials>.remove(<item:byg:overgrown_netherrack>);
<tag:items:quark:stone_tool_materials>.remove(<item:byg:sythian_nylium>);
var minecraft_stones = <tag:items:quark:stone_tool_materials>.elements;
for item in minecraft_stones {
#    craftingTable.addShapeless("to_stone_" + item.getDefaultInstance().registryName.getPath(), <item:minecraft:stone>, [item.getDefaultInstance()]);
}

for item in minecraft_stones {
  #for itemJ in minecraft_stones {
#    stoneCutter.addRecipe("to_stone_stonecutter_" + item.getDefaultInstance().registryName.getPath(), item.getDefaultInstance(), <tag:items:quark:stone_tool_materials>);
  #}
}
