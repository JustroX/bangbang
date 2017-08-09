///argument0 navposition
// argument1 cur_position

draw_sprite(spr_inventory_page_label,0,149,nav_positions[argument0]-argument1);
var str;
switch(argument0)
{
    case 0: str ="Guns"; break;
    case 1: str ="Consumables"; break;
   // case 2: str ="Masks"; break;
    case 2: str ="Jetpacks"; break;
    case 3: str ="Helmets"; break;
    case 4: str ="Vests"; break;
    case 5: str ="Pants"; break;
    case 6: str ="Shoes"; break;
    case 7: str ="Auras"; break;
}

draw_text(157,nav_positions[argument0]-argument1+12,str);