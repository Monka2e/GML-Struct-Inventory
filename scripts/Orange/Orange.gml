function Orange(itemStack) : Item(itemStack) constructor {
	ID = ItemID.ORANGE;
	displayName = "Orange";
	pickupSprite = sItemPickupOrange;
	inventorySprite = sItemInventoryOrange;
	maxStack = 999;
}