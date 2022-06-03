var delayTimer = 40;
const chelperClass = java('top.theillusivec4.curios.api.CuriosApi');
const chelper = chelperClass.getCuriosHelper();
const param1 = java("net.minecraft.entity.LivingEntity");
const param2 = java("net.minecraft.item.Item");
const tongitem = ['bountifulbaubles:gloves_digging_diamond', 'bountifulbaubles:shulker_heart'];
const method1 = chelper.getClass().getDeclaredMethod("findCurios", param1, param2);

// hot ingot damage
onEvent('player.tick', event => {
    // console.log(delayTimer);
    if(delayTimer > 0) { delayTimer--; return; }
    else { delayTimer = 40; }

    let player = event.player;
    if(event.player.isCreativeMode() || event.player.isSpectator()) return;
    let inventory = player.inventory;

    // console.log("survival");

    let methodParam1 = player.minecraftLivingEntity;
    let methodParam2 = Item.of("amicore:metal_tongs").item;
    let output = null;
    try {
        // console.log(method1);
        output = method1.invoke(chelper, methodParam1, methodParam2);
    } catch (error) {
        console.erorr(error);
        console.log(error.getMessage());
        console.log(error.getLocalizedMessage());
    }

    if(output == null) reuturn;
    let flagHotIngot = false;
    // console.log(output);
    // console.log(output.size());
    // for (let slot of output){
    //     console.log(Item.of(slot.stack()));
    // }
    if(output.size() <= 0)  {
        for(let i = 0; i < glowings1.length; i++) {
            if(inventory.count(glowings1[i]) > 0)  {
                // console.log("item and no gloves");
                flagHotIngot = true;
                break;
            } else if(inventory.count(glowings2[i]) > 0)  {
                // console.log("item and no gloves");
                flagHotIngot = true;
                break;
            } else if(inventory.count(glowings3[i]) > 0)  {
                // console.log("item and no gloves");
                flagHotIngot = true;
                break;
            } else if(inventory.count(glowings4[i]) > 0)  {
                // console.log("item and no gloves");
                flagHotIngot = true;
                break;
            } else {
                continue;
            }
        }

        if(flagHotIngot) {
            // console.log("damaging player")
            player.attack("overheat", 1.0);

        }
    } else {
        //damage tong item, mayb in the future
        // console.log("has
        // gloves");
        // let tongItem = Item.of(output.get(0).getStack());
        // if (!tongItem.empty) {
		// 	tongItem.ItemStack.hurtAndBreak(amount, minecraftLivingEntity, livingEntity -> onBroken.accept(ItemStackJS.of(stack)));

		// 	if (tongItem.empty) {
		// 		minecraftLivingEntity.setItemSlot(slot, ItemStack.EMPTY);
		// 	}
		// }
    }

})