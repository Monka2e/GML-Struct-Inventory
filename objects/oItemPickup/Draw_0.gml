draw_sprite(item.pickupSprite, 0, x, y);
draw_text(x + 18, y + 18, item.stack);
if(position_meeting(mouse_x, mouse_y, self)) {
	draw_text(x - 15, y - 60, "'E' Take 1");
	draw_text(x - 15, y - 45, "'F' Take all");
}