ini_open("Settings/settings.ini")
key = "focus_key"
text = "FOCUS: " + get_key_name(ini_read_real("key_settings", key, vk_shift))
ini_close()