///announce(kill)

var mes ="";
switch(argument0)
{
    case 2: mes = "DOUBLE KILL" ; break;
    case 3: mes = "TRIPLE KILL" ; break;
    case 4: mes = "QUADRA KILL" ; break;
    case 5: mes = "PENTA KILL" ; break;   
}

var a = instance_create(0,0,obj_announce);
a.mes = mes;
