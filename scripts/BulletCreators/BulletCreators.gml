// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LaserBullet1Creation(_creator, _x, _y, _depth, _angle, _dir, _direction, _color){
	if (_color = 1){
		created_bullet = instance_create_depth(_x, _y, _depth, PinkLaserBullet1);
	} else {
		created_bullet = instance_create_depth(_x, _y, _depth, LBlueLaserBullet1);
	}
	created_bullet.angle = _angle;
	created_bullet.creator = _creator;
	created_bullet.dir = _dir;
	created_bullet.direction = _direction;
}

function LaserBullet1Emitter(_creator, _x, _y, _depth, _num_bullets){
	left_to_create = _num_bullets
	angle = 360/_num_bullets
	dir = 1
	while (left_to_create > 0){
	LaserBullet1Creation(_creator, _x, _y, _depth, angle, dir, (270 + angle/2) + (angle * left_to_create), dir)
	left_to_create-=1;
	dir *= -1
	}
}

function BlueBulletCreation(_x, _y, _depth, _direction, _offset_speed){
	created_bullet = instance_create_depth(_x,_y,_depth, BlueBullet1);
	created_bullet.direction = _direction;
	created_bullet.offset_speed = _offset_speed;
}

function BlueBulletEmitter(_x, _y, _depth, _num_bullets, _offset){
	left_to_create = _num_bullets
	dir = 360/_num_bullets
	base_speed = 2
	while (left_to_create > 0){
		BlueBulletCreation(_x, _y, _depth, _offset + (dir * left_to_create), base_speed)
		BlueBulletCreation(_x, _y, _depth, _offset + (dir * left_to_create), base_speed*1.8)
		BlueBulletCreation(_x, _y, _depth, _offset + (dir * left_to_create), base_speed*2.4)
		left_to_create-=1;
	}
}

function PurpleBulletCreation(_x, _y, _depth, _direction, _offset_speed){
	created_bullet = instance_create_depth(_x,_y,_depth, PurpleBullet1);
	created_bullet.direction = _direction;
	created_bullet.offset_speed = _offset_speed;
}

function PurpleBulletEmitter(_x, _y, _depth, _num_bullets, _offset){
	left_to_create = _num_bullets
	dir = 360/_num_bullets
	base_speed = 2
	while (left_to_create > 0){
		PurpleBulletCreation(_x, _y, _depth, _offset + (dir * left_to_create), base_speed)
		PurpleBulletCreation(_x, _y, _depth, _offset + (dir * left_to_create), base_speed*1.8)
		PurpleBulletCreation(_x, _y, _depth, _offset + (dir * left_to_create), base_speed*2.4)
		left_to_create-=1;
	}
}