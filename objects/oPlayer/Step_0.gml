/// @description Movement

dispHp = lerp(dispHp, hp, .1);

if(room != Areana){

	keyLeft = keyboard_check(vk_left);
	keyRight = keyboard_check(vk_right);
	keySprint = keyboard_check(vk_shift);
	keyJump = keyboard_check_pressed(vk_space)

	hsp = (keyRight - keyLeft) * walksp;

	if(keySprint) walksp = sprintsp;

	else if(keyboard_check_released(vk_shift)) walksp = 4;



	vsp = vsp + grv;

	// Jumping
	if(canJump-- > 0) && (keyJump){
		vsp = jumpSp;
		canJump = 0;
	}
}

	// Collisions

	if(place_meeting(x + hsp, y, oFloor)){
		while(abs(hsp) > 0.1){
			hsp *= 0.5;
			if(!place_meeting(x + hsp, y, oFloor)) x += hsp
		}
		hsp = 0;
	}
	x += hsp;

	if(place_meeting(x, y + vsp, oFloor)){
		if(vsp > 0) canJump = 10;
		while(abs(vsp) > 0.1){
			vsp *= 0.5;
			if(!place_meeting(x, y + vsp, oFloor)) y += vsp;
		}
		vsp = 0;
	}
	y += vsp;
