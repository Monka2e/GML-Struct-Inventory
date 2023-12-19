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
			leftover = stack + stackAdd - maxStack;
			stack = maxStack;
		} else {
			stack += stackAdd;
		}
		show_debug_message("leftover: " + string(leftover));
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
};
