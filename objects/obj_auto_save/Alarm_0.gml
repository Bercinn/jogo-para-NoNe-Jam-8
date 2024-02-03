save_game();
has_saved = true;

if(room != rm_menu && room != rm_init){
	alarm[0] = (room_speed * 60) * 5;
}
