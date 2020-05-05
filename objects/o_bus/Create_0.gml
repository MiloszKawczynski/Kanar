/// @description setting up bus
state = state.going;
passengers = 0;

//spawning entrances

entrance[1] = instance_create_layer(672,704,"instances",o_entrance);
entrance[2] = instance_create_layer(1632,704,"instances",o_entrance);
entrance[3] = instance_create_layer(2560,704,"instances",o_entrance);
entrance[4] = instance_create_layer(3456,704,"instances",o_entrance);

for(var i = 1; i <= 4; i++){
	entrance[i].bus = id;
	entrance[i].spawn = true;
}

//new pasenger spawn timer
min_new_passengers=1
max_new_passengers=3

min_stops_number=2
max_stops_number=5

stops_number=irandom_range(min_stops_number,max_stops_number);

time_for_end=(((global.arrive_time_hour-hour(global.time))*60)+(global.arrive_time_minute-minute(global.time)))*240;
time_for_stop=((((global.arrive_time_hour-hour(global.time))*60)+(global.arrive_time_minute-minute(global.time)))/(stops_number))*240;

alarm[2]=time_for_end;
