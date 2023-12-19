global.INVENTORY[0] = new Apple(2);
global.INVENTORY[1] = new Apple(1);
global.INVENTORY[2] = new Orange(4);

for(var i = 0; i < array_length(global.INVENTORY); i++) {
	var randomStack = irandom_range(1, 5);
	global.INVENTORY[i] =  getItemFromID(irandom_range(0, ItemID.NONE - 1), randomStack);
}

selectedInventory = 0;