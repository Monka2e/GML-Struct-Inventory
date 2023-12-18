enum ItemID {
	apple,
	orange,
	pear,
	axe,
	none
}

function Item(itemID, itemName, pickupSprite_ = sItemPickupNone, inventorySprite_ = sItemInventoryNone, itemStack = 1, maxStack_ = 5) constructor {
	ID = itemID;
	displayName = itemName;
	pickupSprite = pickupSprite_;
	inventorySprite = inventorySprite_
	stack = itemStack;
	maxStack = 1;
}