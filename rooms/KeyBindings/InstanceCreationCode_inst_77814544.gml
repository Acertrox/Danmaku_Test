ini_open("Settings/settings.ini")
key = "bomb_key"
text = "BOMB: " + get_key_name(ini_read_real("key_settings", key, ord("X")))
ini_close()