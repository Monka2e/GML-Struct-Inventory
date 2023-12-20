if (position_meeting(mouse_x, mouse_y, self)) {
	if (keyboard_check_pressed(ord("E"))) {
		inventoryAddItemStack(item, self);
	}
	
	if (keyboard_check_pressed(ord("F"))) {
		inventoryAddItemStack(item, self);
	}
}