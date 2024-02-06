//verifivando se existe se sim rotaciona e aplica posição
if(instance_exists(weapon_id))
{
	weapon_dir = point_direction(x, y, mouse_x, mouse_y);
	//poosition da arma
	x = weapon_id.x;
	y = weapon_id.y - 37;
	
	weapon_x = x + lengthdir_x(30, weapon_dir);
	weapon_y = y + lengthdir_y(30, weapon_dir);
	
	//rotacionando
	image_angle = weapon_dir;
}
else
{
	//destruindo se existe já uma
	instance_destroy();
}







