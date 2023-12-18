for (var i = 0; i < array_length(global.INVENTORY); i++) {
	var inventoryText = global.INVENTORY[i].displayName;
	if (global.INVENTORY[i].ID != ItemID.none) {
		inventoryText += ": " + string(global.INVENTORY[i].stack)
	}
	draw_text(20, 20 + 20 * i, inventoryText);
}
