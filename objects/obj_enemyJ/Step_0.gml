/// @desc basic movement

//Calculate current status
on_ground = place_meeting(x, y + 1, obj_wall);
on_wall = place_meeting(x + 1, y, obj_wall) - place_meeting(x - 1, y, obj_wall);
going_right = hsp > 0;

//Calc movoment vertical
var grv_final = grv;
if (on_wall != 0) && (vsp > 0) && (key_left != 0 || key_right != 0) {
	grv_final = grv_wall;
}
vsp += grv_final;

if (on_ground) {
	currjumps = 0;
}

if (currjumps < maxjumps) {
	vsp = -jumpsp;
	currjumps += 1;
	slidedelay = 0;
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
} 




