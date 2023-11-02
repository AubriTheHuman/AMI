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
  ["starmetal", "Starmetal", 0x0800C3, 0xFFFFFF, false, true, true, true, "astralsorcery:starmetal_ingot"],
	["rosenquartz", "Rosenquartz", 0xE646B9, 0xFFFFFF, false, true, true, true, "tdelight:rosenquartz_ingot"],
	["gildedfern", "Goldedfern", 0x096A14, 0xFFFFFF, false, true, true, true, "tdelight:gildedfern_ingot"],
	["hamletite", "Hamletite", 0x900821, 0xFFFFFF, false, true, true, true, "tdelight:hamletite_ingot"]
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

const toolMats = [
	['flint', 'Flint', 0x191919, 32],
	['copper', 'Copper', 0xFFA131, 64],
	['invar', 'Invar', 0x8E9A95, 192],
	['nickel', 'Nickel', 0xA2975D, 96],
	['silver', 'Silver', 0x7B9DA4, 96],
	['tin', 'Tin', 0x7C9AB2, 96],
	['iron', 'Iron', 0xD4D4D4, 128],
	['bronze', 'Bronze', 0xD5905C, 128],
	['silicon_brass', 'Silicon Brass', 0xCEBD77, 128],
	['thallasium', 'Thallasium', 0x74C4C9, 128],
	['crude_steel', 'Crude Steel', 0x70848F, 320],
	['steel', 'Steel', 0x949CA1, 384],
	['terminite', 'Terminite', 0x00D392, 256],
	['diamond', 'Diamond', 0x33EBCB, 512],
	['netherite', 'Netherite', 0x756975, 768],
	['aeternium', 'Aeternium', 0x4E8250, 1024],
	['pendorite', 'Pendorite', 0x784B76, 1024],
	['soul_stained_steel', 'Soul Stained Steel', 0x9B5DB7, 1024]
];

const immersive_geo_items = ["immersive_geology:block_item_blackstone_acanthite_ore",
  "immersive_geology:block_item_blackstone_alumina_ore",
  "immersive_geology:block_item_blackstone_anatase_ore",
  "immersive_geology:block_item_blackstone_cassiterite_ore",
  "immersive_geology:block_item_blackstone_chalcocite_ore",
  "immersive_geology:block_item_blackstone_chalcopyrite_ore",
  "immersive_geology:block_item_blackstone_chromite_ore",
  "immersive_geology:block_item_blackstone_cobaltite_ore",
  "immersive_geology:block_item_blackstone_copper_ore",
  "immersive_geology:block_item_blackstone_cryolite_ore",
  "immersive_geology:block_item_blackstone_cuprite_ore",
  "immersive_geology:block_item_blackstone_ferberite_ore",
  "immersive_geology:block_item_blackstone_fluorite_ore",
  "immersive_geology:block_item_blackstone_galena_ore",
  "immersive_geology:block_item_blackstone_gold_ore",
  "immersive_geology:block_item_blackstone_gypsum_ore",
  "immersive_geology:block_item_blackstone_hematite_ore",
  "immersive_geology:block_item_blackstone_hubnerite_ore",
  "immersive_geology:block_item_blackstone_ilmenite_ore",
  "immersive_geology:block_item_blackstone_iron_ore",
  "immersive_geology:block_item_blackstone_monazite_ore",
  "immersive_geology:block_item_blackstone_nickel_ore",
  "immersive_geology:block_item_blackstone_platinum_ore",
  "immersive_geology:block_item_blackstone_pyrite_ore",
  "immersive_geology:block_item_blackstone_pyrolusite_ore",
  "immersive_geology:block_item_blackstone_rocksalt_ore",
  "immersive_geology:block_item_blackstone_saltpeter_ore",
  "immersive_geology:block_item_blackstone_scheelite_ore",
  "immersive_geology:block_item_blackstone_silver_ore",
  "immersive_geology:block_item_blackstone_smithsonite_ore",
  "immersive_geology:block_item_blackstone_sphalerite_ore",
  "immersive_geology:block_item_blackstone_ullmannite_ore",
  "immersive_geology:block_item_blackstone_unobtania_ore",
  "immersive_geology:block_item_blackstone_uraninite_ore",
  "immersive_geology:block_item_blackstone_vanadinite_ore",
  "immersive_geology:block_item_bronze_dust_block",
  "immersive_geology:block_item_bronze_sheetmetal",
  "immersive_geology:block_item_bronze_slab",
  "immersive_geology:block_item_bronze_storage",
  "immersive_geology:block_item_chromium_dust_block",
  "immersive_geology:block_item_chromium_sheetmetal",
  "immersive_geology:block_item_chromium_slab",
  "immersive_geology:block_item_chromium_storage",
  "immersive_geology:block_item_cobalt_dust_block",
  "immersive_geology:block_item_cobalt_sheetmetal",
  "immersive_geology:block_item_cobalt_slab",
  "immersive_geology:block_item_cobalt_storage",
  "immersive_geology:block_item_end_stone_acanthite_ore",
  "immersive_geology:block_item_end_stone_alumina_ore",
  "immersive_geology:block_item_end_stone_anatase_ore",
  "immersive_geology:block_item_end_stone_cassiterite_ore",
  "immersive_geology:block_item_end_stone_chalcocite_ore",
  "immersive_geology:block_item_end_stone_chalcopyrite_ore",
  "immersive_geology:block_item_end_stone_chromite_ore",
  "immersive_geology:block_item_end_stone_cobaltite_ore",
  "immersive_geology:block_item_end_stone_copper_ore",
  "immersive_geology:block_item_end_stone_cryolite_ore",
  "immersive_geology:block_item_end_stone_cuprite_ore",
  "immersive_geology:block_item_end_stone_ferberite_ore",
  "immersive_geology:block_item_end_stone_fluorite_ore",
  "immersive_geology:block_item_end_stone_galena_ore",
  "immersive_geology:block_item_end_stone_gold_ore",
  "immersive_geology:block_item_end_stone_gypsum_ore",
  "immersive_geology:block_item_end_stone_hematite_ore",
  "immersive_geology:block_item_end_stone_hubnerite_ore",
  "immersive_geology:block_item_end_stone_ilmenite_ore",
  "immersive_geology:block_item_end_stone_iron_ore",
  "immersive_geology:block_item_end_stone_monazite_ore",
  "immersive_geology:block_item_end_stone_nickel_ore",
  "immersive_geology:block_item_end_stone_platinum_ore",
  "immersive_geology:block_item_end_stone_pyrite_ore",
  "immersive_geology:block_item_end_stone_pyrolusite_ore",
  "immersive_geology:block_item_end_stone_rocksalt_ore",
  "immersive_geology:block_item_end_stone_saltpeter_ore",
  "immersive_geology:block_item_end_stone_scheelite_ore",
  "immersive_geology:block_item_end_stone_silver_ore",
  "immersive_geology:block_item_end_stone_smithsonite_ore",
  "immersive_geology:block_item_end_stone_sphalerite_ore",
  "immersive_geology:block_item_end_stone_ullmannite_ore",
  "immersive_geology:block_item_end_stone_unobtania_ore",
  "immersive_geology:block_item_end_stone_uraninite_ore",
  "immersive_geology:block_item_end_stone_vanadinite_ore",
  "immersive_geology:block_item_granite_acanthite_ore",
  "immersive_geology:block_item_granite_alumina_ore",
  "immersive_geology:block_item_granite_anatase_ore",
  "immersive_geology:block_item_granite_cassiterite_ore",
  "immersive_geology:block_item_granite_chalcocite_ore",
  "immersive_geology:block_item_granite_chalcopyrite_ore",
  "immersive_geology:block_item_granite_chromite_ore",
  "immersive_geology:block_item_granite_cobaltite_ore",
  "immersive_geology:block_item_granite_copper_ore",
  "immersive_geology:block_item_granite_cryolite_ore",
  "immersive_geology:block_item_granite_cuprite_ore",
  "immersive_geology:block_item_granite_ferberite_ore",
  "immersive_geology:block_item_granite_fluorite_ore",
  "immersive_geology:block_item_granite_galena_ore",
  "immersive_geology:block_item_granite_gold_ore",
  "immersive_geology:block_item_granite_gypsum_ore",
  "immersive_geology:block_item_granite_hematite_ore",
  "immersive_geology:block_item_granite_hubnerite_ore",
  "immersive_geology:block_item_granite_ilmenite_ore",
  "immersive_geology:block_item_granite_iron_ore",
  "immersive_geology:block_item_granite_monazite_ore",
  "immersive_geology:block_item_granite_nickel_ore",
  "immersive_geology:block_item_granite_platinum_ore",
  "immersive_geology:block_item_granite_pyrite_ore",
  "immersive_geology:block_item_granite_pyrolusite_ore",
  "immersive_geology:block_item_granite_rocksalt_ore",
  "immersive_geology:block_item_granite_saltpeter_ore",
  "immersive_geology:block_item_granite_scheelite_ore",
  "immersive_geology:block_item_granite_silver_ore",
  "immersive_geology:block_item_granite_smithsonite_ore",
  "immersive_geology:block_item_granite_sphalerite_ore",
  "immersive_geology:block_item_granite_ullmannite_ore",
  "immersive_geology:block_item_granite_unobtania_ore",
  "immersive_geology:block_item_granite_uraninite_ore",
  "immersive_geology:block_item_granite_vanadinite_ore",
  "immersive_geology:block_item_kaolinite_storage",
  "immersive_geology:block_item_machine_iron_chemicalvat",
  "immersive_geology:block_item_machine_iron_crystallizer",
  "immersive_geology:block_item_machine_iron_gravityseparator",
  "immersive_geology:block_item_machine_iron_hydrojet_cutter",
  "immersive_geology:block_item_machine_iron_rotarykiln",
  "immersive_geology:block_item_machine_stone_bloomery",
  "immersive_geology:block_item_machine_stone_reverberation_furnace",
  "immersive_geology:block_item_manganese_dust_block",
  "immersive_geology:block_item_manganese_sheetmetal",
  "immersive_geology:block_item_manganese_slab",
  "immersive_geology:block_item_manganese_storage",
  "immersive_geology:block_item_neodymium_dust_block",
  "immersive_geology:block_item_neodymium_sheetmetal",
  "immersive_geology:block_item_neodymium_slab",
  "immersive_geology:block_item_neodymium_storage",
  "immersive_geology:block_item_netherrack_acanthite_ore",
  "immersive_geology:block_item_netherrack_alumina_ore",
  "immersive_geology:block_item_netherrack_anatase_ore",
  "immersive_geology:block_item_netherrack_cassiterite_ore",
  "immersive_geology:block_item_netherrack_chalcocite_ore",
  "immersive_geology:block_item_netherrack_chalcopyrite_ore",
  "immersive_geology:block_item_netherrack_chromite_ore",
  "immersive_geology:block_item_netherrack_cobaltite_ore",
  "immersive_geology:block_item_netherrack_copper_ore",
  "immersive_geology:block_item_netherrack_cryolite_ore",
  "immersive_geology:block_item_netherrack_cuprite_ore",
  "immersive_geology:block_item_netherrack_ferberite_ore",
  "immersive_geology:block_item_netherrack_fluorite_ore",
  "immersive_geology:block_item_netherrack_galena_ore",
  "immersive_geology:block_item_netherrack_gold_ore",
  "immersive_geology:block_item_netherrack_gypsum_ore",
  "immersive_geology:block_item_netherrack_hematite_ore",
  "immersive_geology:block_item_netherrack_hubnerite_ore",
  "immersive_geology:block_item_netherrack_ilmenite_ore",
  "immersive_geology:block_item_netherrack_iron_ore",
  "immersive_geology:block_item_netherrack_monazite_ore",
  "immersive_geology:block_item_netherrack_nickel_ore",
  "immersive_geology:block_item_netherrack_platinum_ore",
  "immersive_geology:block_item_netherrack_pyrite_ore",
  "immersive_geology:block_item_netherrack_pyrolusite_ore",
  "immersive_geology:block_item_netherrack_rocksalt_ore",
  "immersive_geology:block_item_netherrack_saltpeter_ore",
  "immersive_geology:block_item_netherrack_scheelite_ore",
  "immersive_geology:block_item_netherrack_silver_ore",
  "immersive_geology:block_item_netherrack_smithsonite_ore",
  "immersive_geology:block_item_netherrack_sphalerite_ore",
  "immersive_geology:block_item_netherrack_ullmannite_ore",
  "immersive_geology:block_item_netherrack_unobtania_ore",
  "immersive_geology:block_item_netherrack_uraninite_ore",
  "immersive_geology:block_item_netherrack_vanadinite_ore",
  "immersive_geology:block_item_osmium_dust_block",
  "immersive_geology:block_item_osmium_sheetmetal",
  "immersive_geology:block_item_osmium_slab",
  "immersive_geology:block_item_osmium_storage",
  "immersive_geology:block_item_platinum_dust_block",
  "immersive_geology:block_item_platinum_sheetmetal",
  "immersive_geology:block_item_platinum_slab",
  "immersive_geology:block_item_platinum_storage",
  "immersive_geology:block_item_refractory_brick_slab",
  "immersive_geology:block_item_refractory_brick_stairs",
  "immersive_geology:block_item_refractory_brick_storage",
  "immersive_geology:block_item_reinforced_refractory_brick_slab",
  "immersive_geology:block_item_reinforced_refractory_brick_stairs",
  "immersive_geology:block_item_reinforced_refractory_brick_storage",
  "immersive_geology:block_item_sodium_dust_block",
  "immersive_geology:block_item_sodium_sheetmetal",
  "immersive_geology:block_item_sodium_slab",
  "immersive_geology:block_item_sodium_storage",
  "immersive_geology:block_item_stone_acanthite_ore",
  "immersive_geology:block_item_stone_alumina_ore",
  "immersive_geology:block_item_stone_anatase_ore",
  "immersive_geology:block_item_stone_cassiterite_ore",
  "immersive_geology:block_item_stone_chalcocite_ore",
  "immersive_geology:block_item_stone_chalcopyrite_ore",
  "immersive_geology:block_item_stone_chromite_ore",
  "immersive_geology:block_item_stone_cobaltite_ore",
  "immersive_geology:block_item_stone_copper_ore",
  "immersive_geology:block_item_stone_cryolite_ore",
  "immersive_geology:block_item_stone_cuprite_ore",
  "immersive_geology:block_item_stone_ferberite_ore",
  "immersive_geology:block_item_stone_fluorite_ore",
  "immersive_geology:block_item_stone_galena_ore",
  "immersive_geology:block_item_stone_gold_ore",
  "immersive_geology:block_item_stone_gypsum_ore",
  "immersive_geology:block_item_stone_hematite_ore",
  "immersive_geology:block_item_stone_hubnerite_ore",
  "immersive_geology:block_item_stone_ilmenite_ore",
  "immersive_geology:block_item_stone_iron_ore",
  "immersive_geology:block_item_stone_monazite_ore",
  "immersive_geology:block_item_stone_nickel_ore",
  "immersive_geology:block_item_stone_platinum_ore",
  "immersive_geology:block_item_stone_pyrite_ore",
  "immersive_geology:block_item_stone_pyrolusite_ore",
  "immersive_geology:block_item_stone_rocksalt_ore",
  "immersive_geology:block_item_stone_saltpeter_ore",
  "immersive_geology:block_item_stone_scheelite_ore",
  "immersive_geology:block_item_stone_silver_ore",
  "immersive_geology:block_item_stone_smithsonite_ore",
  "immersive_geology:block_item_stone_sphalerite_ore",
  "immersive_geology:block_item_stone_ullmannite_ore",
  "immersive_geology:block_item_stone_unobtania_ore",
  "immersive_geology:block_item_stone_uraninite_ore",
  "immersive_geology:block_item_stone_vanadinite_ore",
  "immersive_geology:block_item_thorium_dust_block",
  "immersive_geology:block_item_thorium_sheetmetal",
  "immersive_geology:block_item_thorium_slab",
  "immersive_geology:block_item_thorium_storage",
  "immersive_geology:block_item_tin_dust_block",
  "immersive_geology:block_item_tin_sheetmetal",
  "immersive_geology:block_item_tin_slab",
  "immersive_geology:block_item_tin_storage",
  "immersive_geology:block_item_titanium_dust_block",
  "immersive_geology:block_item_titanium_sheetmetal",
  "immersive_geology:block_item_titanium_slab",
  "immersive_geology:block_item_titanium_storage",
  "immersive_geology:block_item_tungsten_dust_block",
  "immersive_geology:block_item_tungsten_sheetmetal",
  "immersive_geology:block_item_tungsten_slab",
  "immersive_geology:block_item_tungsten_storage",
  "immersive_geology:block_item_unobtanium_dust_block",
  "immersive_geology:block_item_unobtanium_sheetmetal",
  "immersive_geology:block_item_unobtanium_slab",
  "immersive_geology:block_item_unobtanium_storage",
  "immersive_geology:block_item_vanadium_dust_block",
  "immersive_geology:block_item_vanadium_sheetmetal",
  "immersive_geology:block_item_vanadium_slab",
  "immersive_geology:block_item_vanadium_storage",
  "immersive_geology:block_item_zinc_dust_block",
  "immersive_geology:block_item_zinc_sheetmetal",
  "immersive_geology:block_item_zinc_slab",
  "immersive_geology:block_item_zinc_storage",
  "immersive_geology:clay_kaolinite",
  "immersive_geology:compound_dust_aluminum",
  "immersive_geology:compound_dust_iron",
  "immersive_geology:compound_dust_neodymium",
  "immersive_geology:compound_dust_platinum",
  "immersive_geology:compound_dust_silver",
  "immersive_geology:compound_dust_sodium",
  "immersive_geology:compound_dust_thorium",
  "immersive_geology:compound_dust_tungsten",
  "immersive_geology:compound_dust_unobtanium",
  "immersive_geology:compound_dust_uranium",
  "immersive_geology:compound_dust_vanadium",
  "immersive_geology:crushed_ore_acanthite",
  "immersive_geology:crushed_ore_alumina",
  "immersive_geology:crushed_ore_anatase",
  "immersive_geology:crushed_ore_bauxite",
  "immersive_geology:crushed_ore_cassiterite",
  "immersive_geology:crushed_ore_chalcocite",
  "immersive_geology:crushed_ore_chalcopyrite",
  "immersive_geology:crushed_ore_chromite",
  "immersive_geology:crushed_ore_cobaltite",
  "immersive_geology:crushed_ore_copper",
  "immersive_geology:crushed_ore_cuprite",
  "immersive_geology:crushed_ore_ferberite",
  "immersive_geology:crushed_ore_galena",
  "immersive_geology:crushed_ore_gold",
  "immersive_geology:crushed_ore_gypsum",
  "immersive_geology:crushed_ore_hematite",
  "immersive_geology:crushed_ore_hubnerite",
  "immersive_geology:crushed_ore_ilmenite",
  "immersive_geology:crushed_ore_iron",
  "immersive_geology:crushed_ore_monazite",
  "immersive_geology:crushed_ore_nickel",
  "immersive_geology:crushed_ore_platinum",
  "immersive_geology:crushed_ore_pyrite",
  "immersive_geology:crushed_ore_pyrolusite",
  "immersive_geology:crushed_ore_scheelite",
  "immersive_geology:crushed_ore_silver",
  "immersive_geology:crushed_ore_smithsonite",
  "immersive_geology:crushed_ore_sphalerite",
  "immersive_geology:crushed_ore_ullmannite",
  "immersive_geology:crushed_ore_unobtania",
  "immersive_geology:crushed_ore_uraninite",
  "immersive_geology:crushed_ore_vanadinite",
  "immersive_geology:crystal_chromium",
  "immersive_geology:crystal_cobalt",
  "immersive_geology:crystal_copper",
  "immersive_geology:crystal_cryolite",
  "immersive_geology:crystal_fluorite",
  "immersive_geology:crystal_manganese",
  "immersive_geology:crystal_neodymium",
  "immersive_geology:crystal_nickel",
  "immersive_geology:crystal_rocksalt",
  "immersive_geology:crystal_saltpeter",
  "immersive_geology:crystal_silver",
  "immersive_geology:crystal_thorium",
  "immersive_geology:crystal_unobtanium",
  "immersive_geology:crystal_uranium",
  "immersive_geology:crystal_zinc",
  "immersive_geology:dirty_crushed_ore_blackstone_acanthite",
  "immersive_geology:dirty_crushed_ore_blackstone_alumina",
  "immersive_geology:dirty_crushed_ore_blackstone_anatase",
  "immersive_geology:dirty_crushed_ore_blackstone_bauxite",
  "immersive_geology:dirty_crushed_ore_blackstone_cassiterite",
  "immersive_geology:dirty_crushed_ore_blackstone_chalcocite",
  "immersive_geology:dirty_crushed_ore_blackstone_chalcopyrite",
  "immersive_geology:dirty_crushed_ore_blackstone_chromite",
  "immersive_geology:dirty_crushed_ore_blackstone_cobaltite",
  "immersive_geology:dirty_crushed_ore_blackstone_copper",
  "immersive_geology:dirty_crushed_ore_blackstone_cuprite",
  "immersive_geology:dirty_crushed_ore_blackstone_ferberite",
  "immersive_geology:dirty_crushed_ore_blackstone_galena",
  "immersive_geology:dirty_crushed_ore_blackstone_gold",
  "immersive_geology:dirty_crushed_ore_blackstone_gypsum",
  "immersive_geology:dirty_crushed_ore_blackstone_hematite",
  "immersive_geology:dirty_crushed_ore_blackstone_hubnerite",
  "immersive_geology:dirty_crushed_ore_blackstone_ilmenite",
  "immersive_geology:dirty_crushed_ore_blackstone_iron",
  "immersive_geology:dirty_crushed_ore_blackstone_monazite",
  "immersive_geology:dirty_crushed_ore_blackstone_nickel",
  "immersive_geology:dirty_crushed_ore_blackstone_platinum",
  "immersive_geology:dirty_crushed_ore_blackstone_pyrite",
  "immersive_geology:dirty_crushed_ore_blackstone_pyrolusite",
  "immersive_geology:dirty_crushed_ore_blackstone_scheelite",
  "immersive_geology:dirty_crushed_ore_blackstone_silver",
  "immersive_geology:dirty_crushed_ore_blackstone_smithsonite",
  "immersive_geology:dirty_crushed_ore_blackstone_sphalerite",
  "immersive_geology:dirty_crushed_ore_blackstone_ullmannite",
  "immersive_geology:dirty_crushed_ore_blackstone_unobtania",
  "immersive_geology:dirty_crushed_ore_blackstone_uraninite",
  "immersive_geology:dirty_crushed_ore_blackstone_vanadinite",
  "immersive_geology:dirty_crushed_ore_end_stone_acanthite",
  "immersive_geology:dirty_crushed_ore_end_stone_alumina",
  "immersive_geology:dirty_crushed_ore_end_stone_anatase",
  "immersive_geology:dirty_crushed_ore_end_stone_bauxite",
  "immersive_geology:dirty_crushed_ore_end_stone_cassiterite",
  "immersive_geology:dirty_crushed_ore_end_stone_chalcocite",
  "immersive_geology:dirty_crushed_ore_end_stone_chalcopyrite",
  "immersive_geology:dirty_crushed_ore_end_stone_chromite",
  "immersive_geology:dirty_crushed_ore_end_stone_cobaltite",
  "immersive_geology:dirty_crushed_ore_end_stone_copper",
  "immersive_geology:dirty_crushed_ore_end_stone_cuprite",
  "immersive_geology:dirty_crushed_ore_end_stone_ferberite",
  "immersive_geology:dirty_crushed_ore_end_stone_galena",
  "immersive_geology:dirty_crushed_ore_end_stone_gold",
  "immersive_geology:dirty_crushed_ore_end_stone_gypsum",
  "immersive_geology:dirty_crushed_ore_end_stone_hematite",
  "immersive_geology:dirty_crushed_ore_end_stone_hubnerite",
  "immersive_geology:dirty_crushed_ore_end_stone_ilmenite",
  "immersive_geology:dirty_crushed_ore_end_stone_iron",
  "immersive_geology:dirty_crushed_ore_end_stone_monazite",
  "immersive_geology:dirty_crushed_ore_end_stone_nickel",
  "immersive_geology:dirty_crushed_ore_end_stone_platinum",
  "immersive_geology:dirty_crushed_ore_end_stone_pyrite",
  "immersive_geology:dirty_crushed_ore_end_stone_pyrolusite",
  "immersive_geology:dirty_crushed_ore_end_stone_scheelite",
  "immersive_geology:dirty_crushed_ore_end_stone_silver",
  "immersive_geology:dirty_crushed_ore_end_stone_smithsonite",
  "immersive_geology:dirty_crushed_ore_end_stone_sphalerite",
  "immersive_geology:dirty_crushed_ore_end_stone_ullmannite",
  "immersive_geology:dirty_crushed_ore_end_stone_unobtania",
  "immersive_geology:dirty_crushed_ore_end_stone_uraninite",
  "immersive_geology:dirty_crushed_ore_end_stone_vanadinite",
  "immersive_geology:dirty_crushed_ore_granite_acanthite",
  "immersive_geology:dirty_crushed_ore_granite_alumina",
  "immersive_geology:dirty_crushed_ore_granite_anatase",
  "immersive_geology:dirty_crushed_ore_granite_bauxite",
  "immersive_geology:dirty_crushed_ore_granite_cassiterite",
  "immersive_geology:dirty_crushed_ore_granite_chalcocite",
  "immersive_geology:dirty_crushed_ore_granite_chalcopyrite",
  "immersive_geology:dirty_crushed_ore_granite_chromite",
  "immersive_geology:dirty_crushed_ore_granite_cobaltite",
  "immersive_geology:dirty_crushed_ore_granite_copper",
  "immersive_geology:dirty_crushed_ore_granite_cuprite",
  "immersive_geology:dirty_crushed_ore_granite_ferberite",
  "immersive_geology:dirty_crushed_ore_granite_galena",
  "immersive_geology:dirty_crushed_ore_granite_gold",
  "immersive_geology:dirty_crushed_ore_granite_gypsum",
  "immersive_geology:dirty_crushed_ore_granite_hematite",
  "immersive_geology:dirty_crushed_ore_granite_hubnerite",
  "immersive_geology:dirty_crushed_ore_granite_ilmenite",
  "immersive_geology:dirty_crushed_ore_granite_iron",
  "immersive_geology:dirty_crushed_ore_granite_monazite",
  "immersive_geology:dirty_crushed_ore_granite_nickel",
  "immersive_geology:dirty_crushed_ore_granite_platinum",
  "immersive_geology:dirty_crushed_ore_granite_pyrite",
  "immersive_geology:dirty_crushed_ore_granite_pyrolusite",
  "immersive_geology:dirty_crushed_ore_granite_scheelite",
  "immersive_geology:dirty_crushed_ore_granite_silver",
  "immersive_geology:dirty_crushed_ore_granite_smithsonite",
  "immersive_geology:dirty_crushed_ore_granite_sphalerite",
  "immersive_geology:dirty_crushed_ore_granite_ullmannite",
  "immersive_geology:dirty_crushed_ore_granite_unobtania",
  "immersive_geology:dirty_crushed_ore_granite_uraninite",
  "immersive_geology:dirty_crushed_ore_granite_vanadinite",
  "immersive_geology:dirty_crushed_ore_netherrack_acanthite",
  "immersive_geology:dirty_crushed_ore_netherrack_alumina",
  "immersive_geology:dirty_crushed_ore_netherrack_anatase",
  "immersive_geology:dirty_crushed_ore_netherrack_bauxite",
  "immersive_geology:dirty_crushed_ore_netherrack_cassiterite",
  "immersive_geology:dirty_crushed_ore_netherrack_chalcocite",
  "immersive_geology:dirty_crushed_ore_netherrack_chalcopyrite",
  "immersive_geology:dirty_crushed_ore_netherrack_chromite",
  "immersive_geology:dirty_crushed_ore_netherrack_cobaltite",
  "immersive_geology:dirty_crushed_ore_netherrack_copper",
  "immersive_geology:dirty_crushed_ore_netherrack_cuprite",
  "immersive_geology:dirty_crushed_ore_netherrack_ferberite",
  "immersive_geology:dirty_crushed_ore_netherrack_galena",
  "immersive_geology:dirty_crushed_ore_netherrack_gold",
  "immersive_geology:dirty_crushed_ore_netherrack_gypsum",
  "immersive_geology:dirty_crushed_ore_netherrack_hematite",
  "immersive_geology:dirty_crushed_ore_netherrack_hubnerite",
  "immersive_geology:dirty_crushed_ore_netherrack_ilmenite",
  "immersive_geology:dirty_crushed_ore_netherrack_iron",
  "immersive_geology:dirty_crushed_ore_netherrack_monazite",
  "immersive_geology:dirty_crushed_ore_netherrack_nickel",
  "immersive_geology:dirty_crushed_ore_netherrack_platinum",
  "immersive_geology:dirty_crushed_ore_netherrack_pyrite",
  "immersive_geology:dirty_crushed_ore_netherrack_pyrolusite",
  "immersive_geology:dirty_crushed_ore_netherrack_scheelite",
  "immersive_geology:dirty_crushed_ore_netherrack_silver",
  "immersive_geology:dirty_crushed_ore_netherrack_smithsonite",
  "immersive_geology:dirty_crushed_ore_netherrack_sphalerite",
  "immersive_geology:dirty_crushed_ore_netherrack_ullmannite",
  "immersive_geology:dirty_crushed_ore_netherrack_unobtania",
  "immersive_geology:dirty_crushed_ore_netherrack_uraninite",
  "immersive_geology:dirty_crushed_ore_netherrack_vanadinite",
  "immersive_geology:dirty_crushed_ore_stone_acanthite",
  "immersive_geology:dirty_crushed_ore_stone_alumina",
  "immersive_geology:dirty_crushed_ore_stone_anatase",
  "immersive_geology:dirty_crushed_ore_stone_bauxite",
  "immersive_geology:dirty_crushed_ore_stone_cassiterite",
  "immersive_geology:dirty_crushed_ore_stone_chalcocite",
  "immersive_geology:dirty_crushed_ore_stone_chalcopyrite",
  "immersive_geology:dirty_crushed_ore_stone_chromite",
  "immersive_geology:dirty_crushed_ore_stone_cobaltite",
  "immersive_geology:dirty_crushed_ore_stone_copper",
  "immersive_geology:dirty_crushed_ore_stone_cuprite",
  "immersive_geology:dirty_crushed_ore_stone_ferberite",
  "immersive_geology:dirty_crushed_ore_stone_galena",
  "immersive_geology:dirty_crushed_ore_stone_gold",
  "immersive_geology:dirty_crushed_ore_stone_gypsum",
  "immersive_geology:dirty_crushed_ore_stone_hematite",
  "immersive_geology:dirty_crushed_ore_stone_hubnerite",
  "immersive_geology:dirty_crushed_ore_stone_ilmenite",
  "immersive_geology:dirty_crushed_ore_stone_iron",
  "immersive_geology:dirty_crushed_ore_stone_monazite",
  "immersive_geology:dirty_crushed_ore_stone_nickel",
  "immersive_geology:dirty_crushed_ore_stone_platinum",
  "immersive_geology:dirty_crushed_ore_stone_pyrite",
  "immersive_geology:dirty_crushed_ore_stone_pyrolusite",
  "immersive_geology:dirty_crushed_ore_stone_scheelite",
  "immersive_geology:dirty_crushed_ore_stone_silver",
  "immersive_geology:dirty_crushed_ore_stone_smithsonite",
  "immersive_geology:dirty_crushed_ore_stone_sphalerite",
  "immersive_geology:dirty_crushed_ore_stone_ullmannite",
  "immersive_geology:dirty_crushed_ore_stone_unobtania",
  "immersive_geology:dirty_crushed_ore_stone_uraninite",
  "immersive_geology:dirty_crushed_ore_stone_vanadinite",
  "immersive_geology:dust_acanthite",
  "immersive_geology:dust_alumina",
  "immersive_geology:dust_anatase",
  "immersive_geology:dust_bronze",
  "immersive_geology:dust_chalcocite",
  "immersive_geology:dust_chalcopyrite",
  "immersive_geology:dust_chromite",
  "immersive_geology:dust_chromium",
  "immersive_geology:dust_coal",
  "immersive_geology:dust_cobalt",
  "immersive_geology:dust_cobaltite",
  "immersive_geology:dust_cryolite",
  "immersive_geology:dust_ferberite",
  "immersive_geology:dust_fluorite",
  "immersive_geology:dust_gypsum",
  "immersive_geology:dust_hubnerite",
  "immersive_geology:dust_manganese",
  "immersive_geology:dust_monazite",
  "immersive_geology:dust_neodymium",
  "immersive_geology:dust_osmium",
  "immersive_geology:dust_platinum",
  "immersive_geology:dust_pyrolusite",
  "immersive_geology:dust_rocksalt",
  "immersive_geology:dust_saltpeter",
  "immersive_geology:dust_scheelite",
  "immersive_geology:dust_sodium",
  "immersive_geology:dust_sphalerite",
  "immersive_geology:dust_thorium",
  "immersive_geology:dust_tin",
  "immersive_geology:dust_titanium",
  "immersive_geology:dust_tungsten",
  "immersive_geology:dust_unobtania",
  "immersive_geology:dust_unobtanium",
  "immersive_geology:dust_uraninite",
  "immersive_geology:dust_vanadinite",
  "immersive_geology:dust_vanadium",
  "immersive_geology:dust_zinc",
  "immersive_geology:flask_brine",
  "immersive_geology:flask_glass",
  "immersive_geology:flask_hydrochloric_acid_chromium",
  "immersive_geology:flask_hydrochloric_acid_cobalt",
  "immersive_geology:flask_hydrochloric_acid_copper",
  "immersive_geology:flask_hydrochloric_acid_gypsum",
  "immersive_geology:flask_hydrochloric_acid_manganese",
  "immersive_geology:flask_hydrochloric_acid_neodymium",
  "immersive_geology:flask_hydrochloric_acid_nickel",
  "immersive_geology:flask_hydrochloric_acid_silver",
  "immersive_geology:flask_hydrochloric_acid_titanium",
  "immersive_geology:flask_hydrochloric_acid_uranium",
  "immersive_geology:flask_hydrochloric_acid_zinc",
  "immersive_geology:flask_hydrochloric_acid",
  "immersive_geology:flask_hydrofluoric_acid_neodymium",
  "immersive_geology:flask_hydrofluoric_acid_uranium",
  "immersive_geology:flask_hydrofluoric_acid",
  "immersive_geology:flask_nitric_acid_chromium",
  "immersive_geology:flask_nitric_acid_unobtanium",
  "immersive_geology:flask_nitric_acid",
  "immersive_geology:flask_sodium_hydroxide_unobtanium",
  "immersive_geology:flask_sodium_hydroxide",
  "immersive_geology:flask_sulfuric_acid_manganese",
  "immersive_geology:flask_sulfuric_acid_zinc",
  "immersive_geology:flask_sulfuric_acid",
  "immersive_geology:gear_aluminum",
  "immersive_geology:gear_bronze",
  "immersive_geology:gear_chromium",
  "immersive_geology:gear_cobalt",
  "immersive_geology:gear_copper",
  "immersive_geology:gear_gold",
  "immersive_geology:gear_iron",
  "immersive_geology:gear_lead",
  "immersive_geology:gear_manganese",
  "immersive_geology:gear_neodymium",
  "immersive_geology:gear_nickel",
  "immersive_geology:gear_osmium",
  "immersive_geology:gear_platinum",
  "immersive_geology:gear_silver",
  "immersive_geology:gear_sodium",
  "immersive_geology:gear_thorium",
  "immersive_geology:gear_tin",
  "immersive_geology:gear_titanium",
  "immersive_geology:gear_tungsten",
  "immersive_geology:gear_unobtanium",
  "immersive_geology:gear_uranium",
  "immersive_geology:gear_vanadium",
  "immersive_geology:gear_zinc",
  "immersive_geology:ingot_bronze",
  "immersive_geology:ingot_chromium",
  "immersive_geology:ingot_cobalt",
  "immersive_geology:ingot_manganese",
  "immersive_geology:ingot_neodymium",
  "immersive_geology:ingot_osmium",
  "immersive_geology:ingot_platinum",
  "immersive_geology:ingot_refractory_brick",
  "immersive_geology:ingot_sodium",
  "immersive_geology:ingot_thorium",
  "immersive_geology:ingot_tin",
  "immersive_geology:ingot_titanium",
  "immersive_geology:ingot_tungsten",
  "immersive_geology:ingot_unobtanium",
  "immersive_geology:ingot_vanadium",
  "immersive_geology:ingot_zinc",
  "immersive_geology:machine_iron_chemicalvat",
  "immersive_geology:machine_iron_crystallizer",
  "immersive_geology:machine_iron_gravityseparator",
  "immersive_geology:machine_iron_hydrojet_cutter",
  "immersive_geology:machine_iron_rotarykiln",
  "immersive_geology:machine_stone_bloomery",
  "immersive_geology:machine_stone_reverberation_furnace",
  "immersive_geology:metal_oxide_aluminum",
  "immersive_geology:metal_oxide_copper",
  "immersive_geology:metal_oxide_iron",
  "immersive_geology:metal_oxide_neodymium",
  "immersive_geology:metal_oxide_nickel",
  "immersive_geology:metal_oxide_sodium",
  "immersive_geology:metal_oxide_thorium",
  "immersive_geology:metal_oxide_titanium",
  "immersive_geology:metal_oxide_tungsten",
  "immersive_geology:metal_oxide_unobtanium",
  "immersive_geology:metal_oxide_uranium",
  "immersive_geology:metal_oxide_vanadium",
  "immersive_geology:metal_oxide_zinc",
  "immersive_geology:nugget_bronze",
  "immersive_geology:nugget_chromium",
  "immersive_geology:nugget_cobalt",
  "immersive_geology:nugget_manganese",
  "immersive_geology:nugget_neodymium",
  "immersive_geology:nugget_osmium",
  "immersive_geology:nugget_platinum",
  "immersive_geology:nugget_sodium",
  "immersive_geology:nugget_thorium",
  "immersive_geology:nugget_tin",
  "immersive_geology:nugget_titanium",
  "immersive_geology:nugget_tungsten",
  "immersive_geology:nugget_unobtanium",
  "immersive_geology:nugget_vanadium",
  "immersive_geology:nugget_zinc",
  "immersive_geology:ore_bit_blackstone_acanthite",
  "immersive_geology:ore_bit_blackstone_alumina",
  "immersive_geology:ore_bit_blackstone_anatase",
  "immersive_geology:ore_bit_blackstone_bauxite",
  "immersive_geology:ore_bit_blackstone_cassiterite",
  "immersive_geology:ore_bit_blackstone_chalcocite",
  "immersive_geology:ore_bit_blackstone_chalcopyrite",
  "immersive_geology:ore_bit_blackstone_chromite",
  "immersive_geology:ore_bit_blackstone_cobaltite",
  "immersive_geology:ore_bit_blackstone_copper",
  "immersive_geology:ore_bit_blackstone_cuprite",
  "immersive_geology:ore_bit_blackstone_ferberite",
  "immersive_geology:ore_bit_blackstone_galena",
  "immersive_geology:ore_bit_blackstone_gold",
  "immersive_geology:ore_bit_blackstone_gypsum",
  "immersive_geology:ore_bit_blackstone_hematite",
  "immersive_geology:ore_bit_blackstone_hubnerite",
  "immersive_geology:ore_bit_blackstone_ilmenite",
  "immersive_geology:ore_bit_blackstone_iron",
  "immersive_geology:ore_bit_blackstone_monazite",
  "immersive_geology:ore_bit_blackstone_nickel",
  "immersive_geology:ore_bit_blackstone_platinum",
  "immersive_geology:ore_bit_blackstone_pyrite",
  "immersive_geology:ore_bit_blackstone_pyrolusite",
  "immersive_geology:ore_bit_blackstone_scheelite",
  "immersive_geology:ore_bit_blackstone_silver",
  "immersive_geology:ore_bit_blackstone_smithsonite",
  "immersive_geology:ore_bit_blackstone_sphalerite",
  "immersive_geology:ore_bit_blackstone_ullmannite",
  "immersive_geology:ore_bit_blackstone_unobtania",
  "immersive_geology:ore_bit_blackstone_uraninite",
  "immersive_geology:ore_bit_blackstone_vanadinite",
  "immersive_geology:ore_bit_end_stone_acanthite",
  "immersive_geology:ore_bit_end_stone_alumina",
  "immersive_geology:ore_bit_end_stone_anatase",
  "immersive_geology:ore_bit_end_stone_bauxite",
  "immersive_geology:ore_bit_end_stone_cassiterite",
  "immersive_geology:ore_bit_end_stone_chalcocite",
  "immersive_geology:ore_bit_end_stone_chalcopyrite",
  "immersive_geology:ore_bit_end_stone_chromite",
  "immersive_geology:ore_bit_end_stone_cobaltite",
  "immersive_geology:ore_bit_end_stone_copper",
  "immersive_geology:ore_bit_end_stone_cuprite",
  "immersive_geology:ore_bit_end_stone_ferberite",
  "immersive_geology:ore_bit_end_stone_galena",
  "immersive_geology:ore_bit_end_stone_gold",
  "immersive_geology:ore_bit_end_stone_gypsum",
  "immersive_geology:ore_bit_end_stone_hematite",
  "immersive_geology:ore_bit_end_stone_hubnerite",
  "immersive_geology:ore_bit_end_stone_ilmenite",
  "immersive_geology:ore_bit_end_stone_iron",
  "immersive_geology:ore_bit_end_stone_monazite",
  "immersive_geology:ore_bit_end_stone_nickel",
  "immersive_geology:ore_bit_end_stone_platinum",
  "immersive_geology:ore_bit_end_stone_pyrite",
  "immersive_geology:ore_bit_end_stone_pyrolusite",
  "immersive_geology:ore_bit_end_stone_scheelite",
  "immersive_geology:ore_bit_end_stone_silver",
  "immersive_geology:ore_bit_end_stone_smithsonite",
  "immersive_geology:ore_bit_end_stone_sphalerite",
  "immersive_geology:ore_bit_end_stone_ullmannite",
  "immersive_geology:ore_bit_end_stone_unobtania",
  "immersive_geology:ore_bit_end_stone_uraninite",
  "immersive_geology:ore_bit_end_stone_vanadinite",
  "immersive_geology:ore_bit_granite_acanthite",
  "immersive_geology:ore_bit_granite_alumina",
  "immersive_geology:ore_bit_granite_anatase",
  "immersive_geology:ore_bit_granite_bauxite",
  "immersive_geology:ore_bit_granite_cassiterite",
  "immersive_geology:ore_bit_granite_chalcocite",
  "immersive_geology:ore_bit_granite_chalcopyrite",
  "immersive_geology:ore_bit_granite_chromite",
  "immersive_geology:ore_bit_granite_cobaltite",
  "immersive_geology:ore_bit_granite_copper",
  "immersive_geology:ore_bit_granite_cuprite",
  "immersive_geology:ore_bit_granite_ferberite",
  "immersive_geology:ore_bit_granite_galena",
  "immersive_geology:ore_bit_granite_gold",
  "immersive_geology:ore_bit_granite_gypsum",
  "immersive_geology:ore_bit_granite_hematite",
  "immersive_geology:ore_bit_granite_hubnerite",
  "immersive_geology:ore_bit_granite_ilmenite",
  "immersive_geology:ore_bit_granite_iron",
  "immersive_geology:ore_bit_granite_monazite",
  "immersive_geology:ore_bit_granite_nickel",
  "immersive_geology:ore_bit_granite_platinum",
  "immersive_geology:ore_bit_granite_pyrite",
  "immersive_geology:ore_bit_granite_pyrolusite",
  "immersive_geology:ore_bit_granite_scheelite",
  "immersive_geology:ore_bit_granite_silver",
  "immersive_geology:ore_bit_granite_smithsonite",
  "immersive_geology:ore_bit_granite_sphalerite",
  "immersive_geology:ore_bit_granite_ullmannite",
  "immersive_geology:ore_bit_granite_unobtania",
  "immersive_geology:ore_bit_granite_uraninite",
  "immersive_geology:ore_bit_granite_vanadinite",
  "immersive_geology:ore_bit_netherrack_acanthite",
  "immersive_geology:ore_bit_netherrack_alumina",
  "immersive_geology:ore_bit_netherrack_anatase",
  "immersive_geology:ore_bit_netherrack_bauxite",
  "immersive_geology:ore_bit_netherrack_cassiterite",
  "immersive_geology:ore_bit_netherrack_chalcocite",
  "immersive_geology:ore_bit_netherrack_chalcopyrite",
  "immersive_geology:ore_bit_netherrack_chromite",
  "immersive_geology:ore_bit_netherrack_cobaltite",
  "immersive_geology:ore_bit_netherrack_copper",
  "immersive_geology:ore_bit_netherrack_cuprite",
  "immersive_geology:ore_bit_netherrack_ferberite",
  "immersive_geology:ore_bit_netherrack_galena",
  "immersive_geology:ore_bit_netherrack_gold",
  "immersive_geology:ore_bit_netherrack_gypsum",
  "immersive_geology:ore_bit_netherrack_hematite",
  "immersive_geology:ore_bit_netherrack_hubnerite",
  "immersive_geology:ore_bit_netherrack_ilmenite",
  "immersive_geology:ore_bit_netherrack_iron",
  "immersive_geology:ore_bit_netherrack_monazite",
  "immersive_geology:ore_bit_netherrack_nickel",
  "immersive_geology:ore_bit_netherrack_platinum",
  "immersive_geology:ore_bit_netherrack_pyrite",
  "immersive_geology:ore_bit_netherrack_pyrolusite",
  "immersive_geology:ore_bit_netherrack_scheelite",
  "immersive_geology:ore_bit_netherrack_silver",
  "immersive_geology:ore_bit_netherrack_smithsonite",
  "immersive_geology:ore_bit_netherrack_sphalerite",
  "immersive_geology:ore_bit_netherrack_ullmannite",
  "immersive_geology:ore_bit_netherrack_unobtania",
  "immersive_geology:ore_bit_netherrack_uraninite",
  "immersive_geology:ore_bit_netherrack_vanadinite",
  "immersive_geology:ore_bit_stone_acanthite",
  "immersive_geology:ore_bit_stone_alumina",
  "immersive_geology:ore_bit_stone_anatase",
  "immersive_geology:ore_bit_stone_bauxite",
  "immersive_geology:ore_bit_stone_cassiterite",
  "immersive_geology:ore_bit_stone_chalcocite",
  "immersive_geology:ore_bit_stone_chalcopyrite",
  "immersive_geology:ore_bit_stone_chromite",
  "immersive_geology:ore_bit_stone_cobaltite",
  "immersive_geology:ore_bit_stone_copper",
  "immersive_geology:ore_bit_stone_cuprite",
  "immersive_geology:ore_bit_stone_ferberite",
  "immersive_geology:ore_bit_stone_galena",
  "immersive_geology:ore_bit_stone_gold",
  "immersive_geology:ore_bit_stone_gypsum",
  "immersive_geology:ore_bit_stone_hematite",
  "immersive_geology:ore_bit_stone_hubnerite",
  "immersive_geology:ore_bit_stone_ilmenite",
  "immersive_geology:ore_bit_stone_iron",
  "immersive_geology:ore_bit_stone_monazite",
  "immersive_geology:ore_bit_stone_nickel",
  "immersive_geology:ore_bit_stone_platinum",
  "immersive_geology:ore_bit_stone_pyrite",
  "immersive_geology:ore_bit_stone_pyrolusite",
  "immersive_geology:ore_bit_stone_scheelite",
  "immersive_geology:ore_bit_stone_silver",
  "immersive_geology:ore_bit_stone_smithsonite",
  "immersive_geology:ore_bit_stone_sphalerite",
  "immersive_geology:ore_bit_stone_ullmannite",
  "immersive_geology:ore_bit_stone_unobtania",
  "immersive_geology:ore_bit_stone_uraninite",
  "immersive_geology:ore_bit_stone_vanadinite",
  "immersive_geology:ore_chunk_blackstone_acanthite",
  "immersive_geology:ore_chunk_blackstone_alumina",
  "immersive_geology:ore_chunk_blackstone_anatase",
  "immersive_geology:ore_chunk_blackstone_bauxite",
  "immersive_geology:ore_chunk_blackstone_cassiterite",
  "immersive_geology:ore_chunk_blackstone_chalcocite",
  "immersive_geology:ore_chunk_blackstone_chalcopyrite",
  "immersive_geology:ore_chunk_blackstone_chromite",
  "immersive_geology:ore_chunk_blackstone_cobaltite",
  "immersive_geology:ore_chunk_blackstone_copper",
  "immersive_geology:ore_chunk_blackstone_cuprite",
  "immersive_geology:ore_chunk_blackstone_ferberite",
  "immersive_geology:ore_chunk_blackstone_galena",
  "immersive_geology:ore_chunk_blackstone_gold",
  "immersive_geology:ore_chunk_blackstone_gypsum",
  "immersive_geology:ore_chunk_blackstone_hematite",
  "immersive_geology:ore_chunk_blackstone_hubnerite",
  "immersive_geology:ore_chunk_blackstone_ilmenite",
  "immersive_geology:ore_chunk_blackstone_iron",
  "immersive_geology:ore_chunk_blackstone_monazite",
  "immersive_geology:ore_chunk_blackstone_nickel",
  "immersive_geology:ore_chunk_blackstone_platinum",
  "immersive_geology:ore_chunk_blackstone_pyrite",
  "immersive_geology:ore_chunk_blackstone_pyrolusite",
  "immersive_geology:ore_chunk_blackstone_scheelite",
  "immersive_geology:ore_chunk_blackstone_silver",
  "immersive_geology:ore_chunk_blackstone_smithsonite",
  "immersive_geology:ore_chunk_blackstone_sphalerite",
  "immersive_geology:ore_chunk_blackstone_ullmannite",
  "immersive_geology:ore_chunk_blackstone_unobtania",
  "immersive_geology:ore_chunk_blackstone_uraninite",
  "immersive_geology:ore_chunk_blackstone_vanadinite",
  "immersive_geology:ore_chunk_end_stone_acanthite",
  "immersive_geology:ore_chunk_end_stone_alumina",
  "immersive_geology:ore_chunk_end_stone_anatase",
  "immersive_geology:ore_chunk_end_stone_bauxite",
  "immersive_geology:ore_chunk_end_stone_cassiterite",
  "immersive_geology:ore_chunk_end_stone_chalcocite",
  "immersive_geology:ore_chunk_end_stone_chalcopyrite",
  "immersive_geology:ore_chunk_end_stone_chromite",
  "immersive_geology:ore_chunk_end_stone_cobaltite",
  "immersive_geology:ore_chunk_end_stone_copper",
  "immersive_geology:ore_chunk_end_stone_cuprite",
  "immersive_geology:ore_chunk_end_stone_ferberite",
  "immersive_geology:ore_chunk_end_stone_galena",
  "immersive_geology:ore_chunk_end_stone_gold",
  "immersive_geology:ore_chunk_end_stone_gypsum",
  "immersive_geology:ore_chunk_end_stone_hematite",
  "immersive_geology:ore_chunk_end_stone_hubnerite",
  "immersive_geology:ore_chunk_end_stone_ilmenite",
  "immersive_geology:ore_chunk_end_stone_iron",
  "immersive_geology:ore_chunk_end_stone_monazite",
  "immersive_geology:ore_chunk_end_stone_nickel",
  "immersive_geology:ore_chunk_end_stone_platinum",
  "immersive_geology:ore_chunk_end_stone_pyrite",
  "immersive_geology:ore_chunk_end_stone_pyrolusite",
  "immersive_geology:ore_chunk_end_stone_scheelite",
  "immersive_geology:ore_chunk_end_stone_silver",
  "immersive_geology:ore_chunk_end_stone_smithsonite",
  "immersive_geology:ore_chunk_end_stone_sphalerite",
  "immersive_geology:ore_chunk_end_stone_ullmannite",
  "immersive_geology:ore_chunk_end_stone_unobtania",
  "immersive_geology:ore_chunk_end_stone_uraninite",
  "immersive_geology:ore_chunk_end_stone_vanadinite",
  "immersive_geology:ore_chunk_granite_acanthite",
  "immersive_geology:ore_chunk_granite_alumina",
  "immersive_geology:ore_chunk_granite_anatase",
  "immersive_geology:ore_chunk_granite_bauxite",
  "immersive_geology:ore_chunk_granite_cassiterite",
  "immersive_geology:ore_chunk_granite_chalcocite",
  "immersive_geology:ore_chunk_granite_chalcopyrite",
  "immersive_geology:ore_chunk_granite_chromite",
  "immersive_geology:ore_chunk_granite_cobaltite",
  "immersive_geology:ore_chunk_granite_copper",
  "immersive_geology:ore_chunk_granite_cuprite",
  "immersive_geology:ore_chunk_granite_ferberite",
  "immersive_geology:ore_chunk_granite_galena",
  "immersive_geology:ore_chunk_granite_gold",
  "immersive_geology:ore_chunk_granite_gypsum",
  "immersive_geology:ore_chunk_granite_hematite",
  "immersive_geology:ore_chunk_granite_hubnerite",
  "immersive_geology:ore_chunk_granite_ilmenite",
  "immersive_geology:ore_chunk_granite_iron",
  "immersive_geology:ore_chunk_granite_monazite",
  "immersive_geology:ore_chunk_granite_nickel",
  "immersive_geology:ore_chunk_granite_platinum",
  "immersive_geology:ore_chunk_granite_pyrite",
  "immersive_geology:ore_chunk_granite_pyrolusite",
  "immersive_geology:ore_chunk_granite_scheelite",
  "immersive_geology:ore_chunk_granite_silver",
  "immersive_geology:ore_chunk_granite_smithsonite",
  "immersive_geology:ore_chunk_granite_sphalerite",
  "immersive_geology:ore_chunk_granite_ullmannite",
  "immersive_geology:ore_chunk_granite_unobtania",
  "immersive_geology:ore_chunk_granite_uraninite",
  "immersive_geology:ore_chunk_granite_vanadinite",
  "immersive_geology:ore_chunk_netherrack_acanthite",
  "immersive_geology:ore_chunk_netherrack_alumina",
  "immersive_geology:ore_chunk_netherrack_anatase",
  "immersive_geology:ore_chunk_netherrack_bauxite",
  "immersive_geology:ore_chunk_netherrack_cassiterite",
  "immersive_geology:ore_chunk_netherrack_chalcocite",
  "immersive_geology:ore_chunk_netherrack_chalcopyrite",
  "immersive_geology:ore_chunk_netherrack_chromite",
  "immersive_geology:ore_chunk_netherrack_cobaltite",
  "immersive_geology:ore_chunk_netherrack_copper",
  "immersive_geology:ore_chunk_netherrack_cuprite",
  "immersive_geology:ore_chunk_netherrack_ferberite",
  "immersive_geology:ore_chunk_netherrack_galena",
  "immersive_geology:ore_chunk_netherrack_gold",
  "immersive_geology:ore_chunk_netherrack_gypsum",
  "immersive_geology:ore_chunk_netherrack_hematite",
  "immersive_geology:ore_chunk_netherrack_hubnerite",
  "immersive_geology:ore_chunk_netherrack_ilmenite",
  "immersive_geology:ore_chunk_netherrack_iron",
  "immersive_geology:ore_chunk_netherrack_monazite",
  "immersive_geology:ore_chunk_netherrack_nickel",
  "immersive_geology:ore_chunk_netherrack_platinum",
  "immersive_geology:ore_chunk_netherrack_pyrite",
  "immersive_geology:ore_chunk_netherrack_pyrolusite",
  "immersive_geology:ore_chunk_netherrack_scheelite",
  "immersive_geology:ore_chunk_netherrack_silver",
  "immersive_geology:ore_chunk_netherrack_smithsonite",
  "immersive_geology:ore_chunk_netherrack_sphalerite",
  "immersive_geology:ore_chunk_netherrack_ullmannite",
  "immersive_geology:ore_chunk_netherrack_unobtania",
  "immersive_geology:ore_chunk_netherrack_uraninite",
  "immersive_geology:ore_chunk_netherrack_vanadinite",
  "immersive_geology:ore_chunk_stone_acanthite",
  "immersive_geology:ore_chunk_stone_alumina",
  "immersive_geology:ore_chunk_stone_anatase",
  "immersive_geology:ore_chunk_stone_bauxite",
  "immersive_geology:ore_chunk_stone_cassiterite",
  "immersive_geology:ore_chunk_stone_chalcocite",
  "immersive_geology:ore_chunk_stone_chalcopyrite",
  "immersive_geology:ore_chunk_stone_chromite",
  "immersive_geology:ore_chunk_stone_cobaltite",
  "immersive_geology:ore_chunk_stone_copper",
  "immersive_geology:ore_chunk_stone_cuprite",
  "immersive_geology:ore_chunk_stone_ferberite",
  "immersive_geology:ore_chunk_stone_galena",
  "immersive_geology:ore_chunk_stone_gold",
  "immersive_geology:ore_chunk_stone_gypsum",
  "immersive_geology:ore_chunk_stone_hematite",
  "immersive_geology:ore_chunk_stone_hubnerite",
  "immersive_geology:ore_chunk_stone_ilmenite",
  "immersive_geology:ore_chunk_stone_iron",
  "immersive_geology:ore_chunk_stone_monazite",
  "immersive_geology:ore_chunk_stone_nickel",
  "immersive_geology:ore_chunk_stone_platinum",
  "immersive_geology:ore_chunk_stone_pyrite",
  "immersive_geology:ore_chunk_stone_pyrolusite",
  "immersive_geology:ore_chunk_stone_scheelite",
  "immersive_geology:ore_chunk_stone_silver",
  "immersive_geology:ore_chunk_stone_smithsonite",
  "immersive_geology:ore_chunk_stone_sphalerite",
  "immersive_geology:ore_chunk_stone_ullmannite",
  "immersive_geology:ore_chunk_stone_unobtania",
  "immersive_geology:ore_chunk_stone_uraninite",
  "immersive_geology:ore_chunk_stone_vanadinite",
  "immersive_geology:plate_bronze",
  "immersive_geology:plate_chromium",
  "immersive_geology:plate_cobalt",
  "immersive_geology:plate_manganese",
  "immersive_geology:plate_neodymium",
  "immersive_geology:plate_osmium",
  "immersive_geology:plate_platinum",
  "immersive_geology:plate_sodium",
  "immersive_geology:plate_thorium",
  "immersive_geology:plate_tin",
  "immersive_geology:plate_titanium",
  "immersive_geology:plate_tungsten",
  "immersive_geology:plate_unobtanium",
  "immersive_geology:plate_vanadium",
  "immersive_geology:plate_zinc",
  "immersive_geology:rod_bronze",
  "immersive_geology:rod_chromium",
  "immersive_geology:rod_cobalt",
  "immersive_geology:rod_manganese",
  "immersive_geology:rod_neodymium",
  "immersive_geology:rod_osmium",
  "immersive_geology:rod_platinum",
  "immersive_geology:rod_sodium",
  "immersive_geology:rod_thorium",
  "immersive_geology:rod_tin",
  "immersive_geology:rod_titanium",
  "immersive_geology:rod_tungsten",
  "immersive_geology:rod_unobtanium",
  "immersive_geology:rod_vanadium",
  "immersive_geology:rod_zinc",
  "immersive_geology:slag_acanthite",
  "immersive_geology:slag_chalcocite",
  "immersive_geology:slag_chalcopyrite",
  "immersive_geology:slag_cobaltite",
  "immersive_geology:slag_ferberite",
  "immersive_geology:slag_galena",
  "immersive_geology:slag_sphalerite",
  "immersive_geology:slag_vanadinite",
  "immersive_geology:stone_bit_blackstone",
  "immersive_geology:stone_bit_end_stone",
  "immersive_geology:stone_bit_granite",
  "immersive_geology:stone_bit_netherrack",
  "immersive_geology:stone_bit_stone",
  "immersive_geology:stone_chunk_blackstone",
  "immersive_geology:stone_chunk_end_stone",
  "immersive_geology:stone_chunk_granite",
  "immersive_geology:stone_chunk_netherrack",
  "immersive_geology:stone_chunk_stone"];


onEvent('fluid.tags', event => {
    event.add('forge:steam', 'amicore:steam')
})

onEvent('block.tags', event => {
    event.add('forge:steam', 'amicore:steam')
    
    for (let i = 0; i < oretypes.length; i++) {
      for (let k = 0; k < oretypes[i][5].length; k++) {
        event.add(oretypes[i][5][k], 'amicore:' + oretypes[i][0] + '_ore');
      }
    }
		
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

  //universal toolsets
  for (let i = 0; i < toolMats.length; i++) {
    event.add('artisantools:type/cutters', 'amicore:' + toolMats[i][0] + '_universal_toolset');
    event.add('artisantools:type/hammer', 'amicore:' + toolMats[i][0] + '_universal_toolset');
    event.add('artisantools:type/driver', 'amicore:' + toolMats[i][0] + '_universal_toolset');
    event.add('artisantools:type/handsaw', 'amicore:' + toolMats[i][0] + '_universal_toolset');
    event.add('artisantools:type/file', 'amicore:' + toolMats[i][0] + '_universal_toolset');
    event.add('artisantools:type/spanner', 'amicore:' + toolMats[i][0] + '_universal_toolset');
    event.add('artisantools:type/solderer', 'amicore:' + toolMats[i][0] + '_universal_toolset');
    event.add('artisantools:type/knife', 'amicore:' + toolMats[i][0] + '_universal_toolset');
    event.add('artisantools:type/universal_toolset', 'amicore:' + toolMats[i][0] + '_universal_toolset');
    event.add('artisantools:material/'  + toolMats[i][0], 'amicore:' + toolMats[i][0] + '_universal_toolset');
  }

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
      event.add('forge:mech_components', 'amicore:' + metalvariants[i][0] + '_mech_component');
      event.add('forge:mech_components/' + metalvariants[i][0], 'amicore:' + metalvariants[i][0] + '_mech_component');

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

  event.add('curios:necklace', 'amicore:lesbian_necklace');

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
  event.remove('forge:plates/zinc', 'createdeco:zinc_sheet');
  event.remove('forge:plates/netherite', 'createdeco:netherite_sheet');
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
  event.remove('forge:dusts', 'appliedenergistics2:gold_dust');
  event.remove('forge:dusts', 'appliedenergistics2:iron_dust');

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
  event.remove('forge:dusts/iron', 'appliedenergistics2:iron_dust');
  event.remove('forge:dusts/gold', 'appliedenergistics2:gold_dust');

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
  event.remove('forge:gears/titaniumaluminide', 'advancedrocketry:geartitaniumaluminide');
  event.remove('forge:gears/titaniumiridium', 'advancedrocketry:geartitaniumiridium');
  event.remove('forge:gears/titanium', 'libvulpes:geartitanium');
  event.remove('forge:gears/steel', 'libvulpes:gearsteel');
  event.remove('forge:coils', 'libvulpes:coiltitanium');
  event.remove('forge:coils/titanium', 'libvulpes:coiltitanium');
  event.remove('forge:coils', 'libvulpes:coilgold');
  event.remove('forge:coils/gold', 'libvulpes:coilgold');
  event.remove('forge:coils', 'libvulpes:coilcopper');
  event.remove('forge:coils/copper', 'libvulpes:coilcopper');
  event.remove('forge:coils', 'libvulpes:coilaluminum');
  event.remove('forge:coils/aluminum', 'libvulpes:coilaluminum');
  event.remove('forge:coils', 'libvulpes:coiliridium');
  event.remove('forge:coils/iridium', 'libvulpes:coiliridium');

  //immnersive geo
  event.removeAllTagsFrom(immersive_geo_items);

  //tinkers delite


  //steampowered
  event.remove('steampowered:plates', 'steampowered:bronze_sheet');
  event.remove('steampowered:plates/bronze', 'steampowered:bronze_sheet');
  event.remove('steampowered:plates', 'steampowered:cast_iron_sheet');
  event.remove('steampowered:plates/cast_iron', 'steampowered:cast_iron_sheet');
  event.remove('steampowered:plates', 'steampowered:steel_sheet');
  event.remove('steampowered:plates/steel', 'steampowered:steel_sheet');
  event.remove('steampowered:ingots', 'steampowered:steel_ingot');
  event.remove('steampowered:ingots/steel', 'steampowered:steel_ingot');
  event.remove('steampowered:ingots', 'steampowered:cast_iron_ingot');
  event.remove('steampowered:ingots/cast_iron', 'steampowered:cast_iron_ingot');

  
  event.remove('forge:ingots/steel', 'libvulpes:ingotsteel');
  event.remove('forge:ingots', 'libvulpes:ingotsteel');
  event.remove('steampowered:ingots/steel', 'libvulpes:ingotsteel');


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


  //swappable steel tag
  event.add('forge:ingots/steel_crafting', 'amicore:steel_ingot');
  event.add('forge:ingots/steel_crafting', 'amicore:crude_steel_ingot');
  event.add('forge:rods/steel_crafting', 'amicore:steel_rod');
  event.add('forge:rods/steel_crafting', 'amicore:crude_steel_rod');
  event.add('forge:plates/steel_crafting', 'amicore:steel_plate');
  event.add('forge:plates/steel_crafting', 'amicore:crude_steel_plate');
  event.add('forge:rounded_sheets/steel_crafting', 'amicore:steel_round_sheet');
  event.add('forge:rounded_sheets/steel_crafting', 'amicore:crude_steel_round_sheet');
  event.add('forge:cakes/steel_crafting', 'amicore:steel_cake');
  event.add('forge:cakes/steel_crafting', 'amicore:crude_steel_cake');
  event.add('forge:large_sheets/steel_crafting', 'amicore:steel_large_sheet');
  event.add('forge:large_sheets/steel_crafting', 'amicore:crude_steel_large_sheet');
  event.add('forge:coils/steel_crafting', 'amicore:steel_coil');
  event.add('forge:coils/steel_crafting', 'amicore:crude_steel_coil');
  event.add('forge:bar_stocks/steel_crafting', 'amicore:steel_bar_stock');
  event.add('forge:bar_stocks/steel_crafting', 'amicore:crude_steel_bar_stock');
  event.add('forge:nuggets/steel_crafting', 'amicore:steel_nugget');
  event.add('forge:nuggets/steel_crafting', 'amicore:crude_steel_nugget');
  event.add('forge:bolts/steel_crafting', 'amicore:steel_bolt');
  event.add('forge:bolts/steel_crafting', 'amicore:crude_steel_bolt');
  event.add('forge:wires/steel_crafting', 'amicore:steel_wire');
  event.add('forge:wires/steel_crafting', 'amicore:crude_steel_wire');
  event.add('forge:dusts/steel_crafting', 'amicore:steel_dust');
  event.add('forge:dusts/steel_crafting', 'amicore:crude_steel_dust');
  event.add('forge:tiny_dusts/steel_crafting', 'amicore:steel_tiny_dust');
  event.add('forge:tiny_dusts/steel_crafting', 'amicore:crude_steel_tiny_dust');
  event.add('forge:storage_blocks/steel_crafting', 'amicore:steel_block');
  event.add('forge:storage_blocks/steel_crafting', 'amicore:crude_steel_block');
  event.add('forge:heated_cakes/steel_crafting', 'amicore:steel_heated_cake');
  event.add('forge:heated_cakes/steel_crafting', 'amicore:crude_steel_heated_cake');
  event.add('forge:heated_ingots/steel_crafting', 'amicore:steel_heated_ingot');
  event.add('forge:heated_ingots/steel_crafting', 'amicore:crude_steel_heated_ingot');
  event.add('forge:heated_bar_stocks/steel_crafting', 'amicore:steel_heated_bar_stock');
  event.add('forge:heated_bar_stocks/steel_crafting', 'amicore:crude_steel_heated_bar_stock');
  event.add('forge:heated_large_sheets/steel_crafting', 'amicore:steel_heated_large_sheet');
  event.add('forge:heated_large_sheets/steel_crafting', 'amicore:crude_steel_heated_large_sheet');
  event.add('forge:mech_components/steel_crafting', 'amicore:steel_mech_component');
  event.add('forge:mech_components/steel_crafting', 'amicore:crude_steel_mech_component');
  
  //tongs tag
  event.add('curios:hands', 'amicore:metal_tongs');

  //embur
  event.add('forge:slimeballs', 'byg:embur_gel_ball');
  event.add('forge:slimeballs/embur', 'byg:embur_gel_ball');


  //malum plants
  event.add('malum:earthen_plants', 'minecraft:wheat');
  event.add('malum:earthen_plants', 'minecraft:potato');
  event.add('malum:earthen_plants', 'minecraft:carrot');
  event.add('malum:earthen_plants', 'minecraft:pumpkin');
  event.add('malum:earthen_plants', 'minecraft:beetroot');
  event.add('malum:earthen_plants', 'pamhc2crops:beanitem');
  event.add('malum:earthen_plants', 'pamhc2crops:chickpeaitem');
  event.add('malum:earthen_plants', 'pamhc2crops:cornitem');
  event.add('malum:earthen_plants', 'pamhc2crops:soybeanitem');
  event.add('malum:earthen_plants', 'pamhc2crops:kaleitem');
  event.add('malum:earthen_plants', 'pamhc2crops:arrowrootitem');
  event.add('malum:earthen_plants', 'pamhc2crops:cassavaitem');
  event.add('malum:earthen_plants', 'pamhc2crops:parsnipitem');
  event.add('malum:earthen_plants', 'pamhc2crops:radishitem');
  event.add('malum:earthen_plants', 'pamhc2crops:rutabagaitem');
  event.add('malum:earthen_plants', 'pamhc2crops:sweetpotatoitem');
  event.add('malum:earthen_plants', 'pamhc2crops:taroitem');
  event.add('malum:earthen_plants', 'pamhc2crops:turnipitem');
  event.add('malum:earthen_plants', 'pamhc2crops:jicamaitem');
  event.add('malum:earthen_plants', 'pamhc2crops:leekitem');
  event.add('malum:earthen_plants', 'pamhc2crops:kohlrabiitem');

  event.add('malum:aerous_plants', 'minecraft:apple');
  event.add('malum:aerous_plants', 'minecraft:chorus_fruit');
  event.add('malum:aerous_plants', 'minecraft:cocoa_beans');
  event.add('malum:aerous_plants', 'byg:green_apple');
  event.add('malum:aerous_plants', 'pamhc2foodcore:sunflowerseedsitem');
  event.add('malum:aerous_plants', 'pamhc2trees:pecanitem');
  event.add('malum:aerous_plants', 'pamhc2trees:pistachioitem');
  event.add('malum:aerous_plants', 'pamhc2trees:hazelnutitem');
  event.add('malum:aerous_plants', 'pamhc2trees:walnutitem');
  event.add('malum:aerous_plants', 'pamhc2trees:chestnutitem');
  event.add('malum:aerous_plants', 'pamhc2crops:peanutitem');
  event.add('malum:aerous_plants', 'pamhc2trees:almonditem');
  event.add('malum:aerous_plants', 'pamhc2trees:pinenutitem');
  event.add('malum:aerous_plants', 'pamhc2crops:coffeebeanitem');

  event.add('malum:aqueous_plants', 'minecraft:melon_slice');
  event.add('malum:aqueous_plants', 'minecraft:sweet_berries');
  event.add('malum:aqueous_plants', 'byg:nightshade_berries');
  event.add('malum:aqueous_plants', 'pamhc2crops:wintersquashitem');
  event.add('malum:aqueous_plants', 'pamhc2crops:zucchiniitem');
  event.add('malum:aqueous_plants', 'pamhc2crops:cucumberitem');
  event.add('malum:aqueous_plants', 'pamhc2crops:tomatoitem');
  event.add('malum:aqueous_plants', 'pamhc2crops:tomatilloitem');
  event.add('malum:aqueous_plants', 'pamhc2crops:eggplantitem');
  event.add('malum:aqueous_plants', 'pamhc2crops:waterchestnutitem');
  event.add('malum:aqueous_plants', 'pamhc2crops:agaveitem');
  event.add('malum:aqueous_plants', 'pamhc2crops:cantaloupeitem');
  event.add('malum:aqueous_plants', 'pamhc2crops:kiwiitem');
  event.add('malum:aqueous_plants', 'pamhc2crops:bellpepperitem');
  event.add('malum:aqueous_plants', 'farmersdelight:tomato');

  event.add('malum:infernal_plants', 'minecraft:nether_wart');
  event.add('malum:infernal_plants', 'byg:crimson_berries');
  event.add('malum:infernal_plants', 'pamhc2crops:chilipepperitem');
  event.add('malum:infernal_plants', 'pamhc2crops:garlicitem');
  event.add('malum:infernal_plants', 'pamhc2crops:scallionitem');
  event.add('malum:infernal_plants', 'pamhc2crops:onionitem');
  event.add('malum:infernal_plants', 'pamhc2crops:rhubarbitem');
  event.add('malum:infernal_plants', 'pamhc2crops:tealeafitem');
  event.add('malum:infernal_plants', 'pamhc2crops:spiceleafitem');
  event.add('malum:infernal_plants', 'pamhc2crops:gingeritem');
  event.add('malum:infernal_plants', 'pamhc2crops:mustardseedsitem');

  event.add('malum:herbal_plants', '#supplementaries:flower_box_plantable');
  event.add('malum:herbal_plants', 'minecraft:grass');
  event.add('malum:herbal_plants', 'minecraft:tall_grass');
  event.add('malum:herbal_plants', 'minecraft:large_fern');

  //malum ether
  event.add('malum:ether', 'malum:orange_ether');
  event.add('malum:ether', 'malum:magenta_ether');
  event.add('malum:ether', 'malum:light_blue_ether');
  event.add('malum:ether', 'malum:yellow_ether');
  event.add('malum:ether', 'malum:lime_ether');
  event.add('malum:ether', 'malum:pink_ether');
  event.add('malum:ether', 'malum:cyan_ether');
  event.add('malum:ether', 'malum:purple_ether');
  event.add('malum:ether', 'malum:blue_ether');
  event.add('malum:ether', 'malum:brown_ether');
  event.add('malum:ether', 'malum:green_ether');
  event.add('malum:ether', 'malum:red_ether');

  //deployer tools
  event.add('forge:deployer_tools', 'amicore:bottle_press');
  event.add('forge:deployer_tools', 'amicore:bottle_mixer');
  event.add('forge:deployer_tools', 'amicore:bottle_heater');
  event.add('forge:deployer_tools', 'amicore:held_solderer');

  //plant meal
  event.add('forge:plant_oil_meal', 'amicore:olive_meal');
  event.add('forge:plant_oil_meal', 'amicore:soybean_meal');
  event.add('forge:plant_oil_meal', 'amicore:avocado_meal');
  event.add('forge:plant_oil_meal', 'amicore:coconut_meal');
  event.add('forge:plant_oil_meal', 'amicore:sesame_seed_meal');
  event.add('forge:plant_oil_meal', 'amicore:peanut_meal');
  event.add('forge:plant_oil_meal', 'amicore:pinenut_meal');
  event.add('forge:plant_oil_fruit', 'pamhc2trees:oliveitem');
  event.add('forge:plant_oil_fruit', 'pamhc2crops:soybeanitem');
  event.add('forge:plant_oil_fruit', 'pamhc2trees:avocadoitem');
  event.add('forge:plant_oil_fruit', 'pamhc2trees:coconutitem');
  event.add('forge:plant_oil_fruit', 'pamhc2crops:sesameseedsitem');
  event.add('forge:plant_oil_fruit', 'pamhc2crops:peanutitem');
  event.add('forge:plant_oil_fruit', 'pamhc2trees:pinenutitem');

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

  
  // console.log("§c§lRecommended to restart server, all malum recipes are duplicated on reload");
  // event.server.tell("§c§lRecommended to restart server, all malum recipes are duplicated on reload");

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
