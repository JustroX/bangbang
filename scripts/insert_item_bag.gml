///argument 0 = item_id
///argument 1 = item_quantity
var found = false;

for(var i=0; i< ds_list_size(global.bag); i++)
{
    var item = global.bag[| i];
    var item_bag_id = item[| item_id];
    if(item_bag_id == argument0)
    {
        found = true;
        item[| item_quantity]+=argument1;
    }
}

if(!found)
{
    var bag_size = ds_list_size(global.bag);
    var list = ds_list_create();
    list[| item_id] = argument0;
    list[| item_quantity] = argument1;
    global.bag[| bag_size] = list;
    ds_list_mark_as_list(global.bag,bag_size);
}