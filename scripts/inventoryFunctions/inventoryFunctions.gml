var itemNone = new BaseItem();
global.INVENTORY_SIZE = 10;
global.INVENTORY = array_create(global.INVENTORY_SIZE, itemNone);

function inventoryAddItemToEmptySlot(item, pickupItem = noone) {
	oChatTextField.chatField.addLine("attempt to add inventory item '" + item.displayName + "' with stack of '" + string(item.stack) + "'");
	for (var i = 0; i < global.INVENTORY_SIZE; i++) {
		if (global.INVENTORY[i].ID == ItemID.NONE) {
			global.INVENTORY[i] = item;
			instance_destroy(pickupItem);
			break;
		}
	}
}

function inventoryAddItemStack(item, pickupItem) {
	for (var i = 0; i < global.INVENTORY_SIZE; i++) {
		if (global.INVENTORY[i].ID == item.ID) {
			item.stack = global.INVENTORY[i].addToStack(item.stack);
			if (item.stack == 0) {
				instance_destroy(pickupItem);
				break;
			}
		}
	}
	if (item.stack > 0) {
		inventoryAddItemToEmptySlot(item, pickupItem);
	}
}

function inventoryDropItem(inventoryIndex) {
	if ((global.INVENTORY[inventoryIndex].ID != ItemID.NONE) && (global.INVENTORY[inventoryIndex] != noone)) {
		global.INVENTORY[inventoryIndex] = new BaseItem();
	}
}
