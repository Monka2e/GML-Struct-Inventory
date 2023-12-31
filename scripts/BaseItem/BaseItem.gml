function BaseItem(itemStack = 1) constructor {
	ID = ItemID.NONE;
	displayName = "none";
	pickupSprite = sItemPickupNone;
	inventorySprite = sItemInventoryNone;
	maxStack = 999;
	static drop = function(dropAll) {
		if (dropAll) {
			var newItem = new BaseItem(stack);
			stack = 0;
			return newItem;
		} else {
			stack--;
			return new BaseItem(1);
		}
	};
	
	static onClick = function() {
		oChatTextField.chatField.addLine("on click for " + displayName);
	};
	
	static onRightClick = function() {
		oChatTextField.chatField.addLine("on right click for " + displayName);
	};
	
	static addToStack = function(stackAdd) {
		var leftover = 0;
		if (stack + stackAdd > maxStack) {
			leftover = stack + stackAdd - maxStack;
			stack = maxStack;
		} else {
			stack += stackAdd;
		}
		return leftover;
	};
	
	stack = itemStack;
}

enum ItemID {
	APPLE,
	ORANGE,
	PEAR,
	AXE,
	NONE
};
