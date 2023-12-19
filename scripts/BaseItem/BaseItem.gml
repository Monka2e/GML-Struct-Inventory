function BaseItem(itemStack = 1) constructor {
	ID = ItemID.NONE;
	displayName = "none";
	pickupSprite = sItemPickupNone;
	inventorySprite = sItemInventoryNone;
	maxStack = 999;
	static onClick = function() {
		show_debug_message(self);
	};
	
	static addToStack = function(stackAdd) {
		var leftover = 0;
		if (stack + stackAdd > maxStack) {
			leftover = maxStack - stack + stackAdd;
			stack = maxStack;
		} else {
			stack += stackAdd;
		}
		return leftover;
	};
	
	stack = itemStack;
}

enum ItemID {
	APPLE,
	ORANGE,
	PEAR,
	AXE,
	NONE
}
