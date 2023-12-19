function getItemFromID(itemID, itemStack = 1) {
	switch(itemID) {
		case ItemID.APPLE:
			return new Apple(itemStack);
			
		case ItemID.ORANGE:
			return new Orange(itemStack);
			
		case ItemID.PEAR:
			return new Pear(itemStack);
			
		case ItemID.AXE:
			return new Axe(itemStack);
			
		case ItemID.NONE:
			throw("item cannot be made as none");
			
		default:
			throw("invalid item ID");
	}
}