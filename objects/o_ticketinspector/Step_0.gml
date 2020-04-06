
//Movement of character 

vdirection=0
hdirection=0

if(keyboard_check(ord("W")))
{vdirection = -1}

if(keyboard_check(ord("S")))
{vdirection = 1}
	
vspeed=vspeed_value*vdirection


if(keyboard_check(ord("A")))
{hdirection = -1}

if(keyboard_check(ord("D")))
{hdirection = 1}

hspeed=hspeed_value*hdirection

//interaction with passengers

if(keyboard_check_pressed(ord("E"))) 
{
	passenger = instance_place(x,y,o_passenger);
	if(passenger != noone && !instance_exists(o_ingame_gui.portrait))
	{
		passenger_inspection=1;
		o_ingame_gui.passengerid = passenger;
	}
}




if(x - camera_get_view_x(view_camera[1]) < 960 - dead_zone_camera)
{camera_set_view_pos(view_camera[1], 960 - dead_zone_camera - x - camera_get_view_x(view_camera[1]) , 540)}
else if(x - camera_get_view_x(view_camera[1]) > 960 + dead_zone_camera)
{camera_set_view_pos(view_camera[1], 0, 540)}





