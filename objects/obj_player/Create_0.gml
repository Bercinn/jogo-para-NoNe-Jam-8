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
	for(var i = 0, s = array_length(global.tagged_as_solid); i < s; i++){
		var _obj = global.tagged_as_solid[i];
		if(place_meeting(x+hor_speed, y, _obj)){
			var _col = instance_place(x+hor_speed, y, _obj);
			if(_col){
				x = hor_speed > 0 ? _col.bbox_left+(x-bbox_right) : _col.bbox_right+(x-bbox_left);
				hor_speed = 0;
			}
		}
		x += hor_speed;
	
		if(place_meeting(x, y+ver_speed, _obj)){
			var _col = instance_place(x, y+ver_speed, _obj);
			if(_col){
				y = ver_speed > 0 ? _col.bbox_top+(y-bbox_bottom) : _col.bbox_bottom+(y-bbox_top);
				ver_speed = 0;
			}
		}
		y += ver_speed;
	}
};
