function Axe(itemStack) : BaseItem(itemStack) constructor {
	ID = ItemID.AXE;
	displayName = "Axe";
	pickupSprite = sItemPickupAxe;
	inventorySprite = sItemInventoryAxe;
	maxStack = 1;
	static drop = function(dropAll) {
		if (dropAll) {
			var newItem = new Axe(stack);
			stack = 0;
			return newItem;
		} else {
			stack--;
			return new Axe(1);
		}
	};
};