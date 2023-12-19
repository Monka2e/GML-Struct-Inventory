var itemNone = new BaseItem();
global.INVENTORY_SIZE = 10;
global.INVENTORY = array_create(global.INVENTORY_SIZE, itemNone);

function inventoryAddItem(item) {
	for (var i = 0; i < global.INVENTORY_SIZE; i++) {
		if (global.INVENTORY[i].ID == item.ID) {
			global.INVENTORY[i].addToStack(item.stack);
			break;
		}
	}
}
