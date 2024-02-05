hor_speed = 0;
ver_speed = 0;

//variaveis de movimento
cima = 0; //direções
baixo = 0; //direções
esq = 0; //direções
dir = 0; //direções
move_speed = 3; //velocidade do player
//////

on_ground = 0;
jump_strength = 7;

//input_update = function(){
	//inputs = {
	///	jump : keyboard_check_pressed(vk_space),
	//};
	//on_ground = place_meeting(x, y+max(ver_speed, 1), obj_solid);
//};

movement = function(){
	//if(on_ground){
		//if(inputs.jump){
		//	ver_speed = -jump_strength;
		//}
	//}else{
		//ver_speed += GRAV;
	//}
	
	//movimento na horizontal
	esq = keyboard_check(ord("D"));
	dir = keyboard_check(ord("A"));
	cima = keyboard_check(ord("W"));
	baixo = keyboard_check(ord("S"));
	
	hor_speed = (esq - dir) * move_speed; 
	ver_speed = (baixo - cima) * move_speed;
		///////////////
};

collision = function(){
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
