/// @description Insert description here
draw_self()
if (!active) {
	draw_text_ext_transformed_color(x+48, y, text, 32, 1500, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	image_index = 0;
} else {
	draw_text_ext_transformed_color(x+48, y, tempText, 32, 1500, 1, 1, 0, c_white, c_white, c_white, c_white, 1)
	image_index = 1;
}