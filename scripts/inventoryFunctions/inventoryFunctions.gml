var itemNone = new BaseItem();
global.INVENTORY_SIZE = 10;
global.INVENTORY = array_create(global.INVENTORY_SIZE, itemNone);

function inventoryAddItemToEmptySlot(item) {
	show_debug_message("attempt to add inventory item '" + item.displayName + "' with stack of '" + string(item.stack) + "'");
	for (var i = 0; i < global.INVENTORY_SIZE; i++) {
		if (global.INVENTORY[i].ID == ItemID.NONE) {
			global.INVENTORY[i] = item;
			break;
		}
	}
}

function inventoryAddItemStack(item, startIndex = 0) {
	// Check inventory to stack items
	for (var i = startIndex; i < global.INVENTORY_SIZE; i++) {
		if (global.INVENTORY[i].ID == item.ID) {
			item.stack = global.INVENTORY[i].addToStack(item.stack);
			if (item.stack == 0) {
				break;
			}
		}
	}
	if (item.stack > 0) {
		inventoryAddItem(item);
	}
}
