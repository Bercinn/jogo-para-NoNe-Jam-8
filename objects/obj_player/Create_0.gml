hor_speed = 0;
ver_speed = 0;
move_speed = 2;

move_vector = 0;
moving = false;

input_update = function(){
	inputs = {
		right : keyboard_check(ord("D")),
		left : keyboard_check(ord("A")),
		up : keyboard_check(ord("W")),
		down : keyboard_check(ord("S")),
	};
};

movement = function(){
	if((inputs.right xor inputs.left) || (inputs.up xor inputs.down)){
		moving = true;
		move_vector = point_direction(0,0,(inputs.right-inputs.left),(inputs.down-inputs.up));
	}else{
		moving = false;
	}
	
	var _hm = lengthdir_x(moving, move_vector);
	var _vm = lengthdir_y(moving, move_vector);
	hor_speed = lerp(hor_speed, _hm*move_speed, .2);
	ver_speed = lerp(ver_speed, _vm*move_speed, .2);
};

collision = function(){
	x += hor_speed;
	y += ver_speed;
};
