///argument0 = db
// argument1 = item id

if(argument1 == -1) return -1;

var db = argument0;

var item = db.item[| argument1];
var equipable_id =item[? "info"];
return equipable_id; 