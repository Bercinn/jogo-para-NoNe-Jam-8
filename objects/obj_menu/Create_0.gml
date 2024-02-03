button_ops = [
	"Jogar",
	"Sair",
];

op_len = array_length(button_ops);

op_scale[op_len-1] = 0;

layer_background_blend(layer_get_id("Background"), c_blue);

draw_menu = function(){
	draw_set_font(fnt_menu_button);
	draw_set_halign(1);
	draw_set_valign(1);
	
	var _gui_w = display_get_gui_width();
	var _gui_h = display_get_gui_height();
	
	var _default_scl = 1;
	var _default_scl_inc = 1.5;
	
	for(var i = 0; i < op_len; i++){
		var _hstr = (string_height("I")+15)*_default_scl
		var _wstr = string_width(button_ops[i])
	
		var _x1 = _gui_w/2 - _wstr/2;
		var _y1 = _gui_h/2 - _hstr/2 + _hstr*i;
	
		var _x2 = _gui_w/2 + _wstr/2;
		var _y2 = _gui_h/2 + _hstr/2 + _hstr*i;
		
		if(point_in_rectangle(mouse_gui_x, mouse_gui_y, _x1, _y1, _x2, _y2)){
			op_scale[i] = lerp(op_scale[i], _default_scl_inc, .15);
			if(mouse_check_button_pressed(mb_left)){
				switch(button_ops[i]){
					case button_ops[0]:
						op_scale[0] = _default_scl;
						transition(rm_game, room_speed);
					break;
					
					case button_ops[1]:
						op_scale[1] = _default_scl;
						game_end();
					break;
				}
			}
		}else{
			op_scale[i] = lerp(op_scale[i], _default_scl, .15);
		}
		outline_draw_text_transformed_color(_gui_w/2, _gui_h/2+_hstr*i, button_ops[i], op_scale[i], op_scale[i], 0, c_yellow,,,,1,ol_config(3,c_black,,1,,,));
	}
	
	outline_draw_text_transformed_color(_gui_w/2, 50, "NoNe Jam 8", 2, 2, 0,c_fuchsia,,,,1,ol_config(3,c_black,,1,,,));
	
	draw_set_font(-1);
	draw_set_valign(-1);
	draw_set_halign(-1);
};
