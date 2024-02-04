x = lerp(x, target.x, .1);
y = lerp(y, target.y, .1);


camera_width = lerp(camera_width, camera_width_max * cam_scale, .3);
camera_height = lerp(camera_height, camera_height_max * cam_scale, .3);

camera_set_view_size(view_camera[0], camera_width, camera_height);

var border_y = 0;

if(instance_exists(obj_player)) { 
	if(obj_player.state = state_machine.death) { 
		border_y = camera_height/2;	
	}	
}

camera_set_view_border(view_camera[0], camera_width/2, border_y);

//Parallax

if(room == Game) { 
	var cam_xx = camera_get_view_x(view_camera[0]);
	layer_x(mountain1_layer, lerp(0, cam_xx, .4));
	layer_x(cloud1_layer, lerp(0, cam_xx, .5) + velh_cloud1);
	layer_x(cloud1_light_layer, lerp(0, cam_xx, .5) + velh_cloud1);
	layer_x(mountain2_layer, lerp(0, cam_xx, .6));
	layer_x(cloud2_layer, lerp(0, cam_xx, .7) + velh_cloud2);
	layer_x(mountain3_layer, lerp(0, cam_xx, .8));
	layer_x(cloud3_layer, lerp(0, cam_xx, .9) + velh_cloud3);
	layer_x(background_layer, lerp(0, cam_xx, .95));
}

velh_cloud1 += vel_cloud1 * global.main_speed;
velh_cloud2 += vel_cloud2 * global.main_speed;
velh_cloud3 += vel_cloud3 * global.main_speed;