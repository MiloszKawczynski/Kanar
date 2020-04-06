
//Movement of character 

vdirection=0
hdirection=0

if(keyboard_check(ord("W")))
{vdirection = -1}

if(keyboard_check(ord("S")))
{vdirection = 1}

if(keyboard_check(ord("A")))
{hdirection = -1}

if(keyboard_check(ord("D")))
{hdirection = 1}

//ogranicznik kanara

if(y + vspeed_value * vdirection > room_height){
	vdirection = 0;
}

if(y + vspeed_value * vdirection < room_height - 210){
	vdirection = 0;
}

if(x + sprite_width/2 + hspeed_value * hdirection > room_width){
	hdirection = 0;
}

if(x - sprite_width/2 + hspeed_value * hdirection < 0){
	hdirection = 0;
}

//poruszenie kanara
x += hspeed_value * hdirection;
y += vspeed_value * vdirection;

//interaction with passengers

if(keyboard_check_pressed(ord("E"))) 
{
	passenger = instance_place(x,y,o_passenger);
	if(passenger != noone && !instance_exists(o_ingame_gui.portrait))
	{
		
		o_ingame_gui.portrait = instance_create_layer(o_ingame_gui.margin, o_ingame_gui.margin, "instances", o_portrait);
		o_ingame_gui.portrait.passenger = passenger;
		
	}
}


//if(x - camera_get_view_x(view_camera[1]) < 960 - dead_zone_camera)
//{camera_set_view_pos(view_camera[1], 960 - dead_zone_camera - x - camera_get_view_x(view_camera[1]) , 540)}
//else if(x - camera_get_view_x(view_camera[1]) > 960 + dead_zone_camera)
//{camera_set_view_pos(view_camera[1], 0, 540)}





