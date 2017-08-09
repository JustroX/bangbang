///db_is_consumable(db,item_id)
//argument0 = db
// argument1 = item id
if(argument1 == -1) return 0;

if(db_is_ingame(argument0,argument1))
{

    var db          = argument0;
    var item        = db.item[| argument1];
    var ingame_id = item[? "info"];
    var ingame      = db.ingame[| ingame_id];
    var is_gun      =  ingame[? "type"];
    return !is_gun;

}

return 0;
