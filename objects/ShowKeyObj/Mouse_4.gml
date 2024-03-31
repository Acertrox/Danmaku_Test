/// @description Key Change

if (!global.keyBindingActive){
	global.keyBindingActive = !global.keyBindingActive;
	tempText = string_copy(text, 1, string_pos(":",text)) + " PRESS A KEY";
	active = true;
}
