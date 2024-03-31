/// @description Insert description here
// You can write your code in this editor
if (instance_exists(PlayerObj)){
	origin = instance_find(PlayerObj,0)
	x=origin.x
	y=origin.y+8
}

if (keyboard_check(global.focus_key)){
	if (image_alpha<1){
		image_alpha+=0.1
	}
}
else{
	if (image_alpha>0){
		image_alpha-=0.1
	}
}