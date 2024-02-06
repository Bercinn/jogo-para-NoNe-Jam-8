hor_speed = 0;
ver_speed = 0;

//criando a arma
weapon_my = instance_create_layer(x, y, "weapon", obj_arma);
weapon_my.weapon_id = self;

//variavel controlando tiro
global.atira_delay = 0;

//variaveis de movimento
cima = 0; //direções
baixo = 0; //direções
esq = 0; //direções
dir = 0; //direções
move_speed = 3; //velocidade do player

center_y = y - sprite_height/2;

movement = function(){
	
	//movimento na horizontal
	esq = keyboard_check(ord("D"));
	dir = keyboard_check(ord("A"));
	cima = keyboard_check(ord("W"));
	baixo = keyboard_check(ord("S"));
	
	hor_speed = (esq - dir) * move_speed; 
	ver_speed = (baixo - cima) * move_speed;
		///////////////

};
atrirar = function(){

//mostrando posição da arma
with(weapon_my)
 {
	 if(mouse_check_button_pressed(mb_left))
	{ 
		if(global.atira_delay == 1)//checando se o timer for igual a 1
	 {
		//instaciando bala
		project = instance_create_layer(x,y, "Projeteis", obj_tiro);
		
		//caracteristicas da bala
	    project.sprite_index = spr_tiro
		project.image_angle = weapon_dir;
		project.direction = weapon_dir;
		project.speed = 8;	
		global.atira_delay -= 13; //resetando o timer
	}
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
//variavel de controle de leveis
global._leveis = 0;

//sistema de power up
leveis = function(){

//sistema de leveis incompleto
	switch(global._leveis)
	{
      case 1:
	  show_message("Level 1");
	  break;
	  case 2:
	  show_message("Level 2");
	  break;
	}
}
