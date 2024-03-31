ini_open("Settings/settings.ini")
key = "right_key"
text = "RIGHT: " + get_key_name(ini_read_real("key_settings", key, vk_right))
ini_close()