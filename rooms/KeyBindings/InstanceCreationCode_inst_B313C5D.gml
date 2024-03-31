ini_open("Settings/settings.ini")
key = "down_key"
text = "DOWN: " + get_key_name(ini_read_real("key_settings", key, vk_down))
ini_close()