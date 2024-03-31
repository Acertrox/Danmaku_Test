ini_open("Settings/settings.ini")
key = "up_key"
text = "UP: " + get_key_name(ini_read_real("key_settings", key, vk_up))
ini_close()