draw_set_color(c_black);

for(var i=1;i<=station_number;i++)
{
	//rysowanie pozycji stacji
	
	draw_circle(tab_station[i,1],tab_station[i,2],6,0)
	
	//rysowanie polaczen
	
	for(var k=1;k<=10;k++)
	{
		for(var kk=1;kk<=10;kk++)
		{
			if tab_connection[k,kk]==1
			{
				draw_line_width(tab_station[kk,1],tab_station[kk,2],tab_station[k,1],tab_station[k,2],2);
			}
		}
	}	
}