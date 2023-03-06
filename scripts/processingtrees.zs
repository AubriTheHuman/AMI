#priority 20

import mods.amicore.WorkingTreeBuilder;

//we want this to go first
WorkingTreeBuilder.clearTrees();

WorkingTreeBuilder.create("test", <item:minecraft:stone>, 100, 100, true)
    .addItem(<item:amicore:lv_circuit> * 4, 100, 118, true)
    .addItem(<item:minecraft:grass_block> * 128, 100, 136, false)
    .addFluid(<fluid:amicore:ether_gas>, 100, 154, true)
    .addFluid(<fluid:minecraft:lava> * 1000, 100, 172, false)
    .addArrow(2, 2, "up")
    .addArrow(2, 18, "right")
    .addArrow(2, 34, "down")
    .addArrow(2, 50, "left")
    .addLongArrow(65, 66, "up")
    .addLongArrow(65, 92, "right")
    .addLongArrow(65, 118, "down")
    .addLongArrow(65, 144, "left")
    .addClockwiseArrow(20, 2, "up")
    .addClockwiseArrow(20, 24, "right")
    .addClockwiseArrow(20, 46, "down")
    .addClockwiseArrow(20, 68, "left")
    .addAntiClockwiseArrow(42, 2, "up")
    .addAntiClockwiseArrow(42, 24, "right")
    .addAntiClockwiseArrow(42, 46, "down")
    .addAntiClockwiseArrow(42, 68, "left")
    .addLine(68, 2, "up")
    .addLine(68, 18, "right")
    .addLine(68, 34, "down")
    .addLine(68, 50, "left")
    .addDrawableObject("tool", "beaker", 2, 100, "up")
    .addDrawableObject("tool", "hammer", 2, 116, "up")
    .addDrawableObject("tool", "knife", 2, 132, "up")
    .addDrawableObject("tool", "shears", 2, 148, "up")
    .addDrawableObject("tool", "solderer", 2, 164, "up")
    .addDrawableObject("slot", "none", 20, 100, "up")
    .addDrawableObject("slot_medium", "none", 20, 118, "up")
    .addDrawableObject("slot_large", "none", 20, 140, "up")
    .register();