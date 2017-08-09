//argument0 - db
//argument1 - stat id

var db = argument0;
var map = db.stat[| argument1];

global.hp += map[? "hp"];
global.hp_regen += map[? "hp_regen"] ;
global.player_speed += map[? "speed" ];
global.jet_fuel += map[? "jet_fuel" ];
global.armor += map[? "armor" ];
global.jump += map[? "jump"  ];
global.crit_chance += map[? "crit_chance" ];
global.life_steal += map[? "lifesteal" ];
global.scaling += map[? "scaling" ];

     //   show_message('CODE REACHED HERE HANEP');