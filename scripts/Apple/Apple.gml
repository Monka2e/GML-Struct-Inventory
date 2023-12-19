function Apple(itemStack) : Item(itemStack) constructor {
	ID = ItemID.APPLE;
	displayName = "Apple";
	pickupSprite = sItemPickupApple;
	inventorySprite = sItemInventoryApple;
	maxStack = 999;
}