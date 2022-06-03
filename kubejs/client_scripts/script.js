// priority: 0

console.info('Hello, World! (You will see this line every time client resources reload)')

onEvent('jei.hide.items', event => {
	// Hide items in JEI here
	// event.hide('minecraft:cobblestone')
})

// taken from FTBOceanBlock client_scripts/script.js
onEvent("item.tooltip", (event) => {
    event.add(/minecraft:(wooden|stone|iron|golden|diamond)_(sword|shovel|(pick)?axe|hoe)/, [
        Text.red("This item is for crafting only!"),
    ]);

});
