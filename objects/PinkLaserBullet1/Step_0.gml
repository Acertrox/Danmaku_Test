/// @description Insert description here
if (bullet_timer1 > 0) {
	direction += dir * angle/60;
	x = creator.x+64*dcos(direction)
	y = creator.y-64*dsin(direction)
	bullet_timer1-=1;
} else if (bullet_timer2 > 0) {
	bullet_timer2-=1;
} else if (bullet_timer3 > 0){
    if (image_yscale<1){
		deadly = true;
		image_yscale+=0.1;
	}
	bullet_timer3-=1;
} else if (bullet_timer4 > 0){
	image_yscale-=1/60;
	bullet_timer4-=1;
} else {
	instance_destroy(self);
}

image_angle = direction;
