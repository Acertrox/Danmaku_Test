// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generate_default_key_settings(){
	ini_open("Settings/settings.ini");
	ini_write_real("key_settings", "left_key", vk_left);
	ini_write_real("key_settings", "right_key", vk_right);
	ini_write_real("key_settings", "up_key", vk_up);
	ini_write_real("key_settings", "down_key", vk_down);
	ini_write_real("key_settings", "shoot_key", ord("Z"));
	ini_write_real("key_settings", "bomb_key", ord("X"));
	ini_write_real("key_settings", "focus_key", vk_shift);
	
	global.left_key = vk_left
	global.right_key = vk_right
	global.up_key = vk_up
	global.down_key = vk_down
	global.shoot_key = ord("Z")
	global.bomb_key = ord("X")
	global.focus_key = vk_shift
	
	ini_close()
}

function get_key_name(_code){
	switch (_code)
	{
		case vk_up:
			return "UP ARROW";
		
		case vk_down:
			return "DOWN ARROW";
		
		case vk_left:
			return "LEFT ARROW";
		
		case vk_right:
			return "RIGHT ARROW";
			
		case vk_alt:
			return "ALT KEY";
			
		case vk_backspace:
			return "BACKSPACE";
			
		case vk_control:
			return "CONTROL KEY";
			
		case vk_shift:
			return "SHIFT KEY";
			
		case vk_space:
			return "SPACE KEY";
	}
	
	if (_code >= ord("A") && _code <= ord("Z")) || (_code >= ord("0") && _code <= ord("9")){
		return ansi_char(_code);
	} else {
		return "INVALID"
	}
}