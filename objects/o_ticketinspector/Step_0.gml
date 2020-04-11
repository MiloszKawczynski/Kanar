
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

if(x + sprite_width/2 + hspeed_value * hdirection > room_width){
	hdirection = 0;
}

if(x - sprite_width/2 + hspeed_value * hdirection < 0){
	hdirection = 0;
}

//calculating speed of character
x += hspeed_value * hdirection * crowd_effect;
y += vspeed_value * vdirection * crowd_effect;

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

//depth of inspector counted from his feet (no need to subtract/add half of his height - sprite has offset set on the bottom)

depth= -y -1 // I know, complicated as fuck


//not good way to do crowd effect but kinda works
//if(distance_to_object(o_passenger)<30)
//{crowd_effect=crowd_effect_value}
//else {crowd_effect=1}

if sign(x-xprevious)!=0
{
	image_xscale=sign(x-xprevious);
}