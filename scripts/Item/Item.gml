function Item(itemStack = 1) constructor {
	ID = ItemID.NONE;
	displayName = "none";
	pickupSprite = sItemPickupNone;
	inventorySprite = sItemInventoryNone;
	maxStack = 999;
	static OnClick = function() {
		show_debug_message("on click event for item name: " + displayName);
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
