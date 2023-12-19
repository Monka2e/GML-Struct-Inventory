function Pear(itemStack) : BaseItem(itemStack) constructor {
	ID = ItemID.PEAR;
	displayName = "Pear";
	pickupSprite = sItemPickupPear;
	inventorySprite = sItemInventoryPear;
	maxStack = 10;
	static drop = function() {
		stack--;
		return new Pear(1);
	};
};