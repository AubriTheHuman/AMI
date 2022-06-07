// priority: 0

console.info('Loading Custom Reources')

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
	["silicon_brass", "Silicon Brass", 0x7B746D, 0xFFFFFF, false, true, true, true],
	["brass", "Brass", 0xCEBD77, 0xFFFFFF, true, true, true, true],
	["pig_iron", "Pig Iron", 0xB47778, 0xFFFFFF, false, true, true, true],
	["crude_steel", "Crude Steel", 0x70848F, 0xFFFFFF, true, true, true, true],
	["steel", "Steel", 0x949CA1, 0xFFFFFF, true, true, true, true],
	["cobalt_steel", "Cobalt Steel", 0xD4CBCB, 0xFFFFFF, true, true, true, true],
	["stainless_steel", "Stainless Steel", 0x989898, 0xFFFFFF, true, true, true, true],
	["damascus_steel", "Damascus Steel", 0xDDDDDD, 0xFFFFFF, true, true, true, true],
	["alnico", "Alnico Alloy", 0xE0D2C7, 0xFFFFFF, true, true, true, true],
	["bronze", "Bronze", 0xD5905C, 0xFFFFFF, true, true, true, true],
	["aluminum_bronze", "Aluminum Bronze", 0xDFBC7F, 0xFFFFFF, true, true, true, true],
	["solder", "Solder", 0x837D7D, 0xFFFFFF, true, true, true, true],
	["hepatizon", "Hepatizon", 0x473351, 0xFFFFFF, false, true, true, true],
	["electrum", "Electrum", 0xAD624E, 0xFFFFFF, true, true, true, true],
	["invar", "Invar", 0xA89E8D, 0xFFFFFF, true, true, true, true],
	["nichrome", "Nichrome", 0xECE9E7, 0xFFFFFF, true, true, true, true],
	["nitinol", "Nitinol", 0xD9E5D7 , 0xFFFFFF, true, true, true, true],
	["sterling_silver", "Sterling Silver", 0xF4F4F2, 0xFFFFFF, true, true, true, true],
	["constantan", "Constantan", 0xAD624E, 0xFFFFFF, true, true, true, true],
	["netherite", "Netherite", 0x3F393B, 0xFFFFFF, false, true, true, true],
	["manasteel", "Manasteel", 0x4F78CD , 0xFFFFFF, false, true, true, true],
	["terrasteel", "Terrasteel", 0x40AE15, 0xFFFFFF, false, true, true, true],
	["elementium", "Elementium", 0xCE5B91, 0xFFFFFF, false, true, true, true],
	["slimesteel", "Slimesteel", 0x70BBC0, 0xFFFFFF, false, true, true, true],
	["queens_slime", "Queen's Slime", 0xAEB0E7, 0xFFFFFF, false, true, true, true],
	["manyullyn", "Manyullyn", 0x7950A9, 0xFFFFFF, false, true, true, true],
	["managold", "Managold", 0x19E8FF, 0xFFFFFF, true, true, true, true],
	["enderium", "Enderium", 0x0F6A6A, 0xFFFFFF, true, true, true, true],
	["titaniumaluminide", "Titanium Aluminide", 0xA7ADB1 , 0xFFFFFF, true, true, true, true],
	["titaniumiridium", "Titanium-Iridium", 0xA7ADB1, 0xFFFFFF, true, true, true, true],
	["refined_radiance", "Refined Radiance", 0xE7EBDC, 0xFFFFFF, false, true, true, true],
	["shadow_steel", "Shadow Steel", 0x433E52, 0xFFFFFF, false, true, true, true, true],
	["overcharged_alloy", "Overcharged Alloy", 0x70848F, 0xFFFFFF, false, true, true, true],
	["aeternium", "Aeternium", 0x1E9376, 0xFFFFFF, false, true, true, true],
	["thallasium", "Thallasium", 0x74C4C9, 0xFFFFFF, false, true, true, true],
	["terminite", "Terminite", 0x00D392, 0xFFFFFF, false, true, true, true],
	["pendorite", "Pendorite", 0x784B76, 0xFFFFFF, false, true, true, true],
	["starmetal", "Starmetal", 0x0800C3, 0xFFFFFF, false, true, true, true],
	["rosenquartz", "Rosenquartz", 0xE646B9, 0xFFFFFF, false, true, true, true],
	["gildedfern", "Goldedfern", 0x096A14, 0xFFFFFF, false, true, true, true],
	["hamletite", "Hamletite", 0x900821, 0xFFFFFF, false, true, true, true]
];

// 0 = advanced (triples)
// 1 = basic (doubles)
// 2 = basic gem (doubles)
// 3 = coal (mined)
// 4 = advanced gem (doubles or triples)
// 5 = lead/silver exception (no single only double +)
// 6 = expert processings (specifics)

const oretypes = [
	['geothite', 'Geothite', 3, 1, 0x191917, ['forge:ores/iron', 'forge:ores/iron_sulfide'], 1, ['Iron']],
	['hematite', 'Hematite', 3, 1, 0x4A5255, ['forge:ores/iron', 'forge:ores/iron_oxide'], 1, ['Iron']],
	['limonite', 'Limonite', 3, 1, 0xEEAE3A, ['forge:ores/iron', 'forge:ores/iron_oxide', 'forge:ores/nickel', 'forge:ores/nickel_oxide'], 1, ['Iron', 'Nickel']],
	['magnetite', 'Magnetite', 3, 1, 0x727272, ['forge:ores/iron', 'forge:ores/iron_oxide'], 1, ['Iron']],
	['pyrite', 'Pyrite', 3, 1, 0xA29057, ['forge:ores/iron', 'forge:ores/iron_sulfide'], 1, ['Iron']],
	['chalcopyrite', 'Chalcopyrite', 3, 1, 0x766440, ['forge:ores/copper', 'forge:ores/copper_sulfide'], 1, ['Copper']],
	['sphalerite', 'Sphalerite', 3, 1, 0x9AA7A7, ['forge:ores/zinc', 'forge:ores/zinc_sulfide'], 1, ['Zinc']],
	['quartzite', 'Quartzite Rich Ore', 3, 1, 0xA8A09C, ['forge:ores/quartz'], 2, ['Quartz']],
	['malachite', 'Malachite', 3, 1, 0x0F543B, ['forge:ores/copper', 'forge:ores/copper_oxide'], 1, ['Copper']],
	['azurite', 'Azurite', 3, 1, 0x211DA0, ['forge:ores/copper', 'forge:ores/copper_oxide'], 1, ['Copper']],
	['osmiridium', 'Osmiridium', 3, 1, 0xB7B6B5, ['forge:ores/osmium', 'forge:ores/osmium_silicate', 'forge:ores/iridium', 'forge:ores/iridium_silicate'], 6, ['Osmium', 'Iridium']],
	['cassiterite', 'Cassiterite', 3, 1, 0x4B454C, ['forge:ores/tin', 'forge:ores/tin_oxide'], 5, ['Tin']],
	['wolframite', 'Wolframite', 3, 1, 0x5F666C, ['forge:ores/tungsten', 'forge:ores/tungsten_oxide'], 6, ['Tungsten']],
	['silvery_galena', 'Silvery Galena', 3, 1, 0xBBBBB7, ['forge:ores/silver', 'forge:ores/silver_silicate'], 5, ['Silver', 'Lead']],
	['leaded_galena', 'Leaded Galena', 3, 1, 0x36373E, ['forge:ores/lead', 'forge:ores/lead_silicate'], 1, ['Lead', 'Silver']],
	['sulfur', 'Sulfur Rich Ore', 3, 1, 0xDEE821, ['forge:ores/sulfur'], 2, ['Sulfur']],
	['teallite', 'Teallite', 3, 1, 0x818D8F, ['forge:ores/tin', 'forge:ores/tin_sulfide'], 5, ['Tin']],
	['bauxite', 'Bauxite', 3, 1, 0x844935, ['forge:ores/aluminum', 'forge:ores/aluminum_oxide'], 6, ['Aluminum']],
	['sperrylite', 'Sperrylite', 3, 1, 0xD5DFF8, ['forge:ores/platinum', 'forge:ores/platinum_arsenide'], 6, ['Platinum']],
	['cooperite', 'Cooperite', 3, 1, 0xB6AFAE, ['forge:ores/platinum', 'forge:ores/platinum_sulfide'], 6, ['Platinum']],
	['uraninite', 'Uraninite', 3, 1, 0x778389, ['forge:ores/uranium', 'forge:ores/uranium_oxide'], 6, ['Uranium']],
	['autunite', 'Autunite', 3, 1, 0x91B535, ['forge:ores/uranium', 'forge:ores/uranium_phosphate'], 6, ['Uranium']],
	['apatite', 'Apatite', 3, 1, 0x177C9B, ['forge:ores/calcium_phosphate'], 2, ['Apatite']],
	['marmatite', 'Marmatite', 3, 1, 0x696973, ['forge:ores/zinc', 'forge:ores/zinc_sulfide'], 1, ['Zinc']],
	['brucite', 'Brucite', 3, 1, 0x739299, ['forge:ores/magnesium', 'forge:ores/magnesium_oxide'], 0, ['Magnesium']],
	['rutile', 'Rutile', 3, 1, 0x451715, ['forge:ores/titanium', 'forge:ores/titanium_oxide'], 6, ['Titanium']],
	['certus', 'Certus Rich Ore', 3, 1, 0x95C3FA, ['forge:ores/certus'], 2, ['Certus']],
	['beryl', 'Beryl Rich Ore', 3, 1, 0x389270, ['forge:ores/beryl'], 2, ['Emerald']],
	['red_beryl', 'Red Beryl Rich Ore', 3, 1, 0xC3212F, ['forge:ores/red_beryl'], 2, ['Red Beryl']],
	['aquamarine', 'Aquamarine Rich Ore', 3, 1, 0x399FE1, ['forge:ores/aquamarine'], 2, ['Aquamarine']],
	['kimberlite', 'Kimberlite Rich Ore', 3, 1, 0x5EB0DF, ['forge:ores/kimberlite'], 2, ['Diamond']],
	['lapis_lazuli', 'Lapis-Lazuli Rich Ore', 3, 1, 0x1228AE, ['forge:ores/lapis_lazuli'], 2, ['Lapis lazuli']],
	['gold', 'Gold Ore', 3, 1, 0xE7CD57, ['forge:ores/gold'], 1, ['Gold']],
	['calaverite', 'Calaverite', 3, 1, 0x5F5C46, ['forge:ores/gold', 'forge:ores/gold_telluride'], 1, ['Gold']],
	['redstone', 'Redstone Rich Ore', 3, 1, 0x6C0000, ['forge:ores/redstone'], 2, ['Redstone']],
	['chromite', 'Chromite', 3, 1, 0x53445C, ['forge:ores/chromium', 'forge:ores/chromium_oxide', 'forge:ores/iron', 'forge:ores/iron_oxide'], 6, ['Chromium', 'Iron']],
	['magnesiochromite', 'Magnesiochromite', 3, 1, 0x4D8060, ['forge:ores/chromium', 'forge:ores/chromium_oxide', 'forge:ores/magnesium', 'forge:ores/magnesium_oxide'], 6, ['Chromium', 'Magnesium']],
	['hercynite', 'Hercynite', 3, 1, 0x506455, ['forge:ores/aluminum', 'forge:ores/aluminum_oxide', 'forge:ores/iron', 'forge:ores/iron_oxide'], 6, ['Aluminum', 'Iron']],
	['pentlandite', 'Pentlandite', 3, 1, 0x7C795B, ['forge:ores/nickel', 'forge:ores/nickel_sulfide','forge:ores/iron', 'forge:ores/iron_sulfide'], 0, ['Nickel', 'Iron']],
	['millerite', 'Millerite', 3, 1, 0x7E7B5B, ['forge:ores/nickel', 'forge:ores/nickel_sulfide'], 0, ['Nickel']],
	['coal', 'Coal Ore', 3, 1, 0x3A3A3A, ['forge:ores/coal'], 3, ['minecraft:coal']],
	['lignite', 'Lignite Ore', 3, 1, 0x4F3C2F, ['forge:ores/lignite'], 3, ['geolosys:lignite']],
	['bitumen', 'Bitumen Ore', 3, 1, 0x252525, ['forge:ores/bitumen'], 3, ['geolosys:bitumen']],
	['anthracite', 'Anthracite Ore', 3, 1, 0x111314, ['forge:ores/anthracite'], 3, ['geolosys:anthracite']],
	['nether_anthracite', 'Anthracite Ore', 3, 1, 0x111314, ['forge:ores/anthracite'], 3, ['geolosys:anthracite']],
	['ender_anthracite', 'Anthracite Ore', 3, 1, 0x111314, ['forge:ores/anthracite'], 3, ['geolosys:anthracite']],
	['nether_gold', 'Tainted Gold Ore', 0.4, 1, 0xE7CD57, ['forge:ores/gold', 'forge:ores/gold_tainted'], 1, ['Gold']],
	['nether_debris', 'Tainted Ancient Debris Streaked Ore', 0.4, 1, 0x371E1A, ['forge:ores/netherite', 'forge:ores/netherite_tainted'], 6, ['Netherite']],
	['nether_cobaltite', 'Tainted Cobaltite', 0.4, 1, 0x8A7E73, ['forge:ores/cobalt', 'forge:ores/cobalt_tainted'], 6, ['Cobalt']],
	['nether_quartz', 'Tainted Quartzite Rich Ore', 0.4, 1, 0xA8A09C, ['forge:ores/quartz', 'forge:ores/quartz_tainted'], 4, ['Quartz']],
	['nether_blazing_quartz', 'Tainted Blazing Quartzite Rich Ore', 0.4, 1, 0xF59D5E, ['forge:ores/blazing_quartz', 'forge:ores/blazing_quartz_tainted'], 4, ['Blazing quartz']],
	['ender_thallasium', 'Thallasium Ore', 4, 1, 0x78CECF, ['forge:ores/thallasium', 'forge:ores/thallasium_ender'], 6, ['Thallsium']],
	['ender_pendorite', 'Pendorite Streaked Ore', 4, 1, 0x633464, ['forge:ores/pendorite', 'forge:ores/pendorite_ender'], 6, ['Pendorite']],
	['ender_amber', 'Amber Rich Ore', 4, 1, 0xD89E05, ['forge:ores/amber', 'forge:ores/amber_ender'], 4, ['Amber']],
	['ender_ametrine', 'Ametrine Rich Ore', 4, 1, 0xAB7AF3, ['forge:ores/ametrine', 'forge:ores/ametrine_ender'], 4, ['Ametrine']],
	['ender_biotite', 'Ender Biotite Rich Ore', 4, 1, 0x1B1C1F, ['forge:ores/biotite', 'forge:ores/biotite_ender'], 4, ['Biotite']]
];

const basicSpirits = [
	['earthen', 'Earthen', 0x65FF0D, 0x51DD00],
	['infernal', 'Infernal', 0xFCCB18, 0xDDAD02], 
	['aerial', 'Aerial', 0x41E8E4, 0x16b5b1], 
	['aquatic', 'Aquatic', 0x2e85f5, 0x0b65d8]];
const simpleSpirits = [
	['sacred', 'Sacred', 0xF3416B, 0xf0184b], 
	['wicked', 'Wicked', 0xa519da, 0x8213ac], 
	['arcane', 'Arcane', 0xe554d1, 0xd120b8], 
	['eldritch', 'Eldritch', 0x48165f, 0x2d0e3c]];
const intermediateSpirits = [
	['malicious', 'Malicious', 0xAB1182, 0x8f0e6c], 
	['magnetic', 'Magnetic', 0xEB4D4D, 0xe83333], 
	['ruinous', 'Ruinous', 0x0f0f0f, 0x080808], 
	['tempestuous', 'Tempestuous', 0x84a8cb, 0x84a8cb], 
	['electric', 'Electric', 0xDCEC73, 0xd1e646], 
	['mechanical', 'Mechanical', 0xF5BC22, 0xc89509], 
	['herbal', 'Herbal', 0x0A7C30, 0x086326]];
const advancedSpirits = [
	['voidial', 'Voidial', 0x391B4D, 0x2a1439], 
	['deathly', 'Deathly', 0x3B3B52, 0x292939], 
	['astral', 'Astral', 0xEBF0FF, 0xc7d5ff], 
	['corporeal', 'Corporeal', 0xEDD3F5, 0xe1b7ef], 
	['chaotic', 'Chaotic', 0x6F00FF, 0x4800a5], 
	['frozen', 'Frozen', 0x97E8E2, 0x60dcd3], 
	['hungry', 'Hungry', 0xEBC738, 0xc6a214]];
const expertSpirits = [
	['radiative', 'Radiative', 0x2A4E22, 0x1f3919], 
	['thoughtful', 'Thoughtful', 0xFF6BF0, 0xff30ea], 
	['enlightened', 'Enlightened', 0xA67910, 0x72530b]];

// const chelperClass = java('top.theillusivec4.curios.api.CuriosApi');
// const chelper = chelperClass.getCuriosHelper();
// const param1 = java("net.minecraft.entity.LivingEntity");
// const param2 = java("net.minecraft.item.Item");
// const tongitem = ['bountifulbaubles:gloves_digging_diamond', 'bountifulbaubles:shulker_heart'];
// const method1 = chelper.getClass().getDeclaredMethod("findCurios", param1, param2);

// const tab = java("dev.architectury.registry.CreativeTabRegistry").create("amicore:amicore.oreTab2", () => Item.of("amicore:malachite_ore").itemStack);

// const itemGroupClass = java(net.minecraft.item.ItemGroup); 	
// const tab = new itemGroupClass("amicore.oretab") {
	
// 	public ItemStack makeIcon() {
// 		// TODO Auto-generated method stub
// 		return new ItemStack(ModItems.DUMMY_ORE_ITEM.get());
// 	}
// };
// const malumSpiritTypes = java("com.sammy.malum.core.modcontent.MalumSpiritTypes");
// const malumSpiritType = java("com.sammy.malum.core.modcontent.MalumSpiritType");
// const malumSpiritItem = java("com.sammy.malum.common.items.SpiritItem");
// const malumMalumItems = java("com.sammy.malum.core.init.items.MalumItems");
// const javaColor = java("java.awt.Color");
// const kubejsRegistries = java("dev.latvian.kubejs.KubeJSRegistries");
// const RUINOUS_SPIRIT_COLOR = new javaColor(75, 75, 75);

onEvent('item.registry', event => {

	

	// Register new items here
	//coins!
	event.create('amicore:amicoin').displayName('Amicoin').texture("kubejs:item/amicoin").group('amicore.materialtab');
	event.create('amicore:amicoin_starmetal').displayName('Starmetal Amicoin').tooltip('Worth 5 Amicoin').texture("kubejs:item/amicoin_starmetal").group('amicore.materialtab');
	event.create('amicore:amicoin_orachalchum').displayName('Orachalchum Amicoin').tooltip('Worth 10 Amicoin').texture("kubejs:item/amicoin_orachalchum").group('amicore.materialtab');
	event.create('amicore:amicoin_managold').displayName('Managold Amicoin').tooltip('Worth 25 Amicoin').texture("kubejs:item/amicoin_managold").group('amicore.materialtab');
	event.create('amicore:amicoin_damascus').displayName('Damascus Amicoin').tooltip('Worth 100 Amicoin').texture("kubejs:item/amicoin_damascus").group('amicore.materialtab');

	//read tabs
	// let array = java("net.minecraft.item.ItemGroup").field_78032_a;
	// for (let p = 0; p < array.length; p++) {
	// 	console.log(array[p].func_200300_c());

	// }
	

  //===================================================================================================================================


	const glowingoffset = 0x000002

	//recalculate luminosity for glowing colors
	// ColorLuminance(varcolorsstring, 0.3);


	//===================================================================================================================================
	//Ore Items
	for (let i = 0; i < oretypes.length; i++) {
		if (oretypes[i][6] != 3) {
			let flag = false;
			if(oretypes[i][6] == 2) { flag = true; }
			else if (oretypes[i][6] == 4)	{ flag = true; }
			event.create('amicore:' + oretypes[i][0] + '_cluster')
			.displayName(oretypes[i][1] + ' Cluster')
			.texture("kubejs:item/blanks/cluster_custom")
			.group('amicore.oretab')
			.color(0, oretypes[i][4])
			.tooltip("§7Can be processed for " +  oretypes[i][7][0] + ((oretypes[i][7].length > 1) ? (" and/or " +  oretypes[i][7][1] + ".") : "."))
			.tooltip("" + ((flag == true) ? "§9Gemstone Ore" : "§bMetallic Ore"))
			.tooltip((oretypes[i][6] != 2 && oretypes[i][6] != 1 && oretypes[i][6] != 5) ? (oretypes[i][6] == 4 || oretypes[i][6] == 0) ? "§eRequires advanced processing methods." : "§eRequires expert processing methods." : "§2Requires Simple Processing Methods.");
		}


	}

	//type based processing items
	for (let i = 0; i < oretypes.length; i++) {
		if(oretypes[i][6] == 1 || oretypes[i][6] == 5 || oretypes[i][6] == 0) {
			event.create('amicore:' + 'crushed_' + oretypes[i][0]).displayName('Crushed ' + oretypes[i][1]).texture("kubejs:item/blanks/crushed_ore").color(0, oretypes[i][4]).group('amicore.oretab').tooltip("§7Crushed ore made from basic processing methods.").tooltip("§7Can be processed further for " +  oretypes[i][7][0] + ((oretypes[i][7].length > 1) ? (" and/or " +  oretypes[i][7][1] + ".") : "."));
		}
	}

	for (let i = 0; i < oretypes.length; i++) {
		if(oretypes[i][6] == 1 || oretypes[i][6] == 5) {
			event.create('amicore:' + 'raw_' + oretypes[i][0] + '_nugget').displayName('Raw ' + oretypes[i][1] + ' Nugget').texture("kubejs:item/blanks/raw_nugget").color(0, oretypes[i][4]).group('amicore.oretab').tooltip("§7Raw ore nuggets made from basic processing methods.").tooltip("§7Can be melted down for 16mB of " +  oretypes[i][7][0] + " only.");
		}
	}

	for (let i = 0; i < oretypes.length; i++) {
		if(oretypes[i][6] == 2) {
			event.create('amicore:' + 'crushed_' + oretypes[i][0] + '_gravel').displayName('Crushed ' + oretypes[i][1] + ' Gravel').texture("kubejs:item/blanks/crushed_gravel").color(0, oretypes[i][4]).group('amicore.oretab').tooltip("§7Crushed gravel with small extractable gemstones made from basic processing methods.").tooltip("§7Can be washed for " +  oretypes[i][7][0] + " only.");
		}
	}

	for (let i = 0; i < oretypes.length; i++) {
		if(oretypes[i][6] == 1 || oretypes[i][6] == 5 || oretypes[i][6] == 0) {
			event.create('amicore:' + oretypes[i][0] + '_powder').displayName(oretypes[i][1] + ' Powder').texture("kubejs:item/blanks/ore_powder").color(0, oretypes[i][4]).group('amicore.oretab').tooltip("§7Ore powder settled from advanced processing methods.").tooltip("§7Can be further processed for " +  (oretypes[i][7].length > 1 ? oretypes[i][7][0] + " and " + oretypes[i][7][1] + "." : oretypes[i][7][0] + " only."));
		}
	}

	for (let i = 0; i < oretypes.length; i++) {
		if(oretypes[i][6] == 1 || oretypes[i][6] == 5 || oretypes[i][6] == 0) {
			event.create('amicore:' + oretypes[i][0] + '_blast').displayName(oretypes[i][1] + ' Blast').texture("kubejs:item/blanks/ore_blast").color(0, oretypes[i][4]).group('amicore.oretab').tooltip("§7Ore blasts from advanced processing methods.").tooltip("§7Can be further processed for " +  (oretypes[i][7].length > 1 ? oretypes[i][7][0] + " and " + oretypes[i][7][1] + "." : oretypes[i][7][0] + " only."));
		}
	}

	//===================================================================================================================================

	//All metal components
	//Metalworking Variants
	for (let i = 0; i < metalvariants.length; i++) {
		if(metalvariants[i][4]) {
			event.create('amicore:' + metalvariants[i][0] + '_ingot').displayName(metalvariants[i][1] + ' Ingot').texture('kubejs:item/blanks/ingot').color(0, metalvariants[i][2]).group('amicore.metaltab');
		}
	}
	for (let i = 0; i < metalvariants.length; i++) {
		// if (metalvariants[i][5]) {
			event.create('amicore:' + metalvariants[i][0] + '_nugget').displayName(metalvariants[i][1] + ' Nugget').texture('kubejs:item/blanks/nugget').color(0, metalvariants[i][2]).group('amicore.metaltab');
		// }
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_cake').displayName(metalvariants[i][1] + ' Metal Cake').texture('kubejs:item/blanks/metal_cake').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_heated_cake').displayName('Glowing ' + metalvariants[i][1] + ' Metal Cake').texture('kubejs:item/blanks/glowing_metal_cake').color(0, metalvariants[i][3]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_bar_stock').displayName(metalvariants[i][1] + ' Bar Stock').texture('kubejs:item/blanks/bar_stock').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_heated_bar_stock').displayName('Glowing ' + metalvariants[i][1] + ' Bar Stock').texture('kubejs:item/blanks/glowing_bar_stock').color(0, metalvariants[i][3]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_large_sheet').displayName('Large ' + metalvariants[i][1] + ' Sheet').texture('kubejs:item/blanks/large_sheet').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_heated_large_sheet').displayName('Glowing Large ' + metalvariants[i][1] + ' Sheet').texture('kubejs:item/blanks/glowing_large_sheet').color(0, metalvariants[i][3]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_gear').displayName(metalvariants[i][1] + ' Gear').texture('kubejs:item/blanks/gear').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_heated_ingot').displayName('Glowing ' + metalvariants[i][1] + ' Ingot').texture('kubejs:item/blanks/glowing_ingot').color(0, metalvariants[i][3]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_bolt').displayName(metalvariants[i][1] + ' Bolt').texture('kubejs:item/blanks/bolt').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_round_sheet').displayName('Rounded ' + metalvariants[i][1] + ' Sheet').texture('kubejs:item/blanks/rounded_sheet').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_coil').displayName(metalvariants[i][1] + ' Coil').texture('kubejs:item/blanks/coil').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_plate').displayName(metalvariants[i][1] + ' Plate').texture('kubejs:item/blanks/plate').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_rod').displayName(metalvariants[i][1] + ' Rod').texture('kubejs:item/blanks/rod').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_wire').displayName(metalvariants[i][1] + ' Wire').texture('kubejs:item/blanks/wire').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_dust').displayName(metalvariants[i][1] + ' Dust').texture('kubejs:item/blanks/dust').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_tiny_dust').displayName('Tiny Pile of ' + metalvariants[i][1] + ' Dust').texture('kubejs:item/blanks/tiny_dust').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}
	for (let i = 0; i < metalvariants.length; i++) {
		event.create('amicore:' + metalvariants[i][0] + '_mech_component').displayName(metalvariants[i][1] + ' Mechanical Component').texture('kubejs:item/blanks/mech_component').color(0, metalvariants[i][2]).group('amicore.metaltab');
	}

	event.create('amicore:sulfur_crystal').displayName('Sulfur Crystal').texture("kubejs:item/sulfur_crystal").group('amicore.oretab')
	event.create('amicore:apatite_gem').displayName('Apatite').texture("kubejs:item/apatite_gem").group('amicore.oretab')

	//Introduced crafting parts
	//================================================================================================================================

	event.create('amicore:chicken_cheese').displayName('Chicken Cheese').texture("kubejs:item/chicken_cheese").group('amicore.biotab').food(food => {
				food
					.hunger(4)
					.saturation(1)
	});

	//tools
	event.create('amicore:metal_tongs').displayName('Metal Tongs').texture("kubejs:item/metal_tongs").maxDamage(500).maxStackSize(1).unstackable().group('amicore.toolstab');


	//random crafting components
	event.create('amicore:diamond_plate').displayName('Diamond Plate').texture("kubejs:item/diamond_plate").group('amicore.materialtab')
	event.create('amicore:crying_obsidian_plate').displayName('Crying Obsidian Plate').texture("kubejs:item/crying_obsidian_plate").group('amicore.materialtab')
	event.create('amicore:dirt_plate').displayName('Dirt Plate').texture("kubejs:item/dirt_plate").group('amicore.materialtab')
	// event.create('programmer_socks', 'boots').tier('leather').displayName('Programmer Socks').maxDamage(500)


	//custom casts
	event.create('amicore:bar_stock_cast').displayName('Bar Stock Cast').texture("kubejs:item/bar_stock_cast").group('amicore.toolstab')
	event.create('amicore:bar_stock_sand_cast').displayName('Bar Stock Cast').texture("kubejs:item/bar_stock_sand_cast").group('amicore.toolstab')
	event.create('amicore:bar_stock_red_sand_cast').displayName('Bar Stock Cast').texture("kubejs:item/bar_stock_red_sand_cast").group('amicore.toolstab')


  	//steel processing items
	event.create('amicore:oxygenated_pig_iron_dust').displayName('Oxidized Pig Iron Grit').texture("kubejs:item/oxygenated_pig_iron_dust").group('amicore.materialtab')
	event.create('amicore:lime').displayName('Lime').texture("kubejs:item/lime").group('amicore.materialtab')
	event.create('amicore:carbon_cake').displayName('Carbon Cake').texture("kubejs:item/carbon_cake").group('amicore.materialtab').food(food => {
        food
          .hunger(4)
          .saturation(0)
          .effect('minecraft:hunger', 200, 0, 1)
    });
	event.create('amicore:carbon_dust').displayName('Carbon Dust').texture("kubejs:item/carbon_dust").group('amicore.materialtab')
	event.create('amicore:iron_ore_sinter').displayName('Iron Ore Sinter').texture("kubejs:item/iron_ore_sinter").group('amicore.materialtab')
	// event.create('crude_steel_component').displayName('Crude Steel Mechanical Component')

	//Scrap Items
	event.create('amicore:steel_scrap').displayName('Steel Scrap').texture("kubejs:item/steel_scrap").group('amicore.materialtab');
	event.create('amicore:magical_scrap').displayName('Magical Scrap').texture("kubejs:item/magical_scrap").group('amicore.materialtab');

	//tiering items
	event.create('amicore:transmissive_gearbox').displayName('Tranmissive Gearbox').texture("kubejs:item/transmissive_gearbox").group('amicore.intermediatestab');
	event.create('amicore:v8_engine').displayName('V8 Engine').texture("kubejs:item/v8_engine").group('amicore.intermediatestab');
	event.create('amicore:mv_circuit').displayName('MV Circuit').texture("kubejs:item/mv_circuit").group('amicore.intermediatestab');
	event.create('amicore:servo_gearbox').displayName('Servo Gearbox').texture("kubejs:item/servo_gearbox").group('amicore.intermediatestab');
	event.create('amicore:electric_motor').displayName('Electric Motor').texture("kubejs:item/electric_motor").group('amicore.intermediatestab');
	event.create('amicore:hv_circuit').displayName('HV Circuit').texture("kubejs:item/hv_circuit").group('amicore.intermediatestab');
	event.create('amicore:high_voltage_gearbox').displayName('High Voltage Gearbox').texture("kubejs:item/high_voltage_gearbox").group('amicore.intermediatestab');
	event.create('amicore:large_electric_motor').displayName('Large Electric Motor').texture("kubejs:item/large_electric_motor").group('amicore.intermediatestab');
	event.create('amicore:mana_circuit').displayName('Mana-Etched Circuit').texture("kubejs:item/mana_circuit").group('amicore.intermediatestab');
	event.create('amicore:chrome_circuit').displayName('Chrome Chipset').texture("kubejs:item/chrome_circuit").group('amicore.intermediatestab');
	event.create('amicore:iridium_circuit').displayName('Iridium Chipset').texture("kubejs:item/iridium_circuit").group('amicore.intermediatestab');

	//wooden age items
	event.create('amicore:wooden_bolt').displayName('Wooden Bolt').texture('kubejs:item/blanks/bolt').color(0, 0xAE8A51).group('amicore.materialtab');
	event.create('amicore:anvil_repair').displayName('Anvil Repair Kit').maxDamage(6).maxStackSize(1).unstackable().texture("kubejs:item/anvil_repair").group('amicore.toolstab');
	event.create('amicore:tiny_charcoal').displayName('Tiny Charcoal').burnTime(200).texture("kubejs:item/tiny_charcoal").group('amicore.materialtab');

	//Science Items
	event.create('amicore:molten_science_juice_bottle').displayName('Bottled Molten Science Juice').texture("kubejs:item/molten_science_juice_bottle").group('amicore.fluidtab');
	event.create('amicore:blazing_science_juice_bottle').displayName('Bottled Blazing Science Juice').texture("kubejs:item/blazing_science_juice_bottle").group('amicore.fluidtab');
	event.create('amicore:chemical_science_juice_bottle').displayName('Bottled Chemical Science Juice').texture("kubejs:item/chemical_science_juice_bottle").group('amicore.fluidtab');
	event.create('amicore:astral_science_juice_bottle').displayName('Bottled Stellar Science Juice').texture("kubejs:item/astral_science_juice_bottle").group('amicore.fluidtab');
	event.create('amicore:coalesced_science_juice_bottle').displayName('Bottled Coalesced Science Juice').texture("kubejs:item/coalesced_science_juice_bottle").group('amicore.fluidtab');
	event.create('amicore:steamy_science_juice_bottle').displayName('Bottled Steamy Science Juice').texture("kubejs:item/steamy_science_juice_bottle").group('amicore.fluidtab');
	event.create('amicore:spatial_science_juice_bottle').displayName('Bottled Spatial Science Juice').texture("kubejs:item/spatial_science_juice_bottle").group('amicore.fluidtab');
	event.create('amicore:manaflux_science_juice_bottle').displayName('Bottled Manaflux Science Juice').texture("kubejs:item/manaflux_science_juice_bottle").group('amicore.fluidtab');
	event.create('amicore:klein_bottle').displayName('Klein Bottle').texture("kubejs:item/klein_bottle").group('amicore.fluidtab');

	//lava age items
	event.create('amicore:simple_gearbox').displayName('Simple Gearbox').texture("kubejs:item/simple_gearbox").group('amicore.intermediatestab');
	event.create('amicore:simple_engine').displayName('Simple Engine').texture("kubejs:item/simple_engine").group('amicore.intermediatestab');
	event.create('amicore:soul_soil_clay').displayName('Soul Soil Clay').texture("kubejs:item/soul_soil_clay").group('amicore.materialtab'); //make in kiln
	event.create('amicore:soul_soil_brick').displayName('Soul Soil Brick').texture("kubejs:item/soul_soil_brick").group('amicore.materialtab'); //make in kiln
	event.create('amicore:assembled_smeltery_controller').displayName('Assembled Smeltery Controller').parentModel("kubejs:item/assembled_smeltery_controller").group('amicore.intermediatestab'); //press to finish
	event.create('amicore:pliable_hose').displayName('Pliable Hose').texture("kubejs:item/pliable_hose").group('amicore.materialtab'); //make in crafting
	event.create('amicore:ender_core').displayName('Ender Core').texture("kubejs:item/ender_core").group('amicore.materialtab'); //make in crafting


	//blaze age items
	event.create('amicore:bottle_press').displayName('Bottle Press').parentModel("kubejs:item/bottle_press").maxDamage(128000).maxStackSize(1).unstackable().group('amicore.toolstab');
	event.create('amicore:bottle_mixer').displayName('Bottle Mixer').parentModel("kubejs:item/bottle_mixer").maxDamage(128000).maxStackSize(1).unstackable().group('amicore.toolstab');
	event.create('amicore:bottle_heater').displayName('Bottle Heater').parentModel("kubejs:item/bottle_heater").maxDamage(128000).maxStackSize(1).unstackable().group('amicore.toolstab');
	event.create('amicore:held_solderer').displayName('Held Solderer').parentModel("kubejs:item/held_solderer").maxDamage(128000).maxStackSize(1).unstackable().group('amicore.toolstab');
	event.create('amicore:solder_spool').displayName('Solder Spool').texture("kubejs:item/solder_spool").maxDamage(16).maxStackSize(1).unstackable().group('amicore.materialtab');
	event.create('amicore:scrap_picker').displayName('Scrap Picker').texture("kubejs:item/scrap_picker").maxDamage(256).maxStackSize(1).unstackable().group('amicore.toolstab');
	event.create('amicore:empty_wire_spool').displayName('Empty Wire Spool').texture("kubejs:item/empty_wire_spool").group('amicore.materialtab');
	event.create('amicore:tempered_bottle').displayName('Tempered Bottle').texture("kubejs:item/blanks/tempered_bottle").group('amicore.fluidtab');
	event.create('amicore:sand_bottle_mold').displayName('Sand Bottle Mold').parentModel("kubejs:item/sand_bottle_mold").group('amicore.intermediatestab');
	event.create('amicore:sand_bottle_mold_with_molten_glass').displayName('Sand Bottle Mold with Molten Glass').parentModel("kubejs:item/sand_bottle_mold_with_molten_glass").group('amicore.intermediatestab');
	event.create('amicore:chromatic_dust_bottle').displayName('Tempered Bottle of Chromatic Dust').texture("kubejs:item/tempered_bottle_chromatic_dust").group('amicore.fluidtab');
	event.create('amicore:chromatic_compound_bottle').displayName('Tempered Bottle of Chromatic Compound').texture("kubejs:item/tempered_bottle_chromatic_compound").group('amicore.fluidtab');
	event.create('amicore:sulfur_dioxide_bottle').displayName('Tempered Bottle of Sulfur Dioxide').texture("kubejs:item/tempered_bottle_sulfur_dioxide").group('amicore.fluidtab');
	event.create('amicore:sulfuric_acid_bottle').displayName('Tempered Bottle of Sulfuric Acid').texture("kubejs:item/tempered_bottle_sulfuric_acid").group('amicore.fluidtab');
	event.create('amicore:soulfuric_acid_bottle').displayName('Tempered Bottle of Soulfuric Acid').texture("kubejs:item/tempered_bottle_soulfuric_acid").group('amicore.fluidtab');
	event.create('amicore:spirit_distillation_bottle').displayName('Tempered Bottle of Spirit Distillation').texture("kubejs:item/tempered_bottle_spirit_distillation").group('amicore.fluidtab');
	event.create('amicore:tiny_sulfur_pile').displayName('Tiny Pile of Sulfur Dust').texture("kubejs:item/tiny_sulfur_pile").texture('kubejs:item/blanks/tiny_dust').color(0, 0xDEE821).group('amicore.petrotab');
	event.create('amicore:dirty_sulfur').displayName('Dirty Sulfur').texture("kubejs:item/dirty_sulfur").group('amicore.petrotab');
	event.create('amicore:limey_weeping_paste').displayName('Limey Weeping Paste').texture("kubejs:item/limey_weeping_paste").group('amicore.biotab');
	event.create('amicore:multicylinder_phase1').displayName('Partially Assembled Multi Cylinder Engine').texture("kubejs:item/multicylinder_phase1").tooltip("§7Phase 1 Completed").group('amicore.intermediatestab');
	event.create('amicore:multicylinder_phase1a').displayName('Partially Assembled Multi Cylinder Engine').texture("kubejs:item/multicylinder_phase1").tooltip("§7Phase 1 In Progress").group(null);
	event.create('amicore:multicylinder_phase2').displayName('Partially Assembled Multi Cylinder Engine').texture("kubejs:item/multicylinder_phase2").tooltip("§7Phase 2 Completed").group('amicore.intermediatestab');
	event.create('amicore:multicylinder_phase2a').displayName('Partially Assembled Multi Cylinder Engine').texture("kubejs:item/multicylinder_phase2").tooltip("§7Phase 2 In Progress").group(null);
	event.create('amicore:multicylinder_phase3a').displayName('Partially Assembled Multi Cylinder Engine').texture("kubejs:item/multicylinder_phase3").tooltip("§7Phase 3 In Progress").group(null);
	event.create('amicore:multicyl_engine').displayName('Multi Cylinder Engine').texture("kubejs:item/multicyl_engine").group('amicore.intermediatestab');
	event.create('amicore:high_torque_gearbox').displayName('High Torque Gearbox').texture("kubejs:item/high_torque_gearbox").group('amicore.intermediatestab');
	event.create('amicore:simple_resistor').displayName('Simple Resistor').texture("kubejs:item/simple_resistor").group('amicore.intermediatestab');
	event.create('amicore:partial_lv_circuit').displayName('Partially Assembled LV Circuit').texture("kubejs:item/partial_lv_circuit").tooltip("§7Partially complete").group(null);
	event.create('amicore:lv_circuit').displayName('LV Circuit').texture("kubejs:item/lv_circuit").group('amicore.intermediatestab');
	event.create('amicore:dark_clay').displayName('Dark Clay').texture("kubejs:item/dark_clay").group('amicore.materialtab');
	event.create('amicore:coke_brick_item').displayName('Coke Brick').texture("kubejs:item/coke_brick_item").group('amicore.materialtab');
	event.create('amicore:reddened_clay').displayName('Reddened Clay').texture("kubejs:item/reddened_clay").group('amicore.materialtab');
	event.create('amicore:blast_brick_item').displayName('Blast Brick').texture("kubejs:item/blast_brick_item").group('amicore.materialtab');
	event.create('amicore:sandy_clay').displayName('Sandy Clay').texture("kubejs:item/sandy_clay").group('amicore.materialtab');
	event.create('amicore:kiln_brick_item').displayName('Kiln Brick').texture("kubejs:item/kiln_brick_item").group('amicore.materialtab');
	event.create('amicore:warped_paste').displayName('Twisting Paste').texture("kubejs:item/warped_paste").group('amicore.biotab');
	event.create('amicore:warped_coke').displayName('Warped Coke').burnTime(800).texture("kubejs:item/warped_coke").group('amicore.biotab');
	event.create('amicore:sugary_paste').displayName('Sugary Paste').texture("kubejs:item/sugary_paste").group('amicore.biotab');
	event.create('amicore:sugary_coke').displayName('Sugary Coke').burnTime(400).texture("kubejs:item/sugary_coke").group('amicore.biotab');
	event.create('amicore:fungal_paste').displayName('Fungal Paste').texture("kubejs:item/fungal_paste").group('amicore.biotab');
	event.create('amicore:fungal_coke').displayName('Fungal Coke').burnTime(800).texture("kubejs:item/fungal_coke").group('amicore.biotab');
	event.create('amicore:assembled_foundry_controller').displayName('Assembled Foundry Controller').parentModel("kubejs:item/assembled_foundry_controller").group('amicore.intermediatestab'); //cast with obsiidian to finish
	event.create('amicore:simple_resistor').displayName('Simple Resistor').texture("kubejs:item/simple_resistor").group('amicore.intermediatestab');
	event.create('amicore:simple_antenna').displayName('Simple Antenna').texture("kubejs:item/simple_antenna").group('amicore.materialtab');
	event.create('amicore:antenna_cluster').displayName('Antenna Cluster').texture("kubejs:item/antenna_cluster").group('amicore.materialtab');

	//hydroxide fuel age
	event.create('amicore:rubber_chunk').displayName('Rubber Chunk').texture("kubejs:item/rubber_chunk").group('amicore.biotab');
	event.create('amicore:raw_rubber').displayName('Raw Rubber').texture("kubejs:item/raw_rubber").group('amicore.biotab');
	event.create('amicore:ground_rubber').displayName('Ground Rubber').texture("kubejs:item/ground_rubber").group('amicore.biotab');
	event.create('amicore:rubber_sheet').displayName('Rubber Sheet').texture("kubejs:item/rubber_sheet").group('amicore.biotab');
	event.create('amicore:fish_meal').displayName('Fish Meal').texture("kubejs:item/fish_meal").group('amicore.biotab');
	event.create('amicore:olive_meal').displayName('Olive Meal').texture("kubejs:item/olive_meal").group('amicore.biotab');
	event.create('amicore:avocado_meal').displayName('Avocado Meal').texture("kubejs:item/avocado_meal").group('amicore.biotab');
	event.create('amicore:peanut_meal').displayName('Peanut Meal').texture("kubejs:item/peanut_meal").group('amicore.biotab');
	event.create('amicore:soybean_meal').displayName('Soybean Meal').texture("kubejs:item/soybean_meal").group('amicore.biotab');
	event.create('amicore:sesame_seed_meal').displayName('Sesame Seed Meal').texture("kubejs:item/sesame_seed_meal").group('amicore.biotab');
	event.create('amicore:pinenut_meal').displayName('Peanut Meal').texture("kubejs:item/pinenut_meal").group('amicore.biotab');
	event.create('amicore:coconut_meal').displayName('Coconut Meal').texture("kubejs:item/coconut_meal").group('amicore.biotab');
	event.create('amicore:biowaste').displayName('Biowaste').texture("kubejs:item/biowaste").group('amicore.biotab');
	event.create('amicore:algae').displayName('Algae').texture("kubejs:item/algae").group('amicore.biotab');
	event.create('amicore:dirty_sulfur_filter').displayName('Used Filter with Sulfuric Particles').parentModel("kubejs:item/dirty_sulfur_filter").group('amicore.petrotab');
	event.create('amicore:dirty_mineral_filter').displayName('Used Filter with Mineralized Particles').parentModel("kubejs:item/dirty_mineral_filter").group('amicore.petrotab');
	event.create('amicore:dirty_nitric_filter').displayName('Used Filter with Nitric Particles').parentModel("kubejs:item/dirty_nitric_filter").group('amicore.petrotab');
	event.create('amicore:mineral_powder').displayName('Mineral Powder').texture("kubejs:item/mineral_powder").group('amicore.petrotab');

	//hydroxide malum
	for(let j = 0; j < basicSpirits.length; j++) {
		event.create('amicore:' + basicSpirits[j][0] + '_distillation_bottle').displayName('Tempered Bottle of ' + basicSpirits[j][1] + ' Spirit Distillation').parentModel("kubejs:item/filled_tempered_bottle").color(0, basicSpirits[j][2]).group('amicore.fluidtab');
		event.create('amicore:' + basicSpirits[j][0] + '_solution_bottle').displayName('Tempered Bottle of ' + basicSpirits[j][1] + ' Spirit Solution').parentModel("kubejs:item/filled_tempered_bottle").color(0, basicSpirits[j][3]).group('amicore.fluidtab');
		event.create('amicore:' + basicSpirits[j][0] + '_brew_bottle').displayName('Tempered Bottle of ' + basicSpirits[j][1] + ' Spirit Brew').parentModel("kubejs:item/filled_tempered_bottle").color(0, basicSpirits[j][3]).group('amicore.fluidtab');

	}
	for(let j = 0; j < simpleSpirits.length; j++) {
		event.create('amicore:' + simpleSpirits[j][0] + '_distillation_bottle').displayName('Tempered Bottle of ' + simpleSpirits[j][1] + ' Spirit Distillation').parentModel("kubejs:item/filled_tempered_bottle").color(0, simpleSpirits[j][2]).group('amicore.fluidtab');
		event.create('amicore:' + simpleSpirits[j][0] + '_solution_bottle').displayName('Tempered Bottle of ' + simpleSpirits[j][1] + ' Spirit Solution').parentModel("kubejs:item/filled_tempered_bottle").color(0, simpleSpirits[j][3]).group('amicore.fluidtab');
	}
	for(let j = 0; j < intermediateSpirits.length; j++) {
		event.create('amicore:' + intermediateSpirits[j][0] + '_distillation_bottle').displayName('Tempered Bottle of ' + intermediateSpirits[j][1] + ' Spirit Distillation').parentModel("kubejs:item/filled_tempered_bottle").color(0, intermediateSpirits[j][2]).group('amicore.fluidtab');
		event.create('amicore:' + intermediateSpirits[j][0] + '_solution_bottle').displayName('Tempered Bottle of ' + intermediateSpirits[j][1] + ' Spirit Solution').parentModel("kubejs:item/filled_tempered_bottle").color(0, intermediateSpirits[j][3]).group('amicore.fluidtab');
	}
	for(let j = 0; j < advancedSpirits.length; j++) {
		event.create('amicore:' + advancedSpirits[j][0] + '_distillation_bottle').displayName('Tempered Bottle of ' + advancedSpirits[j][1] + ' Spirit Distillation').parentModel("kubejs:item/filled_tempered_bottle").color(0, advancedSpirits[j][2]).group('amicore.fluidtab');
		event.create('amicore:' + advancedSpirits[j][0] + '_solution_bottle').displayName('Tempered Bottle of ' + advancedSpirits[j][1] + ' Spirit Solution').parentModel("kubejs:item/filled_tempered_bottle").color(0, advancedSpirits[j][3]).group('amicore.fluidtab');
	}
	for(let j = 0; j < expertSpirits.length; j++) {
		event.create('amicore:' + expertSpirits[j][0] + '_distillation_bottle').displayName('Tempered Bottle of ' + expertSpirits[j][1] + ' Spirit Distillation').parentModel("kubejs:item/filled_tempered_bottle").color(0, expertSpirits[j][2]).group('amicore.fluidtab');
		event.create('amicore:' + expertSpirits[j][0] + '_solution_bottle').displayName('Tempered Bottle of ' + expertSpirits[j][1] + ' Spirit Solution').parentModel("kubejs:item/filled_tempered_bottle").color(0, expertSpirits[j][3]).group('amicore.fluidtab');
	}


})


onEvent('block.registry', event => {
	//Ores

	for (let i = 0; i < oretypes.length; i++) {
		let str = oretypes[i][0];
		let model = "kubejs:block/ore_custom";
		if (str.substring(0,6).equals("nether")) {
			model = "kubejs:block/ore_nether_custom";
		} else if (str.substring(0,5).equals("ender")) {
			model = "kubejs:block/ore_ender_custom";
		}

		event.create('amicore:' + str + "_ore")
		.displayName(oretypes[i][1])
		.material('stone')
		.hardness(oretypes[i][2])
		.resistance(oretypes[i][2])
		.harvestTool('pickaxe', oretypes[i][3])
		.requiresTool(true)
		.tagBlockAndItem('forge:ores')
		.model(model)
		.color(0, oretypes[i][4])
		.renderType("cutout")
		.item(item => { item.group('amicore.oretab')  });


	}

	for (let i = 0; i < oretypes.length; i++) {
		let str = oretypes[i][0];
		let model = "kubejs:block/ore_sample_custom";
		if (str.substring(0,6).equals("nether")) {
			model = "kubejs:block/ore_nether_sample_custom";
		} else if (str.substring(0,5).equals("ender")) {
			model = "kubejs:block/ore_ender_sample_custom";
		}

		event.create('amicore:' + str + "_ore_sample")
		.displayName(oretypes[i][1] + " Sample")
		.material('stone')
		.hardness(0)
		.resistance(0)
		.tagBlockAndItem('forge:samples')
		.model(model)
		.texture('ore', 'kubejs:block/ore_custom')
		.color(0, oretypes[i][4])
		.opaque(false)
		.fullBlock(false)
		.notSolid()
		.box(0.2, 0.0, 0.2, 0.8, 0.2, 0.8, false)
		.renderType("cutout")
		.item(item => { item.group('amicore.oretab')  });
	}

	//blocks for the blockless
	for (let i = 0; i < metalvariants.length; i++) {
		// if (metalvariants[i][7]) {
			event.create('amicore:' + metalvariants[i][0] + '_block').material('iron').hardness(5).displayName('Block of ' + metalvariants[i][1]).model('kubejs:block/metal_block_custom').color(0, metalvariants[i][2]).item(item => { item.group('amicore.metaltab')  });
		// }
	}

	// Register new blocks here
	event.create('amicore:limestone_dust').material('sand').hardness(0.5).displayName('Limestone dust').texture("kubejs:block/limestone_dust").item(item => { item.group('amicore.materialtab')  });
	event.create('amicore:crude_steel_sheetmetal').material('iron').hardness(5).displayName('Crude Steel Sheetmetal').texture("kubejs:block/crude_steel_sheetmetal").item(item => { item.group('amicore.metaltab')  });
	// event.create('crude_steel_block').material('iron').hardness(5).displayName('Block of Crude Steel')

	event.create('amicore:sodalite').material('stone').hardness(2).displayName('Sodalite').texture("kubejs:block/sodalite").item(item => { item.group('amicore.oretab')  });
	event.create('amicore:regolith').material('stone').hardness(2).displayName('Regolith').texture("kubejs:block/regolith").item(item => { item.group('amicore.oretab')  });
	event.create('amicore:talcum').material('stone').hardness(0.5).displayName('Talcum').texture("kubejs:block/talcum").item(item => { item.group('amicore.oretab')  });
	event.create('amicore:talc_dust').material('sand').hardness(0.5).displayName('Talcum Dust').texture("kubejs:block/talc_dust").item(item => { item.group('amicore.oretab')  });
	event.create('amicore:tank_wall').material('wood').hardness(2).displayName('Tank Wall').texture("kubejs:block/tank_wall").harvestTool('axe', 0).item(item => { item.group('amicore.machinetab')  });
	event.create('amicore:tank_filter').material('wood').hardness(2).displayName('Tank Filter').texture("kubejs:block/tank_filter").harvestTool('axe', 0).item(item => { item.group('amicore.machinetab')  });
	
	event.create('amicore:rich_crimson_nylium').material('stone').hardness(0.4).displayName('Rich Crimson Nylium').model("kubejs:block/rich_crimson_nylium").harvestTool('pickaxe', 0).item(item => { item.group('amicore.biotab')  });
	event.create('amicore:rich_warped_nylium').material('stone').hardness(0.4).displayName('Rich Warped Nylium').model("kubejs:block/rich_warped_nylium").harvestTool('pickaxe', 0).item(item => { item.group('amicore.biotab')  });
	event.create('amicore:rich_sythian_nylium').material('stone').hardness(0.4).displayName('Rich Sythian Nylium').model("kubejs:block/rich_sythian_nylium").harvestTool('pickaxe', 0).item(item => { item.group('amicore.biotab')  });
	event.create('amicore:rich_embur_nylium').material('stone').hardness(0.4).displayName('Rich Embur Nylium').model("kubejs:block/rich_embur_nylium").harvestTool('pickaxe', 0).item(item => { item.group('amicore.biotab')  });
	
	event.create('amicore:rich_earth_slime_dirt').material('dirt').hardness(0.4).displayName('Rich Earthy Slime Dirt').model("kubejs:block/rich_earth_slime_dirt").harvestTool('shovel', 0).item(item => { item.group('amicore.biotab')  });
	event.create('amicore:rich_sky_slime_dirt').material('dirt').hardness(0.4).displayName('Rich Sky Slime Dirt').model("kubejs:block/rich_sky_slime_dirt").harvestTool('shovel', 0).item(item => { item.group('amicore.biotab')  });
	event.create('amicore:rich_ender_slime_dirt').material('dirt').hardness(0.4).displayName('Rich Ender Slime Dirt').model("kubejs:block/rich_ender_slime_dirt").harvestTool('shovel', 0).item(item => { item.group('amicore.biotab')  });
	
})



onEvent('fluid.registry', event => {

	for (let i = 0; i < metalvariants.length; i++) {
		// if (metalvariants[i][6]) {
			event.create('amicore:molten_' + metalvariants[i][0]).textureThick(metalvariants[i][2]).bucketColor(metalvariants[i][2]).displayName('Molten ' + metalvariants[i][1]);
		// }
	}

	for (let i = 0; i < oretypes.length; i++) {
		if (oretypes[i][6] == 1 || oretypes[i][6] == 5 || oretypes[i][6] == 0) {
			event.create('amicore:' + oretypes[i][0] + '_slurry').textureThin(oretypes[i][4]).bucketColor(oretypes[i][4]).displayName(oretypes[i][1] + ' Slurry')			
			event.create('amicore:' + oretypes[i][0] + '_fluxed_slurry').textureThin(oretypes[i][4]).bucketColor(oretypes[i][4]).displayName(oretypes[i][1] + ' Slurry with Flux')		
		}
	}

	// .block')

	//fuels
	event.create('amicore:hydroxide_fuel').textureThin(0xE27778).bucketColor(0xE27778).displayName('Hydroxide Fuel');
	event.create('amicore:electrolytic_water').textureThin(0xCAC3B8).bucketColor(0xCAC3B8).displayName('Electrolytic Water');
	event.create('amicore:hydrogen_gas').textureThin(0xF5FDFE).bucketColor(0xF5FDFE).displayName('Hydrogen Gas');
	event.create('amicore:oxygen_gas').textureThin(0xEA1523).bucketColor(0xEA1523).displayName('Oxygen Gas');

		//other fuilds
	event.create('amicore:molten_redstone').textureThick(0xE27778).bucketColor(0xE27778).displayName('Molten Redstone');
	event.create('amicore:molten_blazing_quartz').textureThick(0xFFC55F).bucketColor(0xFFC55F).displayName('Molten Blazing Quartz');
	event.create('amicore:molten_pendorite_scrap').textureThick(0x590BC3).bucketColor(0x590BC3).displayName('Molten Pendorite Scrap');
	event.create('amicore:slimeslag_rich').textureThick(0x22DD38).bucketColor(0x22DD38).displayName('Rich Slimeslag');
	event.create('amicore:slimeslag_poor').textureThick(0x85EC91).bucketColor(0x85EC91).displayName('Poor Slimeslag');
	event.create('amicore:weak_alc_wash').textureThin(0x5865A7).bucketColor(0x5865A7).displayName('Weak Alchemical Wash');
	event.create('amicore:strong_alc_wash').textureThin(0xD32C54).bucketColor(0xD32C54).displayName('Strong Alchemical Wash');

		//smeltery management
	event.create('amicore:steam').textureThin(0xF7FDFE).bucketColor(0xF7FDFE).displayName('Steam');
	event.create('amicore:burnoff_slag').textureThick(0x171108).bucketColor(0x171108).displayName('Burnoff Slag');

		//Science fuids
	event.create('amicore:molten_science_juice').textureThin(0x5865A7).bucketColor(0x5865A7).displayName('Molten Science Juice');
	event.create('amicore:blazing_science_juice').textureThin(0x5865A7).bucketColor(0x5865A7).displayName('Blazing Science Juice');
	event.create('amicore:chemical_science_juice').textureThin(0x5865A7).bucketColor(0x5865A7).displayName('Chemical Science Juice');
	event.create('amicore:stellar_science_juice').textureThin(0x5865A7).bucketColor(0x5865A7).displayName('Stellar Science Juice');
	event.create('amicore:coalesced_science_juice').textureThin(0x5865A7).bucketColor(0x5865A7).displayName('Coalesced Science Juice');
	event.create('amicore:carbonic_science_juice').textureThin(0x5865A7).bucketColor(0x5865A7).displayName('Carbonic Science Juice');
	event.create('amicore:spatial_science_juice').textureThin(0x5865A7).bucketColor(0x5865A7).displayName('Spatial Science Juice');
	event.create('amicore:manaflux_science_juice').textureThin(0x5865A7).bucketColor(0x5865A7).displayName('Manaflux Science Juice');

	//blaze age fluids
	event.create('amicore:red_catalyst').textureThin(0xF88D8C).bucketColor(0xF88D8C).displayName('Red Metal Catalyst Solution');
	event.create('amicore:green_catalyst').textureThin(0xC3F9AF).bucketColor(0xC3F9AF).displayName('Green Metal Catalyst Solution');
	event.create('amicore:blue_catalyst').textureThin(0x528FB2).bucketColor(0x528FB2).displayName('Blue Metal Catalyst Solution');
	event.create('amicore:yellow_catalyst').textureThin(0xF5FE8C).bucketColor(0xF5FE8C).displayName('Yellow Metal Catalyst Solution');
	event.create('amicore:sulfuric_acid').textureThin(0xF5E749).bucketColor(0xF5E749).displayName('Sulfuric Acid');
	event.create('amicore:soulfuric_acid').textureThin(0xB879B2).bucketColor(0xB879B2).displayName('Soulfuric Acid');
	event.create('amicore:compressed_air').textureThin(0xFFFFFF).bucketColor(0xFFFFFF).displayName('Compressed Air');
	event.create('amicore:mineral_water').textureThin(0xA87035).bucketColor(0xA87035).displayName('Mineral Water');
	event.create('amicore:sulfuric_waste_water').textureThin(0xCBDECD).bucketColor(0xCBDECD).displayName('Sulfuric Waste Water');
	event.create('amicore:nitric_waste_water').textureThin(0xDD7F94).bucketColor(0xDD7F94).displayName('Nitric Waste Water');
	event.create('amicore:weeping_paste').textureThin(0xC61E07).bucketColor(0xC61E07).displayName('Weeping Paste')	
	event.create('amicore:ashy_weeping_paste').textureThin(0xB2000A).bucketColor(0xB2000A).displayName('Ashy Weeping Paste')	
	event.create('amicore:simple_spirit_solution').textureThin(0xD453C9).bucketColor(0xD453C9).displayName('Simple Spirit Solution');
	// event.create('amicore:molten_solder').textureThick(0x837D7D).bucketColor(0x837D7D).displayName('Molten Solder').bucketItem(item => { item.group('amicore.metaltab')  });

	//Hydroxide age fluids
	event.create('amicore:fish_water').textureThin(0x97C1F7).bucketColor(0x97C1F7).displayName('Fish Water');
	event.create('amicore:used_fish_water').textureThin(0xBFA571).bucketColor(0xBFA571).displayName('Dirty Fish Water');
	event.create('amicore:fish_oil').textureThin(0xE9BB16).bucketColor(0xE9BB16).displayName('Fish Oil');
	event.create('amicore:plant_oil').textureThin(0xD1DF5C).bucketColor(0xD1DF5C).displayName('Plant Oil');
	event.create('amicore:purified_water').textureThin(0xABECF4).bucketColor(0xABECF4).displayName('Pure Water');
	event.create('amicore:saline').textureThin(0xADD6F6).bucketColor(0xADD6F6).displayName('Saline Water');
	event.create('amicore:refined_plant_oil').textureThin(0xF2E131).bucketColor(0xF2E131).displayName('Refined Plant Oil');
	// event.create('amicore:lubricant').textureThin(0x008F19).bucketColor(0x008F19).displayName('Lubricant');
	event.create('amicore:nutrient_paste').textureThin(0x864D09).bucketColor(0x864D09).displayName('Nutrient Paste');
	event.create('amicore:slag_slurry').textureThick(0x683D03).bucketColor(0x683D03).displayName('Slag Slurry');
	event.create('amicore:slag_sludge').textureThick(0x5A3C1C).bucketColor(0x5A3C1C).displayName('Slag Sludge');

	//hydroxide sub malum distillations




	for(let j = 0; j < basicSpirits.length; j++) {
		event.create('amicore:' + basicSpirits[j][0] + '_spirit_distillation').textureThin(basicSpirits[j][2]).bucketColor(basicSpirits[j][2]).displayName(basicSpirits[j][1] + ' Spirit Distillation');
		event.create('amicore:' + basicSpirits[j][0] + '_spirit_solution').textureThin(basicSpirits[j][3]).bucketColor(basicSpirits[j][3]).displayName(basicSpirits[j][1] + ' Spirit Solution');
		event.create('amicore:' + basicSpirits[j][0] + '_spirit_brew').textureThin(basicSpirits[j][3]).bucketColor(basicSpirits[j][3]).displayName(basicSpirits[j][1] + ' Spirit Brew');
	}

	for(let j = 0; j < simpleSpirits.length; j++) {
		event.create('amicore:' + simpleSpirits[j][0] + '_spirit_distillation').textureThin(simpleSpirits[j][2]).bucketColor(simpleSpirits[j][2]).displayName(simpleSpirits[j][1] + ' Spirit Distillation');
		event.create('amicore:' + simpleSpirits[j][0] + '_spirit_solution').textureThin(simpleSpirits[j][3]).bucketColor(simpleSpirits[j][3]).displayName(simpleSpirits[j][1] + ' Spirit Solution');
	}

	for(let j = 0; j < intermediateSpirits.length; j++) {
		event.create('amicore:' + intermediateSpirits[j][0] + '_spirit_distillation').textureThin(intermediateSpirits[j][2]).bucketColor(intermediateSpirits[j][2]).displayName(intermediateSpirits[j][1] + ' Spirit Distillation');
		event.create('amicore:' + intermediateSpirits[j][0] + '_spirit_solution').textureThin(intermediateSpirits[j][3]).bucketColor(intermediateSpirits[j][3]).displayName(intermediateSpirits[j][1] + ' Spirit Solution');
	}

	for(let j = 0; j < advancedSpirits.length; j++) {
		event.create('amicore:' + advancedSpirits[j][0] + '_spirit_distillation').textureThin(advancedSpirits[j][2]).bucketColor(advancedSpirits[j][2]).displayName(advancedSpirits[j][1] + ' Spirit Distillation');
		event.create('amicore:' + advancedSpirits[j][0] + '_spirit_solution').textureThin(advancedSpirits[j][3]).bucketColor(advancedSpirits[j][3]).displayName(advancedSpirits[j][1] + ' Spirit Solution');
	}

	for(let j = 0; j < expertSpirits.length; j++) {
		event.create('amicore:' + expertSpirits[j][0] + '_spirit_distillation').textureThin(expertSpirits[j][2]).bucketColor(expertSpirits[j][2]).displayName(expertSpirits[j][1] + ' Spirit Distillation');
		event.create('amicore:' + expertSpirits[j][0] + '_spirit_solution').textureThin(expertSpirits[j][3]).bucketColor(expertSpirits[j][3]).displayName(expertSpirits[j][1] + ' Spirit Solution');
	}
	
	

})

//taken from FTBOceanBlock startupscripts/tools.js
const vanillaTools = Ingredient.of(/minecraft:(wooden|stone|iron|golden|diamond)_(sword|shovel|(pick)?axe|hoe)/);

onEvent("item.modification", (event) => {
    event.modify(vanillaTools, (tool) => {
        tool.setMaxDamage(1);

        tool.setTier((tier) => {
            tier.uses = 1;
            tier.speed = 0;
            tier.attackDamageBonus = 0;
            tier.level = 0;
            tier.enchantmentValue = 0;
        });
    });

	event.modify(Ingredient.of('createautomated:picker'), (tool1) => {
        tool1.setMaxDamage(250);
	});

	event.modify(Ingredient.of('tconstruct:blazing_blood_bucket'), (tool1) => {
        tool1.burnTime = 30000;
	});


});

function ColorLuminance(hexsIn, lum) {

	var out = "const varcolorsglowi = ["
	// console.log("146 " + hexIn);
	// convert to decimal and change luminosity
	var j;
	for(j = 0; j < hexsIn.length; j++) {


		var rgb = "", c, i;
		for (i = 0; i < 3; i++) {
			c = parseInt(hexsIn[j].toString().substr(i*2,2), 16);
			c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
			rgb += ("00" + c).substr(c.length);
		}
		out += ("0x" + rgb.toUpperCase() + ",		");
	}
	out += "];"
	console.log(out);
}
