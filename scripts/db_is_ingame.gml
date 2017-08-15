//db_is_ingame(db,item_id)
//argument0 = db
// argument1 = item id

show_debug_message(argument1);

if(argument1 == -1) return 0;

var db = argument0;

var item = db.item[| argument1];
var ingame_type =item[? "type"];
return !ingame_type; 
