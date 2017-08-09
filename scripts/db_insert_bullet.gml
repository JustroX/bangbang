///db_insert_bullet(self,damage,speed,acceleration,is_homing,max_piercing,knockback,blast_radius,dps,damage_decreasing_rate,speed_stat,hp_regen_stat,armor_stat,jump_stat,life_steal_stat)
/*
argument0 = db
argument1 = damage          *
argument2 = speed           *
argument3 = acceleration    *
argument4 = is_homing
argument5 = max_pierce      *
argument6 = knockback       *
argument7 = blast_radius
argument8 = dps
argument9 = damage_decreasing_rate


argument10 = speed_stat
argument11 = hp_regen_stat
argument12 = armor_stat
argument13 = jump_stat
argument14 = crit_chance_stat
argument15 = life_steal_stat
*/
var db = argument0;
var map = ds_map_create();
map[? "damage"]         = argument1;
map[? "speed"]          = argument2;
map[? "acceleration"]   = argument3;
map[? "is_homing"]      = argument4;
map[? "max_pierce"]     = argument5;
map[? "knockback"]      = argument6;
map[? "blast_radius"]   = argument7;
map[? "dps"]            = argument8;
map[? "damage_decreasing_rate"] = argument9;
map[? "statinfo"] = db_insert_consumable_effect(db,0,argument11,argument10,0,argument12,argument13,argument14,argument15,1,1);

var db_size = ds_list_size(db.bullet);
db.bullet[| db_size] = map;
ds_list_mark_as_map(db.bullet,db_size);
//ds_map_destroy(map);
return db_size;

 