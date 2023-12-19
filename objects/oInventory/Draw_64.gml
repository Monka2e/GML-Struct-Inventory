for (var i = 0; i < array_length(global.INVENTORY); i++) {
	var inventoryText = global.INVENTORY[i].displayName;
	if (global.INVENTORY[i].ID != ItemID.NONE) {
		inventoryText += ": " + string(global.INVENTORY[i].stack)
	}
	
	draw_sprite(global.INVENTORY[i].inventorySprite, 0, 20, 20 + 25 * i);
	draw_text(40, 20 + 25 * i, inventoryText);
}

draw_rectangle(20, 20 + 25 * selectedInventory, 120, 40 + 25 * selectedInventory, true);

draw_text(150, 20, selectedInventory);