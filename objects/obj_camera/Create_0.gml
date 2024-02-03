cam = view_camera[0];

cam_x = 0;
cam_y = 0;

scl = {
	cam : 3,
	gui : 1,
	win : 2,
};
cam_w = 1920 / scl.cam;
cam_h = 1080 / scl.cam;

camera_set_view_size(cam, cam_w, cam_h);
display_set_gui_size(cam_w * scl.gui, cam_h * scl.gui);
window_set_size(cam_w * scl.win, cam_h * scl.win);
window_center();

toggle_fullscreen = function(){
	if(keyboard_check_pressed(vk_f11)){
		window_set_fullscreen(!window_get_fullscreen());
	}
};
