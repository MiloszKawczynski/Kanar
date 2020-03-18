randomise();
window_set_fullscreen(0);

instance_create_layer(room_width/2,30,"instances",o_clock);

minimum_station_number=3;
maximum_station_number=10

map_margin=300

station_distance=100;

station_number=irandom_range(minimum_station_number,maximum_station_number);

for(var i=1;i<=station_number;i++)
{
	instance_create_layer(random_range(map_margin,room_width-map_margin),random_range(map_margin,room_height-map_margin),"stations",o_station)
}

actual_statoion=instance_nearest(0,0,o_station);