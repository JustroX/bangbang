/*
argument0 = db
argument1 = name
argument2 = hp
argument3 = hp regen
argument4 = speed
argument5 = jet fuel
argument6 = armor
argument7 = jump
arguemnt8 = crit chance
argument9 = lifesteal
argument10 = scaling no scaling feelsbad pero baka gamitin in the future so i wont delete this
argument11 = aura name
*/

var db = argument0;
var future = argument10;
//create achievement
var map = ds_map_create();
map[? "name"  ] = argument1;
map[? "reward"] = db_insert_equipable(db,argument11,10000,6,argument2,argument3,argument4,argument5,argument6,argument7,argument8,argument9,"",1);
var achievement_size = ds_list_size(db.achievement);
db.achievement[| achievement_size] = map;
ds_list_mark_as_map(db.achievement,achievement_size);
//ds_map_destroy(map);

return achievement_size;