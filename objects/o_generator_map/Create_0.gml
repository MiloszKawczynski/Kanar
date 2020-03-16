//losowanie ilosci stacji

station_number=irandom_range(4,8);

//Pętla generująca

for(var i=1;i<=station_number;i++)
{
	//losowanie pozycji stacji
	
	tab_station[i,1]=random(room_width);
	tab_station[i,2]=random(room_height);
	
	//losowanie ilosci polaczen od stacji
	
	tab_station[i,3]=irandom_range(1,station_number);
	
	//losowanie polaczen
	
	for(var j=1;j<=tab_station[i,3];j++)
	{
		tab_station[i,3+j]=irandom_range(1,station_number);
	}
}