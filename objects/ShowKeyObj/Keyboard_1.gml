if (active && get_key_name(keyboard_lastkey) != "INVALID"){
	ini_open("Settings/settings.ini")
	ini_write_real("key_settings", key, keyboard_lastkey);
	ini_close()
	text = string_copy(text, 1, string_pos(":",text)) + " " + get_key_name(keyboard_lastkey)
	active = !active
	global.keyBindingActive = !global.keyBindingActive;
}