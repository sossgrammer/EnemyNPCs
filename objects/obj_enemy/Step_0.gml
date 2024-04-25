/// @desc basic movement

//Horizontal collision
if (place_meeting(x + speed, y, obj_wall)) {
	while (!place_meeting(x + sign(speed), y, obj_wall)) {
		x += sign(speed);
	}
	speed *= -1;
}

//Animation
 if (!place_meeting(x, y + 1, obj_wall)) {
	sprite_index = spr_enemy_jump;
	image_speed = 0;
	if (vsp > 0) {
		image_index = 2;
	} else if (vsp == 0) {
		image_index = 1;	
	} else {
		image_index = 0;
	}
} else {
	image_speed = 1;
	if (speed == 0) {
		sprite_index = spr_enemy;
	} else {
		sprite_index = spr_enemy_run;
	}
}

if(speed != 0) {
	image_xscale = sign(speed);
}




