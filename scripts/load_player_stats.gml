//argument 0 - player local id
var section = "player_" + string(argument0);

ini_open("game.ini");

global.local_id=    ini_read_real(section,"local_id",argument0);
global.username=    ini_read_string(section,"username","error");
global.golds=       ini_read_real(section,"golds",100);
global.level=       ini_read_real(section,"level",1);
global.xp=          ini_read_real(section,"xp",0);
global.hp=          ini_read_real(section,"hp",100);
global.hp_regen=    ini_read_real(section,"hp_regen",1);
global.player_speed=ini_read_real(section,"speed",5);
global.jet_fuel=    ini_read_real(section,"jet_fuel",0);
global.armor=       ini_read_real(section,"armor",0);
global.jump=        ini_read_real(section,"jump",6);
global.crit_chance= ini_read_real(section,"crit_chance",0);
global.life_steal=  ini_read_real(section,"life_steal",0);
global.mask=        ini_read_real(section,"mask",-1);
global.jetpack=    ini_read_real(section,"jetpack",-1);
global.helmet=      ini_read_real(section,"helmet",-1);
global.vest=        ini_read_real(section,"vest",-1);
global.pants=       ini_read_real(section,"pants",-1);
global.shoes=       ini_read_real(section,"shoes",-1);
global.aura=        ini_read_real(section,"aura",-1);
global.scaling = 1;
var val_str = ini_read_string(section,"bag","[]");
val_str = string_replace(val_str,"`",chr(34));
val_str = string_replace(val_str,"`",chr(34));
global.bag_map = json_decode(val_str);
global.bag = global.bag_map[? "default"];
//show_message(global.bag);
ini_close();
