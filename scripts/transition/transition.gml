function transition(_dest, _delay = 0){
	var _transition = instance_create_depth(0, 0, -500, obj_transition);
	_transition.destiny = _dest;
	_transition.delay = _delay;
}