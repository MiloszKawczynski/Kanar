/// @description behaviour

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

//Leaving bus command
if(state==state.leaving)
{
	inst = instance_nearest(x,y,o_entrance);
	enteredx = inst.x;
	enteredy = inst.y;
}

//deciding to leave

if( (checked == true || floor(global.time) - 10 > floor(ticket_time) + ticket_value) &&  o_bus.state == state.stopped){
	
	state = state.leaving;

}
	
	

		
