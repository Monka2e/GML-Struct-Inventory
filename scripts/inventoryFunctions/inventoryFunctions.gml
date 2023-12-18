var itemNone = new Item(ItemID.none, "none", sItemPickupNone, sItemInventoryNone, 0, 0);
global.INVENTORY_SIZE = 10;
global.INVENTORY = array_create(global.INVENTORY_SIZE, itemNone);
