/// @description Insert description here

if (bullet_timer_1 > 0){
	bullet_timer_1-=1
	speed = initial_speed
	direction += dir * 0.5;
} else if (bullet_timer_1 == 0){
	speed += (offset_speed-initial_speed)/30;
}

if (death_timer > 0){
	death_timer-=1
} else {
	instance_destroy(self);
}