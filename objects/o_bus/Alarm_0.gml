/// @description spawning new passengers

new_passengers_number = irandom_range(min_new_passengers,max_new_passengers)

for(var i=0;i<new_passengers_number;i++)
{
	enr = choose(1,2,3,4);

	entrance[enr].spawn = true;
}


//alarm_set(0,960);
alarm[0]=time_for_stop;