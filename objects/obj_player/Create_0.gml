hor_speed = 0;
ver_speed = 0;

//variaveis de movimento
cima = 0; //direções
baixo = 0; //direções
esq = 0; //direções
dir = 0; //direções
move_speed = 3; //velocidade do player

center_y = y - sprite_height/2;

movement = function(){
	attack_dir = point_direction(x, center_y, mouse_x, mouse_y);
	
	//movimento na horizontal
	esq = keyboard_check(ord("D"));
	dir = keyboard_check(ord("A"));
	cima = keyboard_check(ord("W"));
	baixo = keyboard_check(ord("S"));
	attack = mouse_check_button_pressed(mb_left);
	
	hor_speed = (esq - dir) * move_speed; 
	ver_speed = (baixo - cima) * move_speed;
		///////////////
	attack_func();
};

attack_delay = 0;
attack_dir = 0;
attack_func = function(){
	//attack_delay--;
	if(attack_delay <= 0){
		if(attack){
			
			var _tirosx = x + lengthdir_x(16, attack_dir);
			var _tirosy = y + lengthdir_y(16, attack_dir);
			
			var _tiros = point_direction(x, y, mouse_x, mouse_y);
			image_angle = _tiros;
			  instance_create_layer(_tirosx, _tirosy, "instances", obj_tiro);
			//attack_delay = room_speed/2;
		}
	}
};

collision = function(){
	if(place_meeting(x+hor_speed, y, obj_solid)){
		var _col = instance_place(x+hor_speed, y, obj_solid);
		if(_col){
			x = hor_speed > 0 ? _col.bbox_left+(x-bbox_right) : _col.bbox_right+(x-bbox_left);
			hor_speed = 0;
		}
	}
	x += hor_speed;
	if(place_meeting(x, y+ver_speed, obj_solid)){
		var _col = instance_place(x, y+ver_speed, obj_solid);
		if(_col){
			y = ver_speed > 0 ? _col.bbox_top+(y-bbox_bottom) : _col.bbox_bottom+(y-bbox_top);
			ver_speed = 0;
		}
	}
	y += ver_speed;
};
