var apple = new Item(ItemID.apple, "Apple", sItemPickupApple, sItemInventoryApple, 3, 10);
var apple2 = new Item(ItemID.apple, "Apple", sItemPickupApple, sItemInventoryApple, 7, 10);
array_set(global.INVENTORY, 0, apple);
array_set(global.INVENTORY, 1, apple2);

selectedInventory = 0;