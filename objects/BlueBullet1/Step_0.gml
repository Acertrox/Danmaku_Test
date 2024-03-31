/// @description Insert description here

if (bullet_timer_1 > 0){
	bullet_timer_1-=1
	speed = 2
} else if (bullet_timer_1 == 0){
	speed += (offset_speed-initial_speed)/25;
}