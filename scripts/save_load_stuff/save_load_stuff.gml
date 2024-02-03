function load_game(){
	if(file_exists(FILE_NAME)){
		var _file = file_text_open_read(FILE_NAME);
		var _str = file_text_read_string(_file);
		file_text_close(_file);
		delete _file;
		
		var _save_data = json_parse(_str);
		
		obj_player.x = _save_data.player.x;
		obj_player.y = _save_data.player.y;
		room = _save_data.player.room;
	}
}
