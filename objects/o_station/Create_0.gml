//Załadowanie do tablicy połączeń pustych wartości

for(var i=1;i<=10;i++)
{
	connection[i]=self;
}

//Rostawienie stacji na odległość station_distance

if instance_number(o_station)>1
{
	if distance_to_object(o_station)<o_generator_map.station_distance
	{
		x_random=random_range(o_generator_map.map_margin,room_width-o_generator_map.map_margin);
		y_random=random_range(o_generator_map.map_margin,room_height-o_generator_map.map_margin);
		
		while(distance_to_object(o_station)<o_generator_map.station_distance)
		{
			x_random=random_range(o_generator_map.map_margin,room_width-o_generator_map.map_margin);
			y_random=random_range(o_generator_map.map_margin,room_height-o_generator_map.map_margin);
			
			x=x_random;
			y=y_random;
		}
		
		x=x_random;
		y=y_random;
		
	}
}

//alarm za 5 ticków

alarm[0]=5;