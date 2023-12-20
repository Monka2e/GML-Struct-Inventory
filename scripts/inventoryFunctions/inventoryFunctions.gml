var itemNone = noone;
global.INVENTORY_SIZE = 10;
global.INVENTORY = array_create(global.INVENTORY_SIZE, itemNone);

function inventoryAddItemToEmptySlot(item, pickupItem = noone) {
	oChatTextField.chatField.addLine("attempt to add inventory item '" + item.displayName + "' with stack of '" + string(item.stack) + "'");
	for (var i = 0; i < global.INVENTORY_SIZE; i++) {
		if (global.INVENTORY[i] == noone || global.INVENTORY[i].ID == ItemID.NONE) {
			global.INVENTORY[i] = item;
			instance_destroy(pickupItem);
			break;
		}
	}
}

function inventoryAddItemStack(item, pickupItem) {
	for (var i = 0; i < global.INVENTORY_SIZE; i++) {
		if (global.INVENTORY[i] != noone && global.INVENTORY[i].ID == item.ID) {
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

function inventoryDropItem(inventoryIndex, dropAll) {
	if (global.INVENTORY[inventoryIndex] != noone) {
		var dropItem = global.INVENTORY[inventoryIndex].drop(dropAll);
		
		if (global.INVENTORY[inventoryIndex].stack <= 0) { global.INVENTORY[inventoryIndex] = noone };
		var dropItemPickup = instance_create_layer(mouse_x, mouse_y, layer_get_id("Instances"), oItemPickup);
		dropItemPickup.item = dropItem;
	}
}
