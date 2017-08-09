/*
argument0 = db
argument1 = achievement id
argument2 = item_id
argument3 = quantity
*/

var db = argument0;

//create achievement
var list = ds_list_create();
ds_list_add(list,argument2);
ds_list_add(list,argument3);

var str = db.achievement[| argument1];
var main_list = json_decode(str);
ds_list_add(main_list,list);
str = json_encode(str);
//ds_list_destroy(main_list);
//ds_list_destroy(list);

db.achievement[| argument1] = str;