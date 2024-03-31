/// @description Settings Initialization

if file_exists("Settings/settings.ini"){
	
	ini_open("Settings/settings.ini");
	
	global.left_key = ini_read_real("key_settings", "left_key", vk_left);
	global.right_key = ini_read_real("key_settings", "right_key", vk_right);
	global.up_key = ini_read_real("key_settings", "up_key", vk_up);
	global.down_key = ini_read_real("key_settings", "down_key", vk_down);
	global.shoot_key = ini_read_real("key_settings", "shoot_key", ord("Z"));
	global.bomb_key = ini_read_real("key_settings", "bomb_key", ord("X"));
	global.focus_key = ini_read_real("key_settings", "focus_key", vk_shift);
	
	ini_close();
	
} else {
	generate_default_key_settings();
}