#macro FILE_NAME "auto_save.json"

function save_game(){
	var _data = {
		player : {
			x,
			y,
			room
		},
	};
	
	var _str = json_stringify(_data);
	
	var _file = file_text_open_write(FILE_NAME);
	
	file_text_write_string(_file, _str);
	
	file_text_close(_file);
}

has_saved = false;
delay = room_speed;
