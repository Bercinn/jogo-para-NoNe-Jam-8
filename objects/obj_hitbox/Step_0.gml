x = dad.x + lengthdir_x(dad.sprite_width, dad.attack_dir);
y = dad.center_y + lengthdir_y(dad.sprite_width, dad.attack_dir);

delay--;
if(delay <= 0){
	instance_destroy();
}
