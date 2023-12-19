function Axe(itemStack) : BaseItem(itemStack) constructor {
	ID = ItemID.AXE;
	displayName = "Axe";
	pickupSprite = sItemPickupAxe;
	inventorySprite = sItemInventoryAxe;
	maxStack = 1;
	static drop = function() {
		stack--;
		return new Axe(1);
	};
};