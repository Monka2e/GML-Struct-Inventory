if (mouse_wheel_down()) {
	selectedInventory++;
}
if (mouse_wheel_up()) {
	selectedInventory--;
}

if (selectedInventory > global.INVENTORY_SIZE - 1) {
	selectedInventory = 0;
} else if (selectedInventory < 0) {
	selectedInventory = global.INVENTORY_SIZE - 1;
}