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
argument10 = time
*/

var db = argument0;

//create consumable
var map = ds_map_create();
map[? "stat_info"] = db_insert_stat(db,argument1,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9);
map[? "time" ] = argument10;

var consumable_size = ds_list_size(db.consumable);
db.consumable[| consumable_size] = map;
ds_list_mark_as_map(db.consumable,consumable_size);
//ds_map_destroy(map);

return consumable_size;