/// @description 
// Draw Event

draw_self();

switch(button){
	case buttons.ATTACK:
	text = "Attack"
	break;

	case buttons.HEAL:
	text = "Heal"
	break;
	
	case buttons.DEFEND:
	text = "Defend"
	break;

	case buttons.FLEE:
	text = "Flee"
	break;

	case buttons.RESTART:
	text = "Restart"
	break;
}

	draw_set_color(c_black);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(fNormal);
	draw_set_alpha(image_alpha);
	draw_text(x, y, text);
	draw_set_alpha(image_alpha);