///db_get_ingame(db,item_id)
//argument0 = db
// argument1 = item id
//show_message(argument1);
if(argument1 ==-1) return -1;

if(argument1!=-1)
{
var db = argument0;

var item = db.item[| argument1];
var ingame = db.ingame[| item[? "info"]];
var gun_id = ingame[? "info"];

return gun_id; 
}