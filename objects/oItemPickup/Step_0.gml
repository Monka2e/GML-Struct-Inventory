if (position_meeting(mouse_x, mouse_y, self)) {
	if (keyboard_check_pressed(ord("E"))) {
		inventoryAddItemStack(item, 1, self);
	}
}