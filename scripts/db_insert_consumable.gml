///db_insert_consumable(self, name, price, hp,hp_regen, speed, jet_fuel, armor, jump, crit_chance, life_steal,scaling,time , green)
/*
argument0 = db
argument1 = name
argument2 = price
argument3 = hp
argument4 = hp regen
argument5 = speed
argument6 = jet fuel
argument7 = armor
argument8 = jump
arguemnt9 = crit chance
argument10 = lifesteal
argument11 = scaling
argument12 = time
argument13 = description
argument14 = green
*/

var db = argument0;

//create consumable
var map = ds_map_create();
map[? "stat_info"] = db_insert_stat(db,argument3,argument4,argument5,argument6,argument7,argument8,argument9,argument10,argument11);
map[? "time" ] = argument12*30;

var consumable_size = ds_list_size(db.consumable);
db.consumable[| consumable_size] = map;
ds_list_mark_as_map(db.consumable,consumable_size);
//ds_map_destroy(map);


//create in game
map = ds_map_create();
map[? "type"] =0;
map[? "info"] = consumable_size;
var ingame_size = ds_list_size(db.ingame);
db.ingame[| ingame_size] = map;
ds_list_mark_as_map(db.ingame,ingame_size);
//ds_map_destroy(map);

//create item
map = ds_map_create();
map[? "name"] = argument1;
map[? "price"] = argument2;
map[? "type"] = 0;
map[? "info"] = ingame_size;
map[? "description"] = argument13;
map[? "green"] = argument14;
var item_size = ds_list_size(db.item);
db.item[| item_size] = map;
ds_list_mark_as_map(db.item,item_size);
//ds_map_destroy(map); 

return consumable_size;