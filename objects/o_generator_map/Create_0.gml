//ustawienie losowego ziarna

randomise();

//stworzenie zegara na warstwie instances

instance_create_layer(room_width/2,30,"instances",o_clock);

//zmienne

//ustawienie minimalnej i maksymalnej ilość stacji

minimum_station_number=3;
maximum_station_number=5;

//ustawienie marginesu stacji od krawędzi ekranu

map_margin=300

//czas podróży

travel_time=0;
time_scale=10;

//ustawienie dystansu stacjii od siebie

station_distance=100;

//Pierwsza wybrana stacja

choose_station=noone;

//Wylosowanie ilości stacji

station_number=irandom_range(minimum_station_number,maximum_station_number);

//Wylosowanie pozycji stacji i stworzenie ich na warstie stations

for(var i=1;i<=station_number;i++)
{
	instance_create_layer(random_range(map_margin,room_width-map_margin),random_range(map_margin,room_height-map_margin),"stations",o_station)
}

//ustawienie stacji początkowej na stację najbliższą lewego górnego rogu ekranu

actual_statoion=instance_nearest(0,0,o_station);