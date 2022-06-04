// priority: 0

settings.logAddedRecipes = true
settings.logRemovedRecipes = true
settings.logSkippedRecipes = false
settings.logErroringRecipes = true

//[id, name, color, glowing color, ingot, nugget, molten, block]
const metalvariants = [
  ["iron", "Iron", 0x8B8B94, 0xFFFFFF, true, true, true, true],
  ["gold", "Gold", 0xEAC33D, 0xFFFFFF, true, true, true, true],
  ["copper", "Copper", 0xBC765E, 0xFFFFFF, true, true, true, true],
  ["tin", "Tin", 0xADB0AD, 0xFFFFFF, true, true, true, true],
  ["silver", "Silver", 0xF2F2F2, 0xFFFFFF, true, true, true, true],
  ["lead", "Lead", 0x607489, 0xFFFFFF, true, true, true, true],
  ["aluminum", "Aluminum", 0xD2D4D6, 0xFFFFFF, true, true, true, true],
  ["nickel", "Nickel", 0xB1B09E, 0xFFFFFF, true, true, true, true],
  ["platinum", "Platinum", 0x7B8DA1, 0xFFFFFF, true, true, true, true],
  ["uranium", "Uranium", 0x878681, 0xFFFFFF, true, true, true, true],
  ["zinc", "Zinc", 0x9A958F, 0xFFFFFF, true, true, true, true],
  ["osmium", "Osmium", 0xAFB4BF, 0xFFFFFF, true, true, true, true],
  ["titanium", "Titanium", 0xA19E92, 0xFFFFFF, true, true, true, true],
  ["chromium", "Chromium", 0xC1C1C1, 0xFFFFFF, true, true, true, true],
  ["cobalt", "Cobalt", 0xE6E6DE, 0xFFFFFF, true, true, true, true],
  ["tungsten", "Tungsten", 0xB7C1C3, 0xFFFFFF, true, true, true, true],
  ["iridium", "Iridium", 0xE4E4E4, 0xFFFFFF, true, true, true, true],
  ["silicon", "Silicon", 0xBABCCC, 0xFFFFFF, true, true, true, true],
  ["magnesium", "Magnesium", 0xC0CCD8, 0xFFFFFF, true, true, true, true],
  ["lead_brass", "Leaded Brass", 0xBD9E7F, 0xFFFFFF, true, true, true, true],
  ["tin_brass", "Tinny Brass", 0xDEC082, 0xFFFFFF, true, true, true, true],
  ["iron_brass", "Ferrous Brass", 0xCDCDAB, 0xFFFFFF, true, true, true, true],
  ["silicon_brass", "Silicon Brass", 0x7B746D, 0xFFFFFF, false, true, true, true, "tconstruct:tinkers_bronze_ingot"],
  ["brass", "Brass", 0xCEBD77, 0xFFFFFF, true, true, true, true],
  ["pig_iron", "Pig Iron", 0xB47778, 0xFFFFFF, false, true, true, true, "tconstruct:pig_iron_ingot"],
  ["crude_steel", "Crude Steel", 0x70848F, 0xFFFFFF, true, true, true, true],
  ["steel", "Steel", 0x949CA1, 0xFFFFFF, true, true, true, true],
  ["cobalt_steel", "Cobalt Steel", 0xD4CBCB, 0xFFFFFF, true, true, true, true],
  ["stainless_steel", "Stainless Steel", 0x989898, 0xFFFFFF, true, true, true, true],
  ["damascus_steel", "Damascus Steel", 0xDDDDDD, 0xFFFFFF, true, true, true, true],
  ["alnico", "Alnico Alloy", 0xE0D2C7, 0xFFFFFF, true, true, true, true],
  ["bronze", "Bronze", 0xD5905C, 0xFFFFFF, true, true, true, true],
  ["aluminum_bronze", "Aluminum Bronze", 0xDFBC7F, 0xFFFFFF, true, true, true, true],
	["solder", "Solder", 0x837D7D, 0xFFFFFF, true, true, true, true],
  ["hepatizon", "Hepatizon", 0x473351, 0xFFFFFF, false, true, true, true, "tconstruct:hepatizon_ingot"],
  ["electrum", "Electrum", 0xAD624E, 0xFFFFFF, true, true, true, true],
  ["invar", "Invar", 0xA89E8D, 0xFFFFFF, true, true, true, true],
  ["nichrome", "Nichrome", 0xECE9E7, 0xFFFFFF, true, true, true, true],
  ["nitinol", "Nitinol", 0xD9E5D7 , 0xFFFFFF, true, true, true, true],
  ["sterling_silver", "Sterling Silver", 0xF4F4F2, 0xFFFFFF, true, true, true, true],
  ["constantan", "Constantan", 0xAD624E, 0xFFFFFF, true, true, true, true],
  ["netherite", "Netherite", 0x3F393B, 0xFFFFFF, false, true, true, true, "minecraft:netherite_ingot"],
  ["manasteel", "Manasteel", 0x4F78CD , 0xFFFFFF, false, true, true, true, "botania:manasteel_ingot"],
  ["terrasteel", "Terrasteel", 0x40AE15, 0xFFFFFF, false, true, true, true, "botania:terrasteel_ingot"],
  ["elementium", "Elementium", 0xCE5B91, 0xFFFFFF, false, true, true, true, "botania:elementium_ingot"],
  ["slimesteel", "Slimesteel", 0x70BBC0, 0xFFFFFF, false, true, true, true, "tconstruct:slimesteel_ingot"],
  ["queens_slime", "Queen's Slime", 0xAEB0E7, 0xFFFFFF, false, true, true, true, "tconstruct:queens_slime_ingot"],
  ["manyullyn", "Manyullyn", 0x7950A9, 0xFFFFFF, false, true, true, true, "tconstruct:manyullyn_ingot"],
  ["managold", "Managold", 0x19E8FF, 0xFFFFFF, true, true, true, true],
  ["enderium", "Enderium", 0x0F6A6A, 0xFFFFFF, true, true, true, true],
  ["titaniumaluminide", "Titanium Aluminide", 0xA7ADB1 , 0xFFFFFF, true, true, true, true],
  ["titaniumiridium", "Titanium-Iridium", 0xA7ADB1, 0xFFFFFF, true, true, true, true],
  ["refined_radiance", "Refined Radiance", 0xE7EBDC, 0xFFFFFF, false, true, true, true, "create:refined_radiance"],
  ["shadow_steel", "Shadow Steel", 0x433E52, 0xFFFFFF, false, true, true, true, "create:shadow_steel"],
  ["overcharged_alloy", "Overcharged Alloy", 0x70848F, 0xFFFFFF, false, true, true, true, "createaddition:overcharged_alloy"],
  ["aeternium", "Aeternium", 0x1E9376, 0xFFFFFF, false, true, true, true, "betterendforge:aeternium_ingot"],
  ["thallasium", "Thallasium", 0x74C4C9, 0xFFFFFF, false, true, true, true, "betterendforge:thallasium_ingot"],
  ["terminite", "Terminite", 0x00D392, 0xFFFFFF, false, true, true, true, "betterendforge:terminite_ingot"],
  ["pendorite", "Pendorite", 0x784B76, 0xFFFFFF, false, true, true, true, "byg:pendorite_ingot"],
  ["starmetal", "Starmetal", 0xFFFFFF, 0xFFFFFF, false, true, true, true, "astralsorcery:starmetal_ingot"]
];

const oretypes = [
	['geothite', 'Geothite', 3, 1, 0xb200ed, ['forge:ores/iron', 'forge:ores/iron_sulfide'], 1, ['iron']],
	['hematite', 'Hematite', 3, 1, 0xb200ed, ['forge:ores/iron', 'forge:ores/iron_oxide'], 1, ['iron']],
	['limonite', 'Limonite', 3, 1, 0xb200ed, ['forge:ores/iron', 'forge:ores/iron_oxide', 'forge:ores/nickel', 'forge:ores/nickel_oxide'], 1, ['iron', 'nickel']],
	['magnetite', 'Magnetite', 3, 1, 0xb200ed, ['forge:ores/iron', 'forge:ores/iron_oxide'], 1, ['iron']],
	['pyrite', 'Pyrite', 3, 1, 0xb200ed, ['forge:ores/iron', 'forge:ores/iron_sulfide'], 1, ['iron']],
	['chalcopyrite', 'Chalcopyrite', 3, 1, 0xb200ed, ['forge:ores/copper', 'forge:ores/copper_sulfide'], 1, ['copper']],
	['sphalerite', 'Sphalerite', 3, 1, 0xb200ed, ['forge:ores/zinc', 'forge:ores/zinc_sulfide'], 1, ['zinc']],
	['quartzite', 'Quartzite Rich Ore', 3, 1, 0xb200ed, ['forge:ores/quartz'], 2, ['quartz', 'minecraft:quartz']],
	['malachite', 'Malachite', 3, 1, 0xb200ed, ['forge:ores/copper', 'forge:ores/copper_oxide'], 1, ['copper']],
	['azurite', 'Azurite', 3, 1, 0xb200ed, ['forge:ores/copper', 'forge:ores/copper_oxide'], 1, ['copper']],
	['osmiridium', 'Osmiridium', 3, 1, 0xb200ed, ['forge:ores/osmium', 'forge:ores/osmium_silicate', 'forge:ores/iridium', 'forge:ores/iridium_silicate'], 6, ['osmium', 'iridium']],
	['cassiterite', 'Cassiterite', 3, 1, 0xb200ed, ['forge:ores/tin', 'forge:ores/tin_oxide'], 5, ['tin']],
	['wolframite', 'Wolframite', 3, 1, 0xb200ed, ['forge:ores/tungsten', 'forge:ores/tungsten_oxide'], 6, ['tungsten']],
	['silvery_galena', 'Silvery Galena', 3, 1, 0xb200ed, ['forge:ores/silver', 'forge:ores/silver_silicate'], 5, ['silver', 'lead']],
	['leaded_galena', 'Leaded Galena', 3, 1, 0xb200ed, ['forge:ores/lead', 'forge:ores/lead_silicate'], 1, ['lead', 'silver']],
	['sulfur', 'Sulfur Rich Ore', 3, 1, 0xb200ed, ['forge:ores/sulfur'], 2, ['sulfur', 'amicore:sulfur_crystal']],
	['teallite', 'Teallite', 3, 1, 0xb200ed, ['forge:ores/tin', 'forge:ores/tin_sulfide'], 5, ['tin']],
	['bauxite', 'Bauxite', 3, 1, 0xb200ed, ['forge:ores/aluminum', 'forge:ores/aluminum_oxide'], 6, ['aluminum']],
	['sperrylite', 'Sperrylite', 3, 1, 0xb200ed, ['forge:ores/platinum', 'forge:ores/platinum_arsenide'], 6, ['platinum']],
	['cooperite', 'Cooperite', 3, 1, 0xb200ed, ['forge:ores/platinum', 'forge:ores/platinum_sulfide'], 6, ['platinum']],
	['uraninite', 'Uraninite', 3, 1, 0xb200ed, ['forge:ores/uranium', 'forge:ores/uranium_oxide'], 6, ['uranium']],
	['autunite', 'Autunite', 3, 1, 0xb200ed, ['forge:ores/uranium', 'forge:ores/uranium_phosphate'], 6, ['uranium']],
	['apatite', 'Apatite', 3, 1, 0xb200ed, ['forge:ores/calcium_phosphate'], 2, ['', 'amicore:apatite']],
	['marmatite', 'Marmatite', 3, 1, 0xb200ed, ['forge:ores/zinc', 'forge:ores/zinc_sulfide'], 1, ['zinc']],
	['brucite', 'Brucite', 3, 1, 0xb200ed, ['forge:ores/magnesium', 'forge:ores/magnesium_oxide'], 0, ['magnesium']],
	['rutile', 'Rutile', 3, 1, 0xb200ed, ['forge:ores/titanium', 'forge:ores/titanium_oxide'], 6, ['titanium']],
	['certus', 'Certus Rich Ore', 3, 1, 0xb200ed, ['forge:ores/certus'], 2, ['certus', 'appliedenergistics2:certus_quartz_crystal']],
	['beryl', 'Beryl Rich Ore', 3, 1, 0xb200ed, ['forge:ores/beryl'], 2, ['beryl', 'minecraft:emerald']],
	['red_beryl', 'Red Beryl Rich Ore', 3, 1, 0xb200ed, ['forge:ores/red_beryl'], 2, ['red_beryl', 'minecraft:emerald']],
	['aquamarine', 'Aquamarine Rich Ore', 3, 1, 0xb200ed, ['forge:ores/aquamarine'], 2, ['aquamarine', 'astralsorcery:aquamarine']],
	['kimberlite', 'Kimberlite Rich Ore', 3, 1, 0xb200ed, ['forge:ores/kimberlite'], 2, ['klimberlite', 'minecraft:diamond']],
	['lapis_lazuli', 'Lapis-Lazuli Rich Ore', 3, 1, 0xb200ed, ['forge:ores/lapis_lazuli'], 2, ['lapis_lazuli', 'minecraft:lapis_lazuli']],
	['gold', 'Gold Ore', 3, 1, 0xb200ed, ['forge:ores/gold'], 1, ['gold']],
	['calaverite', 'Calaverite', 3, 1, 0xb200ed, ['forge:ores/gold', 'forge:ores/gold_telluride'], 1, ['gold']],
	['redstone', 'Redstone Rich Ore', 3, 1, 0xb200ed, ['forge:ores/redstone'], 2, ['redstone', 'minecraft:redstone']],
	['chromite', 'Chromite', 3, 1, 0xb200ed, ['forge:ores/chromium', 'forge:ores/chromium_oxide', 'forge:ores/iron', 'forge:ores/iron_oxide'], 6, ['chromium', 'iron']],
	['magnesiochromite', 'Magnesiochromite', 3, 1, 0xb200ed, ['forge:ores/chromium', 'forge:ores/chromium_oxide', 'forge:ores/magnesium', 'forge:ores/magnesium_oxide'], 6, ['chromium', 'magnesium']],
	['hercynite', 'Hercynite', 3, 1, 0xb200ed, ['forge:ores/aluminum', 'forge:ores/aluminum_oxide', 'forge:ores/iron', 'forge:ores/iron_oxide'], 6, ['aluminum', 'iron']],
	['pentlandite', 'Pentlandite', 3, 1, 0xb200ed, ['forge:ores/nickel', 'forge:ores/nickel_sulfide','forge:ores/iron', 'forge:ores/iron_sulfide'], 0, ['nickel', 'iron']],
	['millerite', 'Millerite', 3, 1, 0xb200ed, ['forge:ores/nickel', 'forge:ores/nickel_sulfide'], 0, ['nickel']],
	['coal', 'Coal Ore', 3, 1, 0xb200ed, ['forge:ores/coal'], 3, ['coal', 'minecraft:coal']],
	['lignite', 'Lignite Ore', 3, 1, 0xb200ed, ['forge:ores/lignite'], 3, ['lignite', 'geolosys:lignite_coal']],
	['bitumen', 'Bitumen Ore', 3, 1, 0xb200ed, ['forge:ores/bitumen'], 3, ['bitumen', 'geolosys:bituminous_coal']],
	['anthracite', 'Anthracite Ore', 3, 1, 0xb200ed, ['forge:ores/anthracite'], 3, ['anthracite', 'geolosys:anthracite_coal']],
	['nether_anthracite', 'Anthracite Ore', 3, 1, 0x111314, ['forge:ores/anthracite'], 3, ['anthracite', 'geolosys:anthracite_coal']],
	['ender_anthracite', 'Anthracite Ore', 3, 1, 0x111314, ['forge:ores/anthracite'], 3, ['anthracite', 'geolosys:anthracite_coal']],
	['nether_gold', 'Tainted Gold Ore', 0.4, 1, 0xb200ed, ['forge:ores/gold', 'forge:ores/gold_tainted'], 1, ['gold']],
	['nether_debris', 'Tainted Ancient Debris Streaked Ore', 0.4, 1, 0xb200ed, ['forge:ores/netherite', 'forge:ores/netherite_tainted'], 6, ['netherite']],
	['nether_cobaltite', 'Tainted Cobaltite', 0.4, 1, 0xb200ed, ['forge:ores/cobalt', 'forge:ores/cobalt_tainted'], 6, ['cobalt']],
	['nether_quartz', 'Tainted Quartzite Rich Ore', 0.4, 1, 0xb200ed, ['forge:ores/quartz', 'forge:ores/quartz_tainted'], 2, ['quartz']],
	['nether_blazing_quartz', 'Tainted Blazing Quartzite Rich Ore', 0.4, 1, 0xb200ed, ['forge:ores/blazing_quartz', 'forge:ores/blazing_quartz_tainted'], 2, ['blazing_quartz']],
	['ender_thallasium', 'Thallasium Ore', 4, 1, 0xb200ed, ['forge:ores/thallasium', 'forge:ores/thallasium_ender'], 6, ['thallsium']],
	['ender_pendorite', 'Pendorite Streaked Ore', 4, 1, 0xb200ed, ['forge:ores/pendorite', 'forge:ores/pendorite_ender'], 6, ['pendorite']],
	['ender_amber', 'Amber Rich Ore', 4, 1, 0xb200ed, ['forge:ores/amber', 'forge:ores/amber_ender'], 2, ['amber']],
	['ender_ametrine', 'Ametrine Rich Ore', 4, 1, 0xb200ed, ['forge:ores/ametrine', 'forge:ores/ametrine_ender'], 2, ['ametrine']],
	['ender_biotite', 'Ender Biotite Rich Ore', 4, 1, 0xb200ed, ['forge:ores/biotite', 'forge:ores/biotite_ender'], 2, ['biotite']]
];


onEvent('fluid.tags', event => {
    event.add('forge:steam', 'amicore:steam')
})

onEvent('block.tags', event => {
    event.add('forge:steam', 'amicore:steam')
})

onEvent('item.tags', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')

  const colors = ["red", "orange", "yellow", "lime", "green", "light_blue", "cyan", "blue", "magenta", "purple", "pink", "brown", "gray", "light_gray", "black", "white"];


  event.add('forge:dusts/wood', 'farmersdelight:tree_bark')
  event.add('forge:fiber', 'immersiveengineering:hemp_fiber')
  event.add('forge:fiber', 'betterendforge:silk_fiber')
  event.add('forge:fiber', 'byg:cattail')

  event.add('forge:sheetmetals/crude_steel', 'amicore:crude_steel_sheetmetal')

  // event.add('malum:spirits', 'malum:arcane_spirit')
  // event.add('malum:spirits', 'malum:wicked_spirit')
  // event.add('malum:spirits', 'malum:eldritch_spirit')
  // event.add('malum:spirits', 'malum:earthen_spirit')
  // event.add('malum:spirits', 'malum:infernal_spirit')
  // event.add('malum:spirits', 'malum:aerial_spirit')
  // event.add('malum:spirits', 'malum:aquatic_spirit')
  // event.add('malum:spirits', 'malum:sacred_spirit')


  // const triplevariants = ["iron", "gold", "copper", "tin", "silver", "lead", "aluminum", "nickel", "platinum", "uranium", "zinc", "osmium", "titanium"];
	// const captriplevariants = ["Iron", "Gold", "Copper", "Tin", "Silver", "Lead", "Aluminum", "Nickel", "Platinum", "Uranium", "Zinc", "Osmium", "Titanium"];
  //
  //
	// //low Ore
	// for (let i = 0; i < triplevariants.length; i++) {
  //     event.add('forge:low_crushed_ore', 'amicore:low_crushed_' + triplevariants[i] + '_ore')
  //     event.add('forge:low_crushed_ore/' + triplevariants[i], 'amicore:low_crushed_' + triplevariants[i] + '_ore')
  //     event.add('forge:washed_ore', 'amicore:washed_' + triplevariants[i])
  //     event.add('forge:washed_ore/' + triplevariants[i], 'amicore:washed_' + triplevariants[i])
  //     event.add('forge:coagulated_ore', 'amicore:coagulated_' + triplevariants[i])
  //     event.add('forge:coagulated_ore/' + triplevariants[i], 'amicore:coagulated_' + triplevariants[i])
  //     event.add('forge:solidified_ore', 'amicore:solidified_' + triplevariants[i])
  //     event.add('forge:solidified_ore/' + triplevariants[i], 'amicore:solidified_' + triplevariants[i])
  //     event.add('forge:pressed_ore', 'amicore:pressed_' + triplevariants[i])
  //     event.add('forge:pressed_ore/' + triplevariants[i], 'amicore:pressed_' + triplevariants[i])
  //     event.add('forge:crumbled_ore', 'amicore:crumbled_' + triplevariants[i])
  //     event.add('forge:crumbled_ore/' + triplevariants[i], 'amicore:crumbled_' + triplevariants[i])
  //     event.add('forge:raw_nugget', 'amicore:raw_nugget_' + triplevariants[i])
  //     event.add('forge:raw_nugget/' + triplevariants[i], 'amicore:raw_nugget_' + triplevariants[i])
  //     event.add('forge:medium_crushed_ore', 'amicore:medium_crushed_' + triplevariants[i] + '_ore')
  //     event.add('forge:medium_crushed_ore/' + triplevariants[i], 'amicore:medium_crushed_' + triplevariants[i] + '_ore')
  //     event.add('forge:high_crushed_ore', 'amicore:high_crushed_' + triplevariants[i] + '_ore')
  //     event.add('forge:high_crushed_ore/' + triplevariants[i], 'amicore:high_crushed_' + triplevariants[i] + '_ore')
  //     event.add('forge:pure_crushed_ore', 'amicore:pure_crushed_' + triplevariants[i] + '_ore')
  //     event.add('forge:pure_crushed_ore/' + triplevariants[i], 'amicore:pure_crushed_' + triplevariants[i] + '_ore')
	// }

  //===================================================================================================================================
	//All metal components

	//cake
	for (let i = 0; i < metalvariants.length; i++) {
      event.add('forge:cakes', 'amicore:' + metalvariants[i][0] + '_cake');
      event.add('forge:cakes/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_cake');
      event.add('forge:bar_stocks', 'amicore:' + metalvariants[i][0] + '_bar_stock');
      event.add('forge:bar_stocks/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_bar_stock');
      event.add('forge:heated_metal', 'amicore:' + metalvariants[i][0] + '_heated_cake');
      event.add('forge:heated_cakes', 'amicore:' + metalvariants[i][0] + '_heated_cake');
      event.add('forge:heated_cakes/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_heated_cake');
      event.add('forge:heated_metal', 'amicore:' + metalvariants[i][0] + '_heated_ingot');
      event.add('forge:heated_ingots', 'amicore:' + metalvariants[i][0] + '_heated_ingot');
      event.add('forge:heated_ingots/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_heated_ingot');
      event.add('forge:heated_metal', 'amicore:' + metalvariants[i][0] + '_heated_bar_stock');
      event.add('forge:heated_bar_stocks', 'amicore:' + metalvariants[i][0] + '_heated_bar_stock');
      event.add('forge:heated_bar_stocks/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_heated_bar_stock');
      event.add('forge:large_sheets', 'amicore:' + metalvariants[i][0] + '_large_sheet');
      event.add('forge:large_sheets/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_large_sheet');
      event.add('forge:heated_metal', 'amicore:' + metalvariants[i][0] + '_heated_large_sheet');
      event.add('forge:heated_large_sheets', 'amicore:' + metalvariants[i][0] + '_heated_large_sheet');
      event.add('forge:heated_large_sheets/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_heated_large_sheet');
      event.add('forge:bolts', 'amicore:' + metalvariants[i][0] + '_bolt');
      event.add('forge:bolts/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_bolt');
      event.add('forge:rounded_sheets', 'amicore:' + metalvariants[i][0] + '_round_sheet');
      event.add('forge:rounded_sheets/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_round_sheet');
      event.add('forge:coils', 'amicore:' + metalvariants[i][0] + '_coil');
      event.add('forge:coils/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_coil');
      event.add('forge:plates', 'amicore:' + metalvariants[i][0] + '_plate');
      event.add('forge:plates/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_plate');
      event.add('forge:rods', 'amicore:' + metalvariants[i][0] + '_rod');
      event.add('forge:rods/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_rod');
      event.add('forge:wires', 'amicore:' + metalvariants[i][0] + '_wire');
      event.add('forge:wires/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_wire');
      event.add('forge:dusts', 'amicore:' + metalvariants[i][0] + '_dust');
      event.add('forge:dusts/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_dust');
      event.add('forge:tiny_dusts', 'amicore:' + metalvariants[i][0] + '_tiny_dust');
      event.add('forge:tiny_dusts/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_tiny_dust');
      event.add('forge:gears', 'amicore:' + metalvariants[i][0] + '_gear');
      event.add('forge:gears/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_gear');

  		if(metalvariants[i][4]) {
      event.add('forge:ingots', 'amicore:' + metalvariants[i][0] + '_ingot')
      event.add('forge:ingots/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_ingot')
      event.add('minecraft:beacon_payment_items', 'amicore:' + metalvariants[i][0] + '_ingot')
      }
  		// if(metalvariants[i][5]) {
      event.add('forge:nuggets', 'amicore:' + metalvariants[i][0] + '_nugget')
      event.add('forge:nuggets/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_nugget')
      // }
      event.add('forge:storage_blocks', 'amicore:' + metalvariants[i][0] + '_block')
      event.add('forge:storage_blocks/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_block')
      event.add('forge:storage_blocks', 'amicore:' + metalvariants[i][0] + '_block')
	}

  //ores
	for (let i = 0; i < oretypes.length; i++) {
    if(oretypes[i][6] != 3) {
      event.add('forge:ores', 'amicore:' + oretypes[i][0] + '_cluster');
      for (let j = 0; j < oretypes[i][5].length; j++) {
        event.add(oretypes[i][5][j], 'amicore:' + oretypes[i][0] + '_cluster');
        event.add(oretypes[i][5][j], 'amicore:' + oretypes[i][0] + '_ore');
    		if(oretypes[i][6] == 1 || oretypes[i][6] == 5) {
          event.add("forge:crushed_ores/" + oretypes[i][0], 'amicore:crushed_' + oretypes[i][0]);
          event.add("forge:raw_nuggets/" + oretypes[i][0], 'amicore:raw_' + oretypes[i][0] + '_nugget');
        }
        if (oretypes[i][6] == 0) {
          event.add("forge:crushed_ores/" + oretypes[i][0], 'amicore:crushed_' + oretypes[i][0]);
          event.add("forge:powders/" + oretypes[i][0], 'amicore:' + oretypes[i][0] + '_powder');
          event.add("forge:blasts/" + oretypes[i][0], 'amicore:' + oretypes[i][0] + '_blast');
        }
      }
    }
  }

  event.add('forge:bolts', 'amicore:wooden_bolt');
  event.add('forge:bolts/wooden', 'amicore:wooden_bolt');

  event.add('tconstruct:casts', 'amicore:bar_stock_cast');
  event.add('tconstruct:casts/multi_use', 'amicore:bar_stock_cast');
  event.add('tconstruct:casts/multi_use/bar_stock', 'amicore:bar_stock_cast');
  event.add('tconstruct:casts/gold', 'amicore:bar_stock_cast');
  event.add('tconstruct:casts', 'amicore:bar_stock_sand_cast');
  event.add('tconstruct:casts/single_use', 'amicore:bar_stock_sand_cast');
  event.add('tconstruct:casts/single_use/bar_stock', 'amicore:bar_stock_sand_cast');
  event.add('tconstruct:casts/sand', 'amicore:bar_stock_sand_cast');
  event.add('tconstruct:casts', 'amicore:bar_stock_red_sand_cast');
  event.add('tconstruct:casts/single_use', 'amicore:bar_stock_red_sand_cast');
  event.add('tconstruct:casts/single_use/bar_stock', 'amicore:bar_stock_red_sand_cast');
  event.add('tconstruct:casts/red_sand', 'amicore:bar_stock_red_sand_cast');

  //manual ingot tagging
  event.add('forge:ingots/starmetal', 'astralsorcery:starmetal_ingot');
  event.add('forge:ingots/refined_radiance', 'create:refined_radiance');
  event.add('forge:ingots/shadow_steel', 'create:shadow_steel');
  event.add('forge:ingots/overcharged_alloy', 'createaddition:overcharged_alloy');
  event.add('forge:ingots/pendorite', 'byg:pendorite_ingot');

//Plates removeByName
  event.remove('forge:plates', 'immersiveengineering:plate_copper');
  event.remove('forge:plates', 'immersiveengineering:plate_aluminum');
  event.remove('forge:plates', 'immersiveengineering:plate_lead');
  event.remove('forge:plates', 'immersiveengineering:plate_nickel');
  event.remove('forge:plates', 'immersiveengineering:plate_constantan');
  event.remove('forge:plates', 'immersiveengineering:plate_electrum');
  event.remove('forge:plates', 'immersiveengineering:plate_silver');
  event.remove('forge:plates', 'immersiveengineering:plate_uranium');
  event.remove('forge:plates', 'immersiveengineering:plate_steel');
  event.remove('forge:plates', 'immersiveengineering:plate_iron');
  event.remove('forge:plates', 'immersiveengineering:plate_gold');
  event.remove('forge:plates', 'advancedrocketry:platetitaniumaluminide');
  event.remove('forge:plates', 'advancedrocketry:platetitaniumiridium');
  event.remove('forge:plates', 'libvulpes:plateiron');
  event.remove('forge:plates', 'libvulpes:plategold');
  event.remove('forge:plates', 'libvulpes:platesilicon');
  event.remove('forge:plates', 'libvulpes:platecopper');
  event.remove('forge:plates', 'libvulpes:platetin');
  event.remove('forge:plates', 'libvulpes:platesteel');
  event.remove('forge:plates', 'libvulpes:platetitanium');
  event.remove('forge:plates', 'libvulpes:platealuminum');
  event.remove('forge:plates', 'libvulpes:plateiridium');
  event.remove('forge:plates', 'create:copper_sheet');
  event.remove('forge:plates', 'create:iron_sheet');
  event.remove('forge:plates', 'create:golden_sheet');
  event.remove('forge:plates', 'create:brass_sheet');
  event.remove('forge:plates', 'createaddition:zinc_sheet');

  event.remove('forge:plates/copper', 'immersiveengineering:plate_copper');
  event.remove('forge:plates/aluminum', 'immersiveengineering:plate_aluminum');
  event.remove('forge:plates/lead', 'immersiveengineering:plate_lead');
  event.remove('forge:plates/nickel', 'immersiveengineering:plate_nickel');
  event.remove('forge:plates/constantan', 'immersiveengineering:plate_constantan');
  event.remove('forge:plates/electrum', 'immersiveengineering:plate_electrum');
  event.remove('forge:plates/silver', 'immersiveengineering:plate_silver');
  event.remove('forge:plates/uranium', 'immersiveengineering:plate_uranium');
  event.remove('forge:plates/steel', 'immersiveengineering:plate_steel');
  event.remove('forge:plates/iron', 'immersiveengineering:plate_iron');
  event.remove('forge:plates/gold', 'immersiveengineering:plate_gold');
  event.remove('forge:plates/titaniumaluminide', 'advancedrocketry:platetitaniumaluminide');
  event.remove('forge:plates/titaniumiridium', 'advancedrocketry:platetitaniumiridium');
  event.remove('forge:plates/iron', 'libvulpes:plateiron');
  event.remove('forge:plates/gold', 'libvulpes:plategold');
  event.remove('forge:plates/silicon', 'libvulpes:platesilicon');
  event.remove('forge:plates/copper', 'libvulpes:platecopper');
  event.remove('forge:plates/tin', 'libvulpes:platetin');
  event.remove('forge:plates/steel', 'libvulpes:platesteel');
  event.remove('forge:plates/titanium', 'libvulpes:platetitanium');
  event.remove('forge:plates/aluminum', 'libvulpes:platealuminum');
  event.remove('forge:plates/iridium', 'libvulpes:plateiridium');
  event.remove('forge:plates/copper', 'create:copper_sheet');
  event.remove('forge:plates/iron', 'create:iron_sheet');
  event.remove('forge:plates/gold', 'create:golden_sheet');
  event.remove('forge:plates/brass', 'create:brass_sheet');
  event.remove('forge:plates/zinc', 'createaddition:zinc_sheet');

  //rods removal
  event.remove('forge:rods', 'createaddition:copper_rod');
  event.remove('forge:rods', 'createaddition:iron_rod');
  event.remove('forge:rods', 'createaddition:gold_rod');
  event.remove('forge:rods', 'createaddition:brass_rod');
  event.remove('forge:rods', 'immersiveposts:stick_copper');
  event.remove('forge:rods', 'immersiveengineering:stick_aluminum');
  event.remove('forge:rods', 'immersiveposts:stick_lead');
  event.remove('forge:rods', 'immersiveposts:stick_nickel');
  event.remove('forge:rods', 'immersiveposts:stick_constantan');
  event.remove('forge:rods', 'immersiveposts:stick_electrum');
  event.remove('forge:rods', 'immersiveposts:stick_silver');
  event.remove('forge:rods', 'immersiveposts:stick_uranium');
  event.remove('forge:rods', 'immersiveengineering:stick_steel');
  event.remove('forge:rods', 'immersiveengineering:stick_iron');
  event.remove('forge:rods', 'immersiveposts:stick_gold');

  event.remove('forge:rods/copper', 'createaddition:copper_rod');
  event.remove('forge:rods/iron', 'createaddition:iron_rod');
  event.remove('forge:rods/gold', 'createaddition:gold_rod');
  event.remove('forge:rods/brass', 'createaddition:brass_rod');
  event.remove('forge:rods/copper', 'immersiveposts:stick_copper');
  event.remove('forge:rods/aluminum', 'immersiveengineering:stick_aluminum');
  event.remove('forge:rods/lead', 'immersiveposts:stick_lead');
  event.remove('forge:rods/nickel', 'immersiveposts:stick_nickel');
  event.remove('forge:rods/constantan', 'immersiveposts:stick_constantan');
  event.remove('forge:rods/electrum', 'immersiveposts:stick_electrum');
  event.remove('forge:rods/silver', 'immersiveposts:stick_silver');
  event.remove('forge:rods/uranium', 'immersiveposts:stick_uranium');
  event.remove('forge:rods/steel', 'immersiveengineering:stick_steel');
  event.remove('forge:rods/iron', 'immersiveengineering:stick_iron');
  event.remove('forge:rods/gold', 'immersiveposts:stick_gold');

  //dusts removal
  event.remove('forge:dusts', 'pedestals:dustiron');
  event.remove('forge:dusts', 'pedestals:dustgold');
  event.remove('forge:dusts', 'pedestals:dustcopper');
  event.remove('forge:dusts', 'pedestals:dusttin');
  event.remove('forge:dusts', 'pedestals:dustosmium');
  event.remove('forge:dusts', 'pedestals:dusturanium');
  event.remove('forge:dusts', 'pedestals:dustlead');
  event.remove('forge:dusts', 'pedestals:dustsilver');
  event.remove('forge:dusts', 'pedestals:dustaluminum');
  event.remove('forge:dusts', 'pedestals:dustnickel');
  event.remove('forge:dusts', 'advancedrocketry:dusttitaniumaluminide');
  event.remove('forge:dusts', 'advancedrocketry:dusttitaniumiridium');
  event.remove('forge:dusts', 'libvulpes:dustiron');
  event.remove('forge:dusts', 'libvulpes:dustgold');
  event.remove('forge:dusts', 'libvulpes:dustsilicon');
  event.remove('forge:dusts', 'libvulpes:dustcopper');
  event.remove('forge:dusts', 'libvulpes:dusttin');
  event.remove('forge:dusts', 'libvulpes:duststeel');
  event.remove('forge:dusts', 'libvulpes:dusttitanium');
  event.remove('forge:dusts', 'libvulpes:dustaluminum');
  event.remove('forge:dusts', 'libvulpes:dustiridium');
  event.remove('forge:dusts', 'immersiveengineering:dust_copper');
  event.remove('forge:dusts', 'immersiveengineering:dust_aluminum');
  event.remove('forge:dusts', 'immersiveengineering:dust_lead');
  event.remove('forge:dusts', 'immersiveengineering:dust_nickel');
  event.remove('forge:dusts', 'immersiveengineering:dust_constantan');
  event.remove('forge:dusts', 'immersiveengineering:dust_electrum');
  event.remove('forge:dusts', 'immersiveengineering:dust_silver');
  event.remove('forge:dusts', 'immersiveengineering:dust_uranium');
  event.remove('forge:dusts', 'immersiveengineering:dust_steel');
  event.remove('forge:dusts', 'immersiveengineering:dust_iron');
  event.remove('forge:dusts', 'immersiveengineering:dust_gold');

  event.remove('forge:dusts/iron', 'pedestals:dustiron');
  event.remove('forge:dusts/gold', 'pedestals:dustgold');
  event.remove('forge:dusts/copper', 'pedestals:dustcopper');
  event.remove('forge:dusts/tin', 'pedestals:dusttin');
  event.remove('forge:dusts/osmium', 'pedestals:dustosmium');
  event.remove('forge:dusts/uranium', 'pedestals:dusturanium');
  event.remove('forge:dusts/lead', 'pedestals:dustlead');
  event.remove('forge:dusts/silver', 'pedestals:dustsilver');
  event.remove('forge:dusts/aluminum', 'pedestals:dustaluminum');
  event.remove('forge:dusts/nickel', 'pedestals:dustnickel');
  event.remove('forge:dusts/titaniumaluminide', 'advancedrocketry:dusttitaniumaluminide');
  event.remove('forge:dusts/titaniumiridium', 'advancedrocketry:dusttitaniumiridium');
  event.remove('forge:dusts/iron', 'libvulpes:dustiron');
  event.remove('forge:dusts/gold', 'libvulpes:dustgold');
  event.remove('forge:dusts/silicon', 'libvulpes:dustsilicon');
  event.remove('forge:dusts/copper', 'libvulpes:dustcopper');
  event.remove('forge:dusts/tin', 'libvulpes:dusttin');
  event.remove('forge:dusts/steel', 'libvulpes:duststeel');
  event.remove('forge:dusts/titanium', 'libvulpes:dusttitanium');
  event.remove('forge:dusts/aluminum', 'libvulpes:dustaluminum');
  event.remove('forge:dusts/iridium', 'libvulpes:dustiridium');
  event.remove('forge:dusts/copper', 'immersiveengineering:dust_copper');
  event.remove('forge:dusts/aluminum', 'immersiveengineering:dust_aluminum');
  event.remove('forge:dusts/lead', 'immersiveengineering:dust_lead');
  event.remove('forge:dusts/nickel', 'immersiveengineering:dust_nickel');
  event.remove('forge:dusts/constantan', 'immersiveengineering:dust_constantan');
  event.remove('forge:dusts/electrum', 'immersiveengineering:dust_electrum');
  event.remove('forge:dusts/silver', 'immersiveengineering:dust_silver');
  event.remove('forge:dusts/uranium', 'immersiveengineering:dust_uranium');
  event.remove('forge:dusts/steel', 'immersiveengineering:dust_steel');
  event.remove('forge:dusts/iron', 'immersiveengineering:dust_iron');
  event.remove('forge:dusts/gold', 'immersiveengineering:dust_gold');

  //remove wires
  event.remove('forge:wires', 'createaddition:copper_wire');
  event.remove('forge:wires', 'createaddition:iron_wire');
  event.remove('forge:wires', 'createaddition:gold_wire');
  event.remove('forge:wires/copper', 'createaddition:copper_wire');
  event.remove('forge:wires/iron', 'createaddition:iron_wire');
  event.remove('forge:wires/gold', 'createaddition:gold_wire');


  event.remove('forge:wires', 'immersiveengineering:wire_copper');
  event.remove('forge:wires', 'immersiveengineering:wire_aluminum');
  event.remove('forge:wires', 'immersiveengineering:wire_lead');
  event.remove('forge:wires', 'immersiveengineering:wire_electrum');
  event.remove('forge:wires', 'immersiveengineering:wire_steel');
  event.remove('forge:wires/copper', 'immersiveengineering:wire_copper');
  event.remove('forge:wires/aluminum', 'immersiveengineering:wire_aluminum');
  event.remove('forge:wires/lead', 'immersiveengineering:wire_lead');
  event.remove('forge:wires/electrum', 'immersiveengineering:wire_electrum');
  event.remove('forge:wires/steel', 'immersiveengineering:wire_steel');

  event.remove('forge:ingots', 'create:brass_ingot');
  event.remove('forge:ingots/brass', 'create:brass_ingot');
  event.remove('steampowered:bronze', 'create:brass_ingot');
  event.remove('forge:nuggets', 'create:brass_nugget');
  event.remove('forge:nuggets/brass', 'create:brass_nugget');
  event.remove('forge:nuggets', 'create:copper_nugget');
  event.remove('forge:nuggets/copper', 'create:copper_nugget');
  event.remove('forge:nuggets', 'create:zinc_nugget');
  event.remove('forge:nuggets/zinc', 'create:zinc_nugget');

  event.remove('forge:ingots', 'advancedrocketry:ingottitaniumaluminide');
  event.remove('forge:ingots/titaniumaluminide', 'advancedrocketry:ingottitaniumaluminide');
  event.remove('forge:ingots', 'advancedrocketry:ingottitaniumiridium');
  event.remove('forge:ingots/titaniumiridium', 'advancedrocketry:ingottitaniumiridium');
  event.remove('forge:nuggets', 'advancedrocketry:nuggettitaniumaluminide');
  event.remove('forge:nuggets/titaniumaluminide', 'advancedrocketry:nuggettitaniumaluminide');
  event.remove('forge:nuggets', 'advancedrocketry:nuggettitaniumiridium');
  event.remove('forge:nuggets/titaniumiridium', 'advancedrocketry:nuggettitaniumiridium');
  
  event.remove('forge:ingots/silicon_bronze', 'tconstruct:tinkers_bronze_ingot');
  event.add('forge:ingots/silicon_brass', 'tconstruct:tinkers_bronze_ingot');
  event.add('forge:ingots', 'tconstruct:tinkers_bronze_ingot');
  event.remove('forge:nuggets/silicon_bronze', 'tconstruct:tinkers_bronze_nugget');
  event.add('forge:nuggets/silicon_brass', 'tconstruct:tinkers_bronze_nugget');
  event.add('forge:nuggets', 'tconstruct:tinkers_bronze_nugget');
  event.remove('forge:storage_blocks/silicon_bronze', 'tconstruct:tinkers_bronze_block');
  event.add('forge:storage_blocks/silicon_brass', 'tconstruct:tinkers_bronze_block');
  event.add('forge:storage_blocks', 'tconstruct:tinkers_bronze_block');
  
  event.add('forge:gems/flint', 'minecraft:flint');
  
  //tongs tag
  event.add('curios:hands', 'amicore:metal_tongs');

  //embur
  event.add('forge:slimeballs', 'byg:embur_gel_ball');
  event.add('forge:slimeballs/embur', 'byg:embur_gel_ball');


  //run last
  glowings1 = new Array(metalvariants.length);
  glowings2 = new Array(metalvariants.length);
  glowings3 = new Array(metalvariants.length);
  glowings4 = new Array(metalvariants.length);

  for (let i = 0; i < metalvariants.length; i++) {
    glowings1[i] = 'amicore:' + metalvariants[i][0] + '_heated_ingot';
    glowings2[i] = 'amicore:' + metalvariants[i][0] + '_heated_bar_stock';
    glowings3[i] = 'amicore:' + metalvariants[i][0] + '_heated_cake';
    glowings4[i] = 'amicore:' + metalvariants[i][0] + '_heated_large_sheet';
  }

  // let array = java("net.minecraft.item.ItemGroup").field_78032_a;
	// for (let p = 0; p < array.length; p++) {
	// 	console.log(array[p].func_200300_c());

	// }

})

onEvent('block.loot_tables', event => {
	for (let i = 0; i < oretypes.length; i++) {
		if (oretypes[i][6] != 3) {
      event.addSimpleBlock('amicore:' + oretypes[i][0] + '_ore', 'amicore:' + oretypes[i][0] + '_cluster')
      event.addSimpleBlock('amicore:' + oretypes[i][0] + '_ore_sample', 'amicore:' + oretypes[i][0] + '_cluster')
    } else {
      event.addBlock('amicore:' + oretypes[i][0] + '_ore', table => {
        table.addPool(pool => {
    			pool.survivesExplosion()
    			pool.addItem(oretypes[i][7][1], 1, [1, 6])
    		})
      })
      event.addBlock('amicore:' + oretypes[i][0] + '_ore_sample', table => {
        table.addPool(pool => {
    			pool.survivesExplosion()
    			pool.addItem(oretypes[i][7][1], 1, [1, 6])
    		})
      })
    }

  }
})



events.listen('block.right_click', function (event) {


  //cooling hot metal parts
  // Check if item was right-clicked on client or server side
  const { block, hand, item, world, player } = event;
  if (hand.name() != "MAIN_HAND") return;

  // console.log(glowings1.toString());
  // console.log(glowings2.toString());
  // console.log(glowings3.toString());
  // console.log(glowings4.toString());

  if (block.equals("minecraft:cauldron")) {
    // console.log("right clicked cauldron");
    var level = block.properties.level;
    // console.log(level);
    const full = (level >= 1);
    if(full) {
      // console.log("cauldron has water");
      // console.log("\'" + item.id + "\'");
      for(let i = 0; i < glowings1.length; i++) {
        if (glowings1[i].equals(item.id)) {
          // console.log("right clicked glowing ingot");
          if(metalvariants[i][4] == true) { player.give('amicore:' + metalvariants[glowings1.indexOf(item.id)][0] + '_ingot'); }
          else { player.give(metalvariants[glowings1.indexOf(item.id)][8]); }
          item.count -= 1;
          let newLevel = level - 1;
          block.set(block.id, {level: newLevel});
          break;
        } else if (glowings2[i].equals(item.id)) {
          // console.log("right clicked glowing bar stock");
          player.give('amicore:' + metalvariants[glowings2.indexOf(item.id)][0] + '_bar_stock');
          item.count -= 1;
          let newLevel = level - 1;
          block.set(block.id, {level: newLevel});
          break;
        } else if (glowings3[i].equals(item.id)) {
          // console.log("right clicked glowing cake");
          player.give('amicore:' + metalvariants[glowings3.indexOf(item.id)][0] + '_cake');
          item.count -= 1;
          let newLevel = level - 1;
          block.set(block.id, {level: newLevel});
          break;
        } else if (glowings4[i].equals(item.id)) {
          // console.log("right clicked glowing large sheet");
          player.give('amicore:' + metalvariants[glowings4.indexOf(item.id)][0] + '_large_sheet');
          item.count -= 1;
          let newLevel = level - 1;
          block.set(block.id, {level: newLevel});
          break;
        }
      }
    }
  }
})
