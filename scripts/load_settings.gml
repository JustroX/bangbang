ini_open("game.ini");
global.version          = ini_read_string("general","version","beta1");
global.game_server_id   = ini_read_string("general","game_server_id","");
global.num_of_players   = ini_read_real("general","num_of_players",0);
global.green_coins   = ini_read_real("general","green_coins",10);
ini_close();