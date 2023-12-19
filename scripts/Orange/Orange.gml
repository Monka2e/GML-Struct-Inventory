function Orange(itemStack) : BaseItem(itemStack) constructor {
	ID = ItemID.ORANGE;
	displayName = "Orange";
	pickupSprite = sItemPickupOrange;
	inventorySprite = sItemInventoryOrange;
	maxStack = 10;
	static drop = function() {
		stack--;
		return new Orange(1);
	};
};