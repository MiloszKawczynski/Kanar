
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
	if(place_meeting(x,y,o_passenger))
	{
		passenger_inspection=1
		gravity=1 // works as a temporary confirmation of successfull interaction 
	}
}