//argument0 = db
//argument1 = item_id

if(argument1 != -1 )
{
var db = argument0;
var equipable_id = db_get_equipable(db,argument1);

var equipable_map = db.equipable[| equipable_id];
var stat_id = equipable_map[? "statinfo"];

remove_stat(db,stat_id);
}