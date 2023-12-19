randomize();

for(var i = 0; i < array_length(global.INVENTORY); i++) {
	var randomStack = irandom_range(1, 5);
	global.INVENTORY[i] =  getItemFromID(irandom_range(0, ItemID.NONE - 1), randomStack);
}

selectedInventory = 0;