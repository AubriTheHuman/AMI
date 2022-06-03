
#brasses
<recipetype:tconstruct:alloying>.removeByName("tconstruct:smeltery/alloys/molten_brass");
<recipetype:tconstruct:alloying>.addRecipe("better_brass", [<fluid:tconstruct:molten_copper> * 16, <fluid:tconstruct:molten_zinc> * 16], <fluid:tconstruct:molten_brass> * 32, 670);
<recipetype:tconstruct:alloying>.addRecipe("ferrous_brass", [<fluid:tconstruct:molten_brass> * 16, <fluid:tconstruct:molten_iron> * 2], <fluid:amicore:molten_iron_brass> * 16, 980);
<recipetype:tconstruct:alloying>.addRecipe("tinny_brass", [<fluid:tconstruct:molten_brass> * 16, <fluid:tconstruct:molten_tin> * 2], <fluid:amicore:molten_tin_brass> * 16, 980);
<recipetype:tconstruct:alloying>.addRecipe("silicon_brass", [<fluid:tconstruct:molten_brass> * 16, <fluid:amicore:molten_silicon> * 2], <fluid:amicore:molten_silicon_brass> * 16, 980);
<recipetype:tconstruct:alloying>.addRecipe("leaded_brass", [<fluid:tconstruct:molten_brass> * 16, <fluid:tconstruct:molten_lead> * 2], <fluid:amicore:molten_lead_brass> * 16, 980);

#sterling
<recipetype:tconstruct:alloying>.addRecipe("sterling_silver_copper", [<fluid:tconstruct:molten_silver> * 16, <fluid:tconstruct:molten_copper> * 2], <fluid:amicore:molten_sterling_silver> * 18, 680);
<recipetype:tconstruct:alloying>.addRecipe("sterling_silver_tin", [<fluid:tconstruct:molten_silver> * 16, <fluid:tconstruct:molten_tin> * 2], <fluid:amicore:molten_sterling_silver> * 18, 680);

#bronze
<recipetype:tconstruct:alloying>.removeByName("tconstruct:smeltery/alloys/molten_bronze");
<recipetype:immersiveengineering:alloy>.removeByName("immersiveengineering:alloysmelter/bronze");
<recipetype:tconstruct:alloying>.addRecipe("better_bronze", [<fluid:tconstruct:molten_copper> * 12, <fluid:tconstruct:molten_tin> * 4], <fluid:tconstruct:molten_bronze> * 16, 680);

#solder
<recipetype:tconstruct:alloying>.addRecipe("solder_1", [<fluid:tconstruct:molten_lead> * 1, <fluid:tconstruct:molten_tin> * 1], <fluid:amicore:molten_solder> * 2, 1340);
