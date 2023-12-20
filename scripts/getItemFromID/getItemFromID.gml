function getItemFromID(itemID, itemStack = 1) {
	var newItem = new BaseItem(itemStack);
	switch(itemID) {
		case ItemID.APPLE:
			newItem = new Apple(itemStack);
			break;
			
		case ItemID.ORANGE:
			newItem = new Orange(itemStack);
			break;
			
		case ItemID.PEAR:
			newItem = new Pear(itemStack);
			break;
			
		case ItemID.AXE:
			newItem = new Axe(itemStack);
			break;
			
		case ItemID.NONE:
			show_debug_message("item made as none");
			break;
			
		default:
			throw("invalid item ID");
			break;
	}
	
	newItem.stack = min(newItem.stack, newItem.maxStack);
	return newItem;
}