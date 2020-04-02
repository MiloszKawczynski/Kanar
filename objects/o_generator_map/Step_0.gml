//R - reset (Do testowania)
//Enter - przejście do tramwaju (Do testowania)

if keyboard_check_pressed(ord("R")) {room_restart();}
if keyboard_check_pressed(vk_enter) {room_goto(r_test);}

//ustawienie pozycji objektu w miejscu kursora

x=mouse_x;
y=mouse_y;

//sprawdzenie najbliższej stacji możliwej do zaznaczenia

for(var i=1;i<=10;i++)
{
	if actual_statoion.connection[i]!=actual_statoion.id
	{
		if actual_statoion.connection[i]==instance_nearest(x,y,o_station)
		{
			choose_station=instance_nearest(x,y,o_station);
			travel_time=round((point_distance(actual_statoion.x,actual_statoion.y,choose_station.x,choose_station.y)/200)*time_scale);
			travel_time_hour=floor(travel_time/60);
			travel_time_minute=(travel_time-(travel_time_hour*60));
		}
	}
}

//Wyzerowanie zaznaczonej stacji jeśli kursor jest dalej niż zmienna

if distance_to_object(instance_nearest(x,y,o_station))>station_distance
{
	choose_station=noone;
}

//"Przejazd" do danej wybranej stacji

if mouse_check_button_pressed(mb_left) and choose_station!=noone
{
	global.arrive_time_hour=hour(global.time)+travel_time_hour;
	global.arrive_time_minute=minute(global.time)+travel_time_minute;
	actual_statoion=choose_station;
	room_goto(r_test);
}