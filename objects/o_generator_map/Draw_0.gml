//Rysowanie ramki

scr_draw_rectangle_width(0,0,room_width,room_height,20);

//Rysowanie aktualnej stacjii

draw_set_color(c_red)
draw_triangle(actual_statoion.x-20,actual_statoion.y-40,actual_statoion.x+20,actual_statoion.y-40,actual_statoion.x,actual_statoion.y-20,0)

//Rysowanie stacjii z połączeniem (niebieski) oraz wybranej (limonkowy)

for(var i=1;i<=10;i++)
{
	if actual_statoion.connection[i]!=actual_statoion.id
	{
		if actual_statoion.connection[i]==choose_station
		{
			draw_set_color(c_lime);
			
			draw_rectangle(actual_statoion.connection[i].x-60,actual_statoion.connection[i].y-80,actual_statoion.connection[i].x+60,actual_statoion.connection[i].y-40,0);
			
			draw_set_color(c_black);
			
			draw_rectangle(actual_statoion.connection[i].x-60,actual_statoion.connection[i].y-80,actual_statoion.connection[i].x+60,actual_statoion.connection[i].y-40,1);
			
			draw_text(choose_station.x,choose_station.y-59,string(travel_time_hour)+":"+string(travel_time_minute));
			
			draw_set_color(c_lime);
		}
		else
		{
			draw_set_color(c_blue);
		}
		draw_triangle(actual_statoion.connection[i].x-20,actual_statoion.connection[i].y-40,actual_statoion.connection[i].x+20,actual_statoion.connection[i].y-40,actual_statoion.connection[i].x,actual_statoion.connection[i].y-20,0)
		draw_set_color(c_black);
		draw_triangle(actual_statoion.connection[i].x-20,actual_statoion.connection[i].y-40,actual_statoion.connection[i].x+20,actual_statoion.connection[i].y-40,actual_statoion.connection[i].x,actual_statoion.connection[i].y-20,1)
	}
}
