with(obj_database)
{
for(var i=0; i<ds_list_size(item); i++)
{
    ds_map_destroy(item[| i]);
}
ds_list_destroy(item);

for(var i=0; i<ds_list_size(equipable); i++)
{
    ds_map_destroy(equipable[| i]);
}
ds_list_destroy(equipable);

for(var i=0; i<ds_list_size(ingame); i++)
{
    ds_map_destroy(ingame[| i]);
}
ds_list_destroy(ingame);

for(var i=0; i<ds_list_size(gun); i++)
{
    ds_map_destroy(gun[| i]);
}
ds_list_destroy(gun);

for(var i=0; i<ds_list_size(bullet); i++)
{
    ds_map_destroy(bullet[| i]);
}
ds_list_destroy(bullet);

for(var i=0; i<ds_list_size(consumable); i++)
{
    ds_map_destroy(consumable[| i]);
}
ds_list_destroy(consumable);

for(var i=0; i<ds_list_size(achievement); i++)
{
    ds_map_destroy(achievement[| i]);
}
ds_list_destroy(achievement);

for(var i=0; i<ds_list_size(stat); i++)
{
    ds_map_destroy(stat[| i]);
}
ds_list_destroy(stat);

instance_destroy();
}