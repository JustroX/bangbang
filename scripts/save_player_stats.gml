var section = "player_" + string(global.local_id);

ini_open("game.ini");

ini_write_string(section,"username",global.username);
ini_write_real(section,"golds",global.golds);
ini_write_real(section,"level",global.level);
ini_write_real(section,"xp",global.xp);
ini_write_real(section,"hp",global.hp);
ini_write_real(section,"hp_regen",global.hp_regen);
ini_write_real(section,"speed",global.player_speed);
ini_write_real(section,"jet_fuel",global.jet_fuel);
ini_write_real(section,"armor",global.armor);
ini_write_real(section,"jump",global.jump);
ini_write_real(section,"crit_chance",global.crit_chance);
ini_write_real(section,"life_steal",global.life_steal);
ini_write_real(section,"mask",global.mask);
ini_write_real(section,"jetpack",global.jetpack);
ini_write_real(section,"helmet",global.helmet);
ini_write_real(section,"vest",global.vest);
ini_write_real(section,"pants",global.pants);
ini_write_real(section,"shoes",global.shoes);
ini_write_real(section,"aura",global.aura);
var val_str = json_encode(global.bag_map);
val_str = string_replace(val_str,chr(34),"`");
val_str = string_replace(val_str,chr(34),"`");
ini_write_string(section,"bag",val_str);
ini_close();