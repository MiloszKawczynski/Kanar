if alarm[1]==-1
{
	for(var i=0;i<stops_number;i++)
	{
		if alarm[2]==(time_for_end/stops_number)*i
		{

			new_passengers_number = irandom_range(min_new_passengers,max_new_passengers)

			for(var i=0;i<new_passengers_number;i++)
			{
				enr = choose(1,2,3,4);

				entrance[enr].spawn = true;
			}

			//staritng the dealy
			state = state.stopped
			alarm[1] = 60;
		}
	}
}