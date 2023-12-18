var itemNone = new Item(ItemID.none, "none", sItemPickupNone, sItemInventoryNone, 0, 0);
global.INVENTORY_SIZE = 10;
global.INVENTORY = array_create(global.INVENTORY_SIZE, itemNone);

function inventoryAddItem(item) {
	for (var i = 0; i < global.INVENTORY_SIZE; i++) {
		if (global.INVENTORY[i].ID == item.ID) {
			global.INVENTORY[i].stack += item.stack;
			break;
		}
	}
}
