function Apple(itemStack) : BaseItem(itemStack) constructor {
	ID = ItemID.APPLE;
	displayName = "Apple";
	pickupSprite = sItemPickupApple;
	inventorySprite = sItemInventoryApple;
	maxStack = 10;
	static drop = function() {
		stack--;
		return new Apple(1);
	};
};