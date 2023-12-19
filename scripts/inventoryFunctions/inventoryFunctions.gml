var itemNone = new BaseItem();
global.INVENTORY_SIZE = 10;
global.INVENTORY = array_create(global.INVENTORY_SIZE, itemNone);

function inventoryAddItem(item, startIndex = 0) {
	if (startIndex > array_length(global.INVENTORY)) { return; };
	for (var i = startIndex; i < global.INVENTORY_SIZE; i++) {
		if (global.INVENTORY[i].ID == item.ID) {
			item.stack = global.INVENTORY[i].addToStack(item.stack);
			if (item.stack > 0) {
				inventoryAddItem(item, i + 1);
			}
			break;
		}
	}
}
