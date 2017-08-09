///db_insert_equipable(self, name, price, type,hp,hp_regen,speed,jet_fuel, armor, jump, crit_chance, life_steal)
/*
argument0 = db
argument1 = name
argument2 = price
argument3 = type



argument4 = hp          /
argument5 = hp regen    /
argument6 = speed       /
argument7 = jet fuel    /
argument8 = armor       /
argument9 = jump        /
arguemnt10 = crit chance/
argument11 = lifesteal

argument12 = description
argument13 = green coins
*/

var db = argument0;

//create equipable
var map = ds_map_create();
map[? "type"] = argument3;
map[? "statinfo"] = db_insert_stat(db,argument4,argument5,argument6,argument7,argument8,argument9,argument10,argument11,1);
var equipable_size = ds_list_size(db.equipable);
db.equipable[| equipable_size] = map;
ds_list_mark_as_map(db.equipable,equipable_size);
//ds_map_destroy(map);

//create item
map = ds_map_create();
map[? "name"] = argument1;
map[? "price"] = argument2;
map[? "type"] = 1;
map[? "info"] = equipable_size;
map[? "description"] = argument12;
map[? "green"] = argument13;
var item_size = ds_list_size(db.item);
db.item[| item_size] = map;
//ds_map_destroy(map); 
ds_list_mark_as_map(db.item,item_size);

return item_size;