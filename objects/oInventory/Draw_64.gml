for (var i = 0; i < array_length(global.INVENTORY); i++) {
	draw_text(20, 20 * i, global.INVENTORY[i].displayName + " (" + string(global.INVENTORY[i].stack) + ")");
}
