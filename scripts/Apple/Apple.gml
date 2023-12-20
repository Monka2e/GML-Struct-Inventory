function Apple(itemStack) : BaseItem(itemStack) constructor {
	ID = ItemID.APPLE;
	displayName = "Apple";
	pickupSprite = sItemPickupApple;
	inventorySprite = sItemInventoryApple;
	maxStack = 10;
	static drop = function(dropAll) {
		if (dropAll) {
			var newItem = new Apple(stack);
			stack = 0;
			return newItem;
		} else {
			stack--;
			return new Apple(1);
		}
	};
};