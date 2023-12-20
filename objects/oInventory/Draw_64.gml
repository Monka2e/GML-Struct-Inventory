draw_set_halign(fa_left);
for (var i = 0; i < array_length(global.INVENTORY); i++) {
	var noItem = true;
	var inventoryText = "no item";
	var sprite = noone;
	
	if (global.INVENTORY[i] != noone) {
		noItem = false;
		inventoryText = global.INVENTORY[i].displayName;
		sprite = global.INVENTORY[i].inventorySprite;
	}
	
	if (!noItem && global.INVENTORY[i].ID != ItemID.NONE) {
		inventoryText += ": " + string(global.INVENTORY[i].stack);
	}
	
	if(sprite != noone) { draw_sprite(sprite, 0, 20, 20 + 25 * i); }
	draw_text(40, 20 + 25 * i, inventoryText);
}

draw_rectangle(20, 20 + 25 * selectedInventory, 120, 40 + 25 * selectedInventory, true);

draw_text(150, 20, selectedInventory);