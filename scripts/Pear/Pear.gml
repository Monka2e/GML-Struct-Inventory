function Pear(itemStack) : BaseItem(itemStack) constructor {
	ID = ItemID.PEAR;
	displayName = "Pear";
	pickupSprite = sItemPickupPear;
	inventorySprite = sItemInventoryPear;
	maxStack = 10;
	static drop = function(dropAll) {
		if (dropAll) {
			var newItem = new Pear(stack);
			stack = 0;
			return newItem;
		} else {
			stack--;
			return new Pear(1);
		}
	};
};