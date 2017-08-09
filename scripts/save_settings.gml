ini_open("game.ini");
ini_write_string("general","version",global.version);
ini_write_real("general","num_of_players",global.num_of_players);
ini_write_string("general","game_server_id",global.game_server_id);
ini_write_real("general","green_coins",global.green_coins);
ini_close();
