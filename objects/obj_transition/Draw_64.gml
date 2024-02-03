draw_set_color(c_black);
draw_set_alpha(alp);

var _gui_w = display_get_gui_width();
var _gui_h = display_get_gui_height();

draw_rectangle(0, 0, _gui_w, _gui_h, false);

draw_set_alpha(1);
draw_set_color(-1);
