var itemNone = new BaseItem();
global.INVENTORY_SIZE = 10;
global.INVENTORY = array_create(global.INVENTORY_SIZE, itemNone);

function inventoryAddItem(item) {
	show_debug_message("should be adding inventory item '" + item.displayName + "' with stack of '" + string(item.stack) + "'");
}

function inventoryAddItemStack(item, startIndex = 0) {
	// Check inventory to stack items
	for (var i = startIndex; i < global.INVENTORY_SIZE; i++) {
		if (global.INVENTORY[i].ID == item.ID) {
			item.stack = global.INVENTORY[i].addToStack(item.stack);
			if (item.stack > 0) {
				inventoryAddItemStack(item, i + 1);
			}
		}
	}
}
