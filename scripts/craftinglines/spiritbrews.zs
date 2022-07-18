import crafttweaker.api.BracketHandlers;
import crafttweaker.api.SmithingManager;
import crafttweaker.api.tag.TagManager;
import crafttweaker.api.tag.TagManagerItem;
import mods.artisanworktables.Recipe;
import mods.artisanworktables.Type;
import crafttweaker.api.ILogger;

var crushing = <recipetype:create:crushing>;
var mixing = <recipetype:create:mixing>;
var pressing = <recipetype:create:pressing>;
var washing = <recipetype:create:splashing>;
var milling = <recipetype:create:milling>;
var filling = <recipetype:create:filling>;
var deploying = <recipetype:create:deploying>;
var sequence = <recipetype:create:sequenced_assembly>;
var draining = <recipetype:create:emptying>;

val basicSpirits = [
	['earthen', 'Earthen', 0x65FF0D, 0x51DD00],
	['infernal', 'Infernal', 0xFCCB18, 0xDDAD02], 
	['aerial', 'Aerial', 0x41E8E4, 0x16b5b1], 
	['aquatic', 'Aquatic', 0x2e85f5, 0x0b65d8]] as string[][];
val simpleSpirits = [
	['sacred', 'Sacred', 0xF3416B, 0xf0184b], 
	['wicked', 'Wicked', 0xa519da, 0x8213ac], 
	['arcane', 'Arcane', 0xe554d1, 0xd120b8], 
	['eldritch', 'Eldritch', 0x48165f, 0x2d0e3c]] as string[][];
val intermediateSpirits = [
	['malicious', 'Malicious', 0xAB1182, 0x8f0e6c], 
	['magnetic', 'Magnetic', 0xEB4D4D, 0xe83333], 
	['ruinous', 'Ruinous', 0x0f0f0f, 0x080808], 
	['tempestuous', 'Tempestuous', 0x84a8cb, 0x84a8cb], 
	['electric', 'Electric', 0xDCEC73, 0xd1e646], 
	['mechanical', 'Mechanical', 0xF5BC22, 0xc89509], 
	['herbal', 'Herbal', 0x0A7C30, 0x086326]] as string[][];
val advancedSpirits = [
	['voidial', 'Voidial', 0x391B4D, 0x2a1439], 
	['deathly', 'Deathly', 0x3B3B52, 0x292939], 
	['astral', 'Astral', 0xEBF0FF, 0xc7d5ff], 
	['corporeal', 'Corporeal', 0xEDD3F5, 0xe1b7ef], 
	['chaotic', 'Chaotic', 0x6F00FF, 0x4800a5], 
	['frozen', 'Frozen', 0x97E8E2, 0x60dcd3], 
	['hungry', 'Hungry', 0xEBC738, 0xc6a214]] as string[][];
val expertSpirits = [
	['radiative', 'Radiative', 0x2A4E22, 0x1f3919], 
	['thoughtful', 'Thoughtful', 0xFF6BF0, 0xff30ea], 
	['enlightened', 'Enlightened', 0xA67910, 0x72530b]] as string[][];


#basic spirits

//eaarthen
//1, 5, 2, 3, 4
mixing.addRecipe("earthen_solution_from_spirit", "heated", <fluid:amicore:earthen_spirit_solution> * 1000, [<item:malum:earthen_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("earthen_brew_from_plant", "heated", <fluid:amicore:earthen_spirit_brew> * 1000, [<tag:items:malum:earthen_plants>, <item:malum:solar_sapball>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);      
<recipetype:immersiveengineering:fermenter>.addRecipe("earthen_solution_bottle_from_spirit_brew_bottle", <item:amicore:earthen_brew_bottle>, 10240, <item:amicore:earthen_solution_bottle>, <fluid:amicore:ether_gas> * 50);      
<recipetype:immersiveengineering:fermenter>.addRecipe("earthen_distillation_bottle_from_spirit_solution_bottle", <item:amicore:earthen_solution_bottle>, 10240, <item:amicore:earthen_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

//fifil and drain
filling.addRecipe("earthen_spirit_distillation_filling", <item:amicore:earthen_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:earthen_spirit_distillation> * 100);
filling.addRecipe("earthen_spirit_solution_filling", <item:amicore:earthen_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:earthen_spirit_solution> * 100);
filling.addRecipe("earthen_spirit_brew_filling", <item:amicore:earthen_brew_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:earthen_spirit_brew> * 100);
draining.addRecipe("earthen_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:earthen_spirit_distillation> * 100, <item:amicore:earthen_distillation_bottle>);
draining.addRecipe("earthen_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:earthen_spirit_solution> * 100, <item:amicore:earthen_solution_bottle>);
draining.addRecipe("earthen_spirit_brew_draining", <item:amicore:tempered_bottle>, <fluid:amicore:earthen_spirit_brew> * 100, <item:amicore:earthen_brew_bottle>);

//Aerial
mixing.addRecipe("aerial_solution_from_spirit", "heated", <fluid:amicore:aerial_spirit_solution> * 1000, [<item:malum:aerial_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("aerial_brew_from_plant", "heated", <fluid:amicore:aerial_spirit_brew> * 1000, [<tag:items:malum:aerous_plants>, <item:malum:solar_sapball>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);      
<recipetype:immersiveengineering:fermenter>.addRecipe("aerial_solution_bottle_from_spirit_brew_bottle", <item:amicore:aerial_brew_bottle>, 10240, <item:amicore:aerial_solution_bottle>, <fluid:amicore:ether_gas> * 50);      
<recipetype:immersiveengineering:fermenter>.addRecipe("aerial_distillation_bottle_from_spirit_solution_bottle", <item:amicore:aerial_solution_bottle>, 10240, <item:amicore:aerial_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

//fifil and drain
filling.addRecipe("aerial_spirit_distillation_filling", <item:amicore:aerial_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:aerial_spirit_distillation> * 100);
filling.addRecipe("aerial_spirit_solution_filling", <item:amicore:aerial_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:aerial_spirit_solution> * 100);
filling.addRecipe("aerial_spirit_brew_filling", <item:amicore:aerial_brew_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:aerial_spirit_brew> * 100);
draining.addRecipe("aerial_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:aerial_spirit_distillation> * 100, <item:amicore:aerial_distillation_bottle>);
draining.addRecipe("aerial_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:aerial_spirit_solution> * 100, <item:amicore:aerial_solution_bottle>);
draining.addRecipe("aerial_spirit_brew_draining", <item:amicore:tempered_bottle>, <fluid:amicore:aerial_spirit_brew> * 100, <item:amicore:aerial_brew_bottle>);

//aquatic
mixing.addRecipe("aquatic_solution_from_spirit", "heated", <fluid:amicore:aquatic_spirit_solution> * 1000, [<item:malum:aquatic_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("aquatic_brew_from_plant", "heated", <fluid:amicore:aquatic_spirit_brew> * 1000, [<tag:items:malum:aqueous_plants>, <item:malum:solar_sapball>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);      
<recipetype:immersiveengineering:fermenter>.addRecipe("aquatic_solution_bottle_from_spirit_brew_bottle", <item:amicore:aquatic_brew_bottle>, 10240, <item:amicore:aquatic_solution_bottle>, <fluid:amicore:ether_gas> * 50);      
<recipetype:immersiveengineering:fermenter>.addRecipe("aquatic_distillation_bottle_from_spirit_solution_bottle", <item:amicore:aquatic_solution_bottle>, 10240, <item:amicore:aquatic_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

//fifil and drain
filling.addRecipe("aquatic_spirit_distillation_filling", <item:amicore:aquatic_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:aquatic_spirit_distillation> * 100);
filling.addRecipe("aquatic_spirit_solution_filling", <item:amicore:aquatic_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:aquatic_spirit_solution> * 100);
filling.addRecipe("aquatic_spirit_brew_filling", <item:amicore:aquatic_brew_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:aquatic_spirit_brew> * 100);
draining.addRecipe("aquatic_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:aquatic_spirit_distillation> * 100, <item:amicore:aquatic_distillation_bottle>);
draining.addRecipe("aquatic_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:aquatic_spirit_solution> * 100, <item:amicore:aquatic_solution_bottle>);
draining.addRecipe("aquatic_spirit_brew_draining", <item:amicore:tempered_bottle>, <fluid:amicore:aquatic_spirit_brew> * 100, <item:amicore:aquatic_brew_bottle>);

//infernal
mixing.addRecipe("infernal_solution_from_spirit", "heated", <fluid:amicore:infernal_spirit_solution> * 1000, [<item:malum:infernal_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("infernal_brew_from_plant", "heated", <fluid:amicore:infernal_spirit_brew> * 1000, [<tag:items:malum:infernal_plants>, <item:malum:solar_sapball>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);      
<recipetype:immersiveengineering:fermenter>.addRecipe("infernal_solution_bottle_from_spirit_brew_bottle", <item:amicore:infernal_brew_bottle>, 10240, <item:amicore:infernal_solution_bottle>, <fluid:amicore:ether_gas> * 50);      
<recipetype:immersiveengineering:fermenter>.addRecipe("infernal_distillation_bottle_from_spirit_solution_bottle", <item:amicore:infernal_solution_bottle>, 10240, <item:amicore:infernal_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

//fifil and drain
filling.addRecipe("infernal_spirit_distillation_filling", <item:amicore:infernal_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:infernal_spirit_distillation> * 100);
filling.addRecipe("infernal_spirit_solution_filling", <item:amicore:infernal_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:infernal_spirit_solution> * 100);
filling.addRecipe("infernal_spirit_brew_filling", <item:amicore:infernal_brew_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:infernal_spirit_brew> * 100);
draining.addRecipe("infernal_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:infernal_spirit_distillation> * 100, <item:amicore:infernal_distillation_bottle>);
draining.addRecipe("infernal_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:infernal_spirit_solution> * 100, <item:amicore:infernal_solution_bottle>);
draining.addRecipe("infernal_spirit_brew_draining", <item:amicore:tempered_bottle>, <fluid:amicore:infernal_spirit_brew> * 100, <item:amicore:infernal_brew_bottle>);


//tier 2s
mixing.addRecipe("sacred_solution_from_spirit", "heated", <fluid:amicore:sacred_spirit_solution> * 1000, [<item:malum:sacred_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("sacred_solution_from_distillations", "heated", <fluid:amicore:sacred_spirit_solution> * 1000, [], [<fluid:amicore:aquatic_spirit_distillation> * 500, <fluid:amicore:earthen_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("sacred_distillation_bottle_from_spirit_solution_bottle", <item:amicore:sacred_solution_bottle>, 10240, <item:amicore:sacred_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("sacred_spirit_distillation_filling", <item:amicore:sacred_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:sacred_spirit_distillation> * 100);
filling.addRecipe("sacred_spirit_solution_filling", <item:amicore:sacred_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:sacred_spirit_solution> * 100);
draining.addRecipe("sacred_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:sacred_spirit_distillation> * 100, <item:amicore:sacred_distillation_bottle>);
draining.addRecipe("sacred_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:sacred_spirit_solution> * 100, <item:amicore:sacred_solution_bottle>);



mixing.addRecipe("wicked_solution_from_spirit", "heated", <fluid:amicore:wicked_spirit_solution> * 1000, [<item:malum:wicked_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("wicked_solution_from_distillations", "heated", <fluid:amicore:wicked_spirit_solution> * 1000, [], [<fluid:amicore:aerial_spirit_distillation> * 500, <fluid:amicore:infernal_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("wicked_distillation_bottle_from_spirit_solution_bottle", <item:amicore:wicked_solution_bottle>, 10240, <item:amicore:wicked_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("wicked_spirit_distillation_filling", <item:amicore:wicked_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:wicked_spirit_distillation> * 100);
filling.addRecipe("wicked_spirit_solution_filling", <item:amicore:wicked_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:wicked_spirit_solution> * 100);
draining.addRecipe("wicked_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:wicked_spirit_distillation> * 100, <item:amicore:wicked_distillation_bottle>);
draining.addRecipe("wicked_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:wicked_spirit_solution> * 100, <item:amicore:wicked_solution_bottle>);



mixing.addRecipe("arcane_solution_from_spirit", "heated", <fluid:amicore:arcane_spirit_solution> * 1000, [<item:malum:arcane_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("arcane_solution_from_distillations", "heated", <fluid:amicore:arcane_spirit_solution> * 1000, [], [<fluid:amicore:infernal_spirit_distillation> * 500, <fluid:amicore:aquatic_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("arcane_distillation_bottle_from_spirit_solution_bottle", <item:amicore:arcane_solution_bottle>, 10240, <item:amicore:arcane_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("arcane_spirit_distillation_filling", <item:amicore:arcane_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:arcane_spirit_distillation> * 100);
filling.addRecipe("arcane_spirit_solution_filling", <item:amicore:arcane_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:arcane_spirit_solution> * 100);
draining.addRecipe("arcane_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:arcane_spirit_distillation> * 100, <item:amicore:arcane_distillation_bottle>);
draining.addRecipe("arcane_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:arcane_spirit_solution> * 100, <item:amicore:arcane_solution_bottle>);



mixing.addRecipe("eldritch_solution_from_spirit", "heated", <fluid:amicore:eldritch_spirit_solution> * 1000, [<item:malum:eldritch_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("eldritch_solution_from_distillations", "heated", <fluid:amicore:eldritch_spirit_solution> * 1000, [], [<fluid:amicore:earthen_spirit_distillation> * 500, <fluid:amicore:aerial_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("eldritch_distillation_bottle_from_spirit_solution_bottle", <item:amicore:eldritch_solution_bottle>, 10240, <item:amicore:eldritch_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("eldritch_spirit_distillation_filling", <item:amicore:eldritch_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:eldritch_spirit_distillation> * 100);
filling.addRecipe("eldritch_spirit_solution_filling", <item:amicore:eldritch_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:eldritch_spirit_solution> * 100);
draining.addRecipe("eldritch_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:eldritch_spirit_distillation> * 100, <item:amicore:eldritch_distillation_bottle>);
draining.addRecipe("eldritch_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:eldritch_spirit_solution> * 100, <item:amicore:eldritch_solution_bottle>);


//Tier 3 spirits

mixing.addRecipe("tempestuous_brew_from_plant", "heated", <fluid:amicore:tempestuous_spirit_brew> * 1000, [<item:minecraft:prismarine_crystals>, <item:malum:solar_sapball>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);      
<recipetype:immersiveengineering:fermenter>.addRecipe("tempestuous_solution_bottle_from_spirit_brew_bottle", <item:amicore:tempestuous_brew_bottle>, 10240, <item:amicore:tempestuous_solution_bottle>, <fluid:amicore:ether_gas> * 50);      
mixing.addRecipe("herbal_brew_from_plant", "heated", <fluid:amicore:herbal_spirit_brew> * 1000, [<tag:items:malum:herbal_plants>, <item:malum:solar_sapball>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);      
<recipetype:immersiveengineering:fermenter>.addRecipe("herbal_solution_bottle_from_spirit_brew_bottle", <item:amicore:herbal_brew_bottle>, 10240, <item:amicore:herbal_solution_bottle>, <fluid:amicore:ether_gas> * 50);      

filling.addRecipe("tempestuous_spirit_brew_filling", <item:amicore:tempestuous_brew_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:tempestuous_spirit_brew> * 100);
draining.addRecipe("tempestuous_spirit_brew_draining", <item:amicore:tempered_bottle>, <fluid:amicore:tempestuous_spirit_brew> * 100, <item:amicore:tempestuous_brew_bottle>);
filling.addRecipe("herbal_spirit_brew_filling", <item:amicore:herbal_brew_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:herbal_spirit_brew> * 100);
draining.addRecipe("herbal_spirit_brew_draining", <item:amicore:tempered_bottle>, <fluid:amicore:herbal_spirit_brew> * 100, <item:amicore:herbal_brew_bottle>);


mixing.addRecipe("malicious_solution_from_spirit", "heated", <fluid:amicore:malicious_spirit_solution> * 1000, [<item:malum:malicious_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("malicious_solution_from_distillations", "heated", <fluid:amicore:malicious_spirit_solution> * 1000, [], [<fluid:amicore:wicked_spirit_distillation> * 500, <fluid:amicore:arcane_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("malicious_distillation_bottle_from_spirit_solution_bottle", <item:amicore:malicious_solution_bottle>, 10240, <item:amicore:malicious_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("malicious_spirit_distillation_filling", <item:amicore:malicious_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:malicious_spirit_distillation> * 100);
filling.addRecipe("malicious_spirit_solution_filling", <item:amicore:malicious_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:malicious_spirit_solution> * 100);
draining.addRecipe("malicious_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:malicious_spirit_distillation> * 100, <item:amicore:malicious_distillation_bottle>);
draining.addRecipe("malicious_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:malicious_spirit_solution> * 100, <item:amicore:malicious_solution_bottle>);

mixing.addRecipe("magnetic_solution_from_spirit", "heated", <fluid:amicore:magnetic_spirit_solution> * 1000, [<item:malum:magnetic_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("magnetic_solution_from_distillations", "heated", <fluid:amicore:magnetic_spirit_solution> * 1000, [], [<fluid:amicore:arcane_spirit_distillation> * 500, <fluid:amicore:sacred_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("magnetic_distillation_bottle_from_spirit_solution_bottle", <item:amicore:magnetic_solution_bottle>, 10240, <item:amicore:magnetic_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("magnetic_spirit_distillation_filling", <item:amicore:magnetic_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:magnetic_spirit_distillation> * 100);
filling.addRecipe("magnetic_spirit_solution_filling", <item:amicore:magnetic_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:magnetic_spirit_solution> * 100);
draining.addRecipe("magnetic_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:magnetic_spirit_distillation> * 100, <item:amicore:magnetic_distillation_bottle>);
draining.addRecipe("magnetic_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:magnetic_spirit_solution> * 100, <item:amicore:magnetic_solution_bottle>);

mixing.addRecipe("ruinous_solution_from_spirit", "heated", <fluid:amicore:ruinous_spirit_solution> * 1000, [<item:malum:ruinous_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("ruinous_solution_from_distillations", "heated", <fluid:amicore:ruinous_spirit_solution> * 1000, [], [<fluid:amicore:wicked_spirit_distillation> * 500, <fluid:amicore:eldritch_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("ruinous_distillation_bottle_from_spirit_solution_bottle", <item:amicore:ruinous_solution_bottle>, 10240, <item:amicore:ruinous_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("ruinous_spirit_distillation_filling", <item:amicore:ruinous_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:ruinous_spirit_distillation> * 100);
filling.addRecipe("ruinous_spirit_solution_filling", <item:amicore:ruinous_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:ruinous_spirit_solution> * 100);
draining.addRecipe("ruinous_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:ruinous_spirit_distillation> * 100, <item:amicore:ruinous_distillation_bottle>);
draining.addRecipe("ruinous_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:ruinous_spirit_solution> * 100, <item:amicore:ruinous_solution_bottle>);

mixing.addRecipe("tempestuous_solution_from_spirit", "heated", <fluid:amicore:tempestuous_spirit_solution> * 1000, [<item:malum:tempestuous_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("tempestuous_solution_from_distillations", "heated", <fluid:amicore:tempestuous_spirit_solution> * 1500, [], [<fluid:amicore:wicked_spirit_distillation> * 500, <fluid:amicore:aquatic_spirit_distillation> * 500, <fluid:amicore:sacred_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("tempestuous_distillation_bottle_from_spirit_solution_bottle", <item:amicore:tempestuous_solution_bottle>, 10240, <item:amicore:tempestuous_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("tempestuous_spirit_distillation_filling", <item:amicore:tempestuous_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:tempestuous_spirit_distillation> * 100);
filling.addRecipe("tempestuous_spirit_solution_filling", <item:amicore:tempestuous_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:tempestuous_spirit_solution> * 100);
draining.addRecipe("tempestuous_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:tempestuous_spirit_distillation> * 100, <item:amicore:tempestuous_distillation_bottle>);
draining.addRecipe("tempestuous_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:tempestuous_spirit_solution> * 100, <item:amicore:tempestuous_solution_bottle>);

mixing.addRecipe("electric_solution_from_spirit", "heated", <fluid:amicore:electric_spirit_solution> * 1000, [<item:malum:electric_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("electric_solution_from_distillations", "heated", <fluid:amicore:electric_spirit_solution> * 1000, [], [<fluid:amicore:arcane_spirit_distillation> * 500, <fluid:amicore:eldritch_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("electric_distillation_bottle_from_spirit_solution_bottle", <item:amicore:electric_solution_bottle>, 10240, <item:amicore:electric_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("electric_spirit_distillation_filling", <item:amicore:electric_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:electric_spirit_distillation> * 100);
filling.addRecipe("electric_spirit_solution_filling", <item:amicore:electric_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:electric_spirit_solution> * 100);
draining.addRecipe("electric_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:electric_spirit_distillation> * 100, <item:amicore:electric_distillation_bottle>);
draining.addRecipe("electric_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:electric_spirit_solution> * 100, <item:amicore:electric_solution_bottle>);

mixing.addRecipe("mechanical_solution_from_spirit", "heated", <fluid:amicore:mechanical_spirit_solution> * 1000, [<item:malum:mechanical_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("mechanical_solution_from_distillations", "heated", <fluid:amicore:mechanical_spirit_solution> * 1000, [], [<fluid:amicore:sacred_spirit_distillation> * 500, <fluid:amicore:eldritch_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("mechanical_distillation_bottle_from_spirit_solution_bottle", <item:amicore:mechanical_solution_bottle>, 10240, <item:amicore:mechanical_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("mechanical_spirit_distillation_filling", <item:amicore:mechanical_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:mechanical_spirit_distillation> * 100);
filling.addRecipe("mechanical_spirit_solution_filling", <item:amicore:mechanical_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:mechanical_spirit_solution> * 100);
draining.addRecipe("mechanical_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:mechanical_spirit_distillation> * 100, <item:amicore:mechanical_distillation_bottle>);
draining.addRecipe("mechanical_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:mechanical_spirit_solution> * 100, <item:amicore:mechanical_solution_bottle>);

mixing.addRecipe("herbal_solution_from_spirit", "heated", <fluid:amicore:herbal_spirit_solution> * 1000, [<item:malum:herbal_spirit>, <item:minecraft:sugar>], [<fluid:minecraft:water> * 1000], 400);
mixing.addRecipe("herbal_solution_from_distillations", "heated", <fluid:amicore:herbal_spirit_solution> * 1000, [], [<fluid:amicore:sacred_spirit_distillation> * 500, <fluid:amicore:earthen_spirit_distillation> * 500], 400);
<recipetype:immersiveengineering:fermenter>.addRecipe("herbal_distillation_bottle_from_spirit_solution_bottle", <item:amicore:herbal_solution_bottle>, 10240, <item:amicore:herbal_distillation_bottle>, <fluid:amicore:ether_gas> * 50);

filling.addRecipe("herbal_spirit_distillation_filling", <item:amicore:herbal_distillation_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:herbal_spirit_distillation> * 100);
filling.addRecipe("herbal_spirit_solution_filling", <item:amicore:herbal_solution_bottle>, <item:amicore:tempered_bottle>, <fluid:amicore:herbal_spirit_solution> * 100);
draining.addRecipe("herbal_spirit_distillation_draining", <item:amicore:tempered_bottle>, <fluid:amicore:herbal_spirit_distillation> * 100, <item:amicore:herbal_distillation_bottle>);
draining.addRecipe("herbal_spirit_solution_draining", <item:amicore:tempered_bottle>, <fluid:amicore:herbal_spirit_solution> * 100, <item:amicore:herbal_solution_bottle>);



//tier 4 spirits

//tier 5 spirits


//Magical matter 1
filling.addRecipe("ether_bulb_filling", <item:malum:yellow_ether>, <item:malum:solar_sapball>, <fluid:amicore:ether_gas> * 50);
mixing.addRecipe("magical_matter_1", "heated", <fluid:amicore:magical_matter_1> * 1000, [<item:malum:yellow_ether>], [<fluid:minecraft:water> * 1000], 400);


//magical matter 2

//magical matter 3

//magical matter 4