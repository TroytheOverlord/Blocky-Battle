dispHp = lerp(dispHp, hp, .1);

vsp = vsp + grv;

if(place_meeting(x + hsp, y, oFloor)){
	while(!place_meeting(x + sign(hsp), y, oFloor)){
		x = x + sign(hsp);
	}
	hsp = -hsp;
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