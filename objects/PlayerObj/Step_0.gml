/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_escape)){
	room_goto(Main);
}

hor_speed = keyboard_check(global.right_key) - keyboard_check(global.left_key)
ver_speed = keyboard_check(global.down_key) - keyboard_check(global.up_key)

diag = hor_speed != 0 && ver_speed != 0;

if (keyboard_check(global.focus_key)){
	actual_speed = 3;
} else {
	actual_speed = 6;
}

if (diag) {
	actual_speed *= sin(pi/4);
}

hor_speed *= actual_speed;
ver_speed *= actual_speed;

if ( x - 32 + hor_speed < 0 ) x = 32;
else if ( x + 32 + hor_speed > window_get_width()) x = window_get_width() - 32;
else x += hor_speed;

if ( y - 32 + ver_speed < 0 ) y = 32;
else if ( y + 32 + ver_speed > window_get_height()) y = window_get_height() - 32;
else y += ver_speed;

if (keyboard_check(global.shoot_key)){
	shooting = true
	bullets = 1
}
if (shooting){
	if (bullets > 0){
		if (reload == 0){
			instance_create_depth(x-12, y+26, 1, PlayerBullet)
			instance_create_depth(x+12, y+26, 1, PlayerBullet)
			reload = 3
			bullets -=1
		}
	} else {
		shooting = false;	
	}
}
if (reload > 0) {
	reload -= 1;	
}

