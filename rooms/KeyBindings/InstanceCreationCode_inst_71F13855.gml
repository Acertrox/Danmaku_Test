ini_open("Settings/settings.ini")
key = "shoot_key"
text = "SHOOT: " + get_key_name(ini_read_real("key_settings", key, ord("Z")))
ini_close()