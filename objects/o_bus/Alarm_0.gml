/// @description spawning new passengers

new_passengers_number = irandom_range(min_new_passengers,max_new_passengers)

for(var i=0;i<new_passengers_number;i++)
{
	enr = choose(1,2,3,4);

	entrance[enr].spawn = true;
}

stop++;

//staritng the dealy
state = state.stopped
alarm[1] = 60;
