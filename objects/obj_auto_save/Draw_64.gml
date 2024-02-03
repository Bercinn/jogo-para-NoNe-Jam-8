draw_set_halign(1);
draw_set_valign(1);
draw_set_font(fnt_menu_button);

if(has_saved){
	var _txt = "O jogo foi salvo!";
	outline_draw_text_transformed(	display_get_gui_width()/2, 50, _txt,.5,.5,0,
						ol_config(2,c_black,1,1,,,true));
						
	delay--;
	if(delay <= 0){
		has_saved = false;
	}
}else{
	delay = room_speed;
}

draw_set_font(-1);
draw_set_halign(-1);
draw_set_valign(-1);
