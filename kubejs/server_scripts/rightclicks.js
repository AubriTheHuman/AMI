events.listen('block.right_click', function (event) {


    //anvil repair kit
    
    const { block, hand, item, world, player } = event;
    if (hand.name() != "MAIN_HAND") return;
  
    if (block.equals("minecraft:chipped_anvil")) {
        var facing = block.properties.facing;
        if (item == 'amicore:anvil_repair') {
            event.world.getBlock(block.x, block.y, block.z).set('minecraft:anvil', {'facing': facing});
            player.damageHeldItem(hand, 1);
            event.cancel();
        }
    }

    if (block.equals("minecraft:damaged_anvil")) {
        var facing = block.properties.facing;
        if (item == 'amicore:anvil_repair') {
            event.world.getBlock(block.x, block.y, block.z).set('minecraft:chipped_anvil', {'facing': facing});
            player.damageHeldItem(hand, 1);
            event.cancel();
        }
    }

})