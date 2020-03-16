randomize();

for(var k=1;k<=10;k++)
{
	for(var kk=1;kk<=10;kk++)
	{
		tab_connection[k,kk]=0;
	}
}

//losowanie ilosci stacji

station_number=irandom_range(4,8);

//Pętla generująca

for(var i=1;i<=station_number;i++)
{
	//losowanie pozycji stacji
	
	position_x=random_range(100,room_width-100);
	position_y=random_range(100,room_height-100);
	
	for(var p=1;p<i;p++)
	{
		while (point_distance(position_x,position_y,tab_station[p,1],tab_station[p,2])<600)
		{
			position_x=random_range(100,room_width-100);
			position_y=random_range(100,room_height-100);
		}
	}
	
	tab_station[i,1]=position_x;
	tab_station[i,2]=position_y;
	
	//losowanie ilosci polaczen od stacji
	
	tab_station[i,3]=irandom_range(1,3);
	
	//losowanie polaczen
	
	for(var j=1;j<=tab_station[i,3];j++)
	{
		connection=irandom_range(1,station_number);
		
		if tab_connection[connection,j]==0
		{
			tab_connection[j,connection]=1;
		}
	}
}