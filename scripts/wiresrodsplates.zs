import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.MCItemDefinition;

var pressing = <recipetype:create:pressing>;

craftingTable.removeByName("immersiveengineering:crafting/wire_steel");
craftingTable.removeByName("immersiveengineering:crafting/wire_electrum");
craftingTable.removeByName("immersiveengineering:crafting/wire_lead");
craftingTable.removeByName("immersiveengineering:crafting/wire_copper");
craftingTable.removeByName("immersiveengineering:crafting/wire_aluminum");

craftingTable.removeByRegex(".*hammering.*");
craftingTable.removeByRegex(".*hammercrushing.*");
