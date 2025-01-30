/// @description 
// Draw GUI Event

var guiw = display_get_gui_width()
var guih = display_get_gui_height()



if state = states.BATTLESTART{
	draw_set_color(c_black);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(fNormal);
	draw_set_alpha(.8);
	draw_rectangle(0,0, guiw, guih, false);
	draw_set_alpha(1);
	
	draw_set_color(c_blue);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(fNormal);
	
	draw_text(guiw/2, guih/2, "Battle Start")	
}

if state = states.BATTLEEND{
	draw_set_color(c_black);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(fNormal);
	draw_set_alpha(.8);
	draw_rectangle(0,0, guiw, guih, false);
	draw_set_alpha(1);
	
	draw_set_color(c_blue);
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	draw_set_font(fNormal);
	
	var text; 
	if oPlayer.hp <= 0 {
		text = "You Lose";
	}
	
	else{
		text = "You Win";
	}
	
	draw_text(guiw/2, guih/2, text);
}
