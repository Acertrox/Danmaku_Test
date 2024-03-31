ini_open("Settings/settings.ini")
key = "left_key"
text = "LEFT: " + get_key_name(ini_read_real("key_settings", key, vk_left))
ini_close()