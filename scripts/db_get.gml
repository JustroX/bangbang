///db_get(db,table,id)
///argument0 = database
// argument1 = table
// argument2 = id

var db = argument0;

if(argument1 == "consumable")
    return db.consumable[| argument2];

if(argument1 == "gun")
    return db.gun[| argument2];

if(argument1 == "bullet")
    return db.bullet[| argument2];

if(argument1 == "equipable")
    return db.equipable[| argument2];
    
if(argument1 == "item")
    return db.item[| argument2];
    
if(argument1 == "ingame")
    return db.ingame[| argument2];
    
if(argument1 == "achievement")
    return db.achievement[| argument2];
    
if(argument1 == "stat")
    return db.stat[| argument2];