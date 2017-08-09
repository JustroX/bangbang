/*
argument0 = db
argument1 = hp
argument2 = hp regen
argument3 = speed
argument4 = jet fuel
argument5 = armor
argument6 = jump
arguemnt7 = crit chance
argument8 = lifesteal
argument9 = scaling
*/

var db = argument0;
var map = ds_map_create();
map[? "hp"] = argument1;
map[? "hp_regen"]  = argument2;
map[? "speed" ] = argument3;
map[? "jet_fuel" ] = argument4;
map[? "armor" ] = argument5;
map[? "jump"  ] = argument6;
map[? "crit_chance" ] = argument7;
map[? "lifesteal" ] = argument8;
map[? "scaling" ] = argument9;

var stat_size = ds_list_size(db.stat);
db.stat[| stat_size] = map;
ds_list_mark_as_map(db.stat,stat_size);
//ds_map_destroy(map);

return stat_size;