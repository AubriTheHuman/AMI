
#val possibleItems = new List<IItemStack>();
#possibleItems.add(<item:minecraft:iron_ingot>);
#possibleItems.add(<item:minecraft:gold_ingot>);
#possibleItems.add(<item:minecraft:diamond>);
#possibleItems.add(<item:minecraft:emerald>);
#possibleItems.add(<item:minecraft:ender_pearl>);
#possibleItems.add(<item:minecraft:blaze_rod>);
#possibleItems.add(<item:minecraft:ghast_tear>);

#CTEventManager.register<PlayerInteractBlockEvent>((event) => {

#    if (event.isStart()) {

#        val player = event.player as MCPlayerEntity;
#        val inventory = player.getInventory() as PlayerInventory;

#        if(event.getBlock() == <block:minecraft:cauldron>) {
#          inventory.give(<item:minecraft:iron_ingot);
#        }
#    }
#});
