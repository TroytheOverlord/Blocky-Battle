/// @description 

draw_self();
var sw, sh;

sw = sprite_width / 2;
sh = sprite_height / 2;


if(room = Areana){
	var pc;

	pc = (hp / hpMax) * 100;
	draw_healthbar(x - sw, bbox_bottom, x + sw, bbox_bottom + 10, pc, c_black, c_red, c_lime, 0, true, true);
	depth = -100;
}