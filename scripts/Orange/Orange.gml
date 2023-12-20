function Orange(itemStack) : BaseItem(itemStack) constructor {
	ID = ItemID.ORANGE;
	displayName = "Orange";
	pickupSprite = sItemPickupOrange;
	inventorySprite = sItemInventoryOrange;
	maxStack = 10;
	static drop = function(dropAll) {
		if (dropAll) {
			var newItem = new Orange(stack);
			stack = 0;
			return newItem;
		} else {
			stack--;
			return new Orange(1);
		}
	};
};