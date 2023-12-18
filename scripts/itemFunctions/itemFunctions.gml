enum ItemID {
	apple,
	orange,
	pear,
	axe,
	none
}

function Item(itemID, itemName, itemStack = 1, maxStack_ = 5) constructor {
	ID = itemID;
	displayName = itemName;
	stack = itemStack;
	maxStack = 1;
}