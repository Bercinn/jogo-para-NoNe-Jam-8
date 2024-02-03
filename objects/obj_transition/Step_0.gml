if(!has_entered){
	alp = lerp(alp, 1, .1);
	if(alp >= 1){
		delay--;
		if(delay <= 0){
			room_goto(destiny);
			has_entered = true;
		}
	}
}else{
	alp = lerp(alp, 0, .1);
	if(alp <= 0){
		instance_destroy();
	}
}
