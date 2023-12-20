draw_sprite(item.pickupSprite, 0, x, y);
draw_text(x + 18, y + 18, item.stack);
if(position_meeting(mouse_x, mouse_y, self)) {
	draw_set_halign(fa_center);
	draw_text(x, y - 45, "'E' Take");
	draw_set_halign(fa_left);
}