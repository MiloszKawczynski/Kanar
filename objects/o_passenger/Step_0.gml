


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



//calculating speed of passenger
x += hspeed_value * hdirection;
y += vspeed_value * vdirection;

//Depth of the passanger

depth = -y 

//movement of passengers

if(abs(y-enteredy)>standingzone)
{
	vdirection=-sign(y-enteredy)
}
else {vdirection=0}


if(abs(x-enteredx)>standingzone)
{
	hdirection=-sign(x-enteredx)
}
else {hdirection=0}
	
	

		
