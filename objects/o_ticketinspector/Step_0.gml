//Movment block when Checking

if passenger==noone
{
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

	//borders of movement

	if(y + vspeed_value * vdirection > room_height){
		vdirection = 0;
	}

	if(y + vspeed_value * vdirection < room_height - 210){
		vdirection = 0;
	}
	//     VV      grnica obrazka NA SZTYWNO
	if(x + 50 + hspeed_value * hdirection > room_width){
		hdirection = 0;
	}
	//     VV      grnica obrazka NA SZTYWNO
	if(x - 50 + hspeed_value * hdirection < 0){
		hdirection = 0;
	}

	//calculating speed of character
	x += hspeed_value * hdirection;
	y += vspeed_value * vdirection;
}

//interaction with passengers

if(keyboard_check_pressed(ord("E"))) 
{
	passenger = instance_place(x,y,o_passenger);
	if(passenger != noone && !instance_exists(o_ingame_gui.portrait))
	{
		if(!passenger.checked){
			o_ingame_gui.portrait = instance_create_layer(o_ingame_gui.margin, o_ingame_gui.margin, "instances", o_portrait);
			o_ingame_gui.portrait.passenger = passenger;
		}else
			global.points--;
			passenger=noone;
		
	}
}

//depth of inspector counted from his feet (no need to subtract/add half of his height - sprite has offset set on the bottom)

depth= -y -1 // I know, complicated as fuck


if sign(x-xprevious)!=0
{
	image_xscale=sign(x-xprevious);
}

//Checking for closest passenger id (if further than radius returns noone
if(collision_circle(x,y,pass_collision_rad,o_passenger,false,true))
{
	pass_id=instance_nearest(x,y,o_passenger);
}
else {pass_id=noone;}
	
//debug

if keyboard_check_pressed(vk_f9) 
{
	if global.debug==false {global.debug=true;} else {global.debug=false;}
}

if global.debug==true
{
	view_set_visible(1,0);
	view_set_visible(2,1);
}
else
{
	view_set_visible(1,1);
	view_set_visible(2,0);
}