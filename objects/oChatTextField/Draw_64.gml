for (var i = 0; i < array_length(chatField.lines); i++) {
	draw_set_alpha(1.0 - i / array_length(chatField.lines));
	draw_text(20, window_get_height() - 40 - 20 * i, chatField.lines[i]);
}
draw_set_alpha(1.0);