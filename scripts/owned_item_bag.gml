///argument 0 = item_id
var done = false;

for(var i=0; i< ds_list_size(global.bag); i++)
{
    if(!done)
    {
        var item = global.bag[| i];
        var item_bag_id = item[| item_id];
        if(item_bag_id == argument0)
        {
            return item[| item_quantity];
        }
    }
}
return 0;