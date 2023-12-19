enum ItemID {
	APPLE,
	ORANGE,
	PEAR,
	AXE,
	NONE
}

function Item(itemStack = 1) constructor {
	ID = ItemID.NONE;
	displayName = "none";
	pickupSprite = sItemPickupNone;
	inventorySprite = sItemInventoryNone;
	maxStack = 999;
	
	stack = itemStack;
}