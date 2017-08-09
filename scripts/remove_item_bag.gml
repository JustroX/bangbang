///argument 0 = item_id
///argument 1 = item_quantity
var done = false;

for(var i=0; i< ds_list_size(global.bag); i++)
{
    if(!done)
    {
        var item = global.bag[| i];
        var item_bag_id = item[| item_id];
        if(item_bag_id == argument0)
        {
            done = true;
            item[| item_quantity]-=argument1;
            if(item[| item_quantity] <= 0)
            {
                ds_list_delete(global.bag,i);    
            }
        }
    }
}