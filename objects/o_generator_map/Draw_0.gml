draw_set_color(c_black);

for(var i=1;i<=station_number;i++)
{
	//losowanie pozycji stacji
	
	draw_circle(tab_station[i,1],tab_station[i,2],6,1)
	
	//losowanie polaczen
	
	for(var j=1;j<=tab_station[i,3];j++)
	{
		draw_line(tab_station[i,1],tab_station[i,2],tab_station[j,1],tab_station[j,2])
	}
}