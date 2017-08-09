///db_insert_gun(db,name,price,hand,ammo_count,bullet,description,green,callback)

/*
argument0 = db
argument1 = name
argument2 = price
argument3 = hand
argument4 = ammo_count
argument5 = bullet
argument6 = description
argument7 = green
argument8 = callback
*/

var db = argument0;

//create gun
var map = ds_map_create();
map[? "ammo_count"] = argument4;
map[? "hand"]       = argument3;
map[? "bullet_id" ] = argument5;
map[? "callback"  ] = argument8;

var gun_size = ds_list_size(db.gun);
db.gun[| gun_size] = map;
ds_list_mark_as_map(db.gun,gun_size);
//ds_map_destroy(map);


//create in game
map = ds_map_create();
map[? "type"] = 1;
map[? "info"] = gun_size;
var ingame_size = ds_list_size(db.ingame);
db.ingame[| ingame_size] = map;
ds_list_mark_as_map(db.ingame,ingame_size);
//ds_map_destroy(map);

//create item
map = ds_map_create();
map[? "name"] = argument1;
map[? "price"] = argument2;
map[? "description"] = argument6;
map[? "green"] = argument7;
map[? "type"] = 0;
map[? "info"] = ingame_size;
var item_size = ds_list_size(db.item);
db.item[| item_size] = map;
ds_list_mark_as_map(db.item,item_size);
//ds_map_destroy(map); 