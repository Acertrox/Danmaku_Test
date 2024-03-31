/// @description Insert description here
// You can write your code in this editor
if (bullet_timer_1 > 0){
	bullet_timer_1-=1;
} else if (bullet_timer_1 == 0){
	LaserBullet1Emitter(self, x, y, 2, amount_lasers)
	amount_lasers+=2;
	offset = random(360)
	bullet_type=false
	BlueBulletEmitter(x, y, 1, amount_bullets, offset)
	bullet_repeater_1 = 12
	repeater_amount = 5;
	bullet_timer_1=480;
}

if (bullet_repeater_1 > 0){
	bullet_repeater_1-=1;
} else if (bullet_repeater_1 = 0){
	if (repeater_amount > 0){
		offset += 360/amount_bullets/2
		if (bullet_type){
		BlueBulletEmitter(x, y, 1, amount_bullets, offset)
		} else {
		PurpleBulletEmitter(x, y, 1, amount_bullets, offset)
		}
		bullet_type = !bullet_type
		repeater_amount-=1;
		bullet_repeater_1 = 12
	} else {
		bullet_repeater_1-=1;
		amount_bullets+=3
	}
}