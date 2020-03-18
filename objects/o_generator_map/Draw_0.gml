scr_draw_rectangle_width(0,0,room_width,room_height,20);

draw_set_color(c_red)
draw_triangle(actual_statoion.x-20,actual_statoion.y-40,actual_statoion.x+20,actual_statoion.y-40,actual_statoion.x,actual_statoion.y-20,0)

for(var i=1;i<=10;i++)
{
	if actual_statoion.connection[i]!=actual_statoion.id
	{
		if actual_statoion.connection[i]==choose_station
		{
			draw_set_color(c_lime);
		}
		else
		{
			draw_set_color(c_blue);
		}
		draw_triangle(actual_statoion.connection[i].x-20,actual_statoion.connection[i].y-40,actual_statoion.connection[i].x+20,actual_statoion.connection[i].y-40,actual_statoion.connection[i].x,actual_statoion.connection[i].y-20,0)
	}
}