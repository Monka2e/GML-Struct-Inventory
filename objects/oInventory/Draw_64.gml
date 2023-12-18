for (var i = 0; i < array_length(global.INVENTORY); i++) {
	var inventoryText = global.INVENTORY[i].displayName;
	if (global.INVENTORY[i].ID != ItemID.none) {
		inventoryText += ": " + string(global.INVENTORY[i].stack)
	}
	
	draw_sprite(global.INVENTORY[i].inventorySprite, 0, 20, 20 + 25 * i);
	draw_text(40, 20 + 25 * i, inventoryText);
}
