function Orange(itemStack) : Item(itemStack) constructor {
	ID = ItemID.APPLE;
	displayName = "Orange";
	pickupSprite = sItemPickupOrange;
	inventorySprite = sItemInventoryOrange;
	maxStack = 999;
}