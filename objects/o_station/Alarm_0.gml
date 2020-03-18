for(var j=0;j<distance_to_object(instance_furthest(x,y,o_station))+100;j++)
{
	if connection[1]==id
	{
		if collision_circle(x,y,j,o_station,1,1)
		{
			connection[1]=collision_circle(x,y,j,o_station,1,1);
	
			for(var i=1;i<10;i++)
			{
				if connection[1].connection[i]==connection[1]
				{
					connection[1].connection[i]=id;
					break;
				}
			}
		}
	}

	if connection[2]==id
	{
		if collision_circle(x,y,j-1,o_station,1,1)
		{
			pottencial_connection=collision_circle(x,y,j-1,o_station,1,1);
		
			if connection[1]!=pottencial_connection
			{	
				if pottencial_connection.connection[1]==pottencial_connection.id or pottencial_connection.connection[2]==pottencial_connection.id
				{
					connection[2]=pottencial_connection;
		
					for(var i=1;i<10;i++)
					{
						if connection[2].connection[i]==connection[2]
						{
							connection[2].connection[i]=id;
							break;
						}
					}
				}
			}
		}
	}
	
	if connection[3]==id
	{
		if collision_circle(x,y,j-1,o_station,1,1)
		{
			pottencial_connection=collision_circle(x,y,j-1,o_station,1,1);
		
			if connection[1]!=pottencial_connection and connection[2]!=pottencial_connection
			{	
				if pottencial_connection.connection[1]==pottencial_connection.id or pottencial_connection.connection[2]==pottencial_connection.id or pottencial_connection.connection[3]==pottencial_connection.id
				{
					connection[3]=pottencial_connection;
		
					for(var i=1;i<10;i++)
					{
						if connection[3].connection[i]==connection[3]
						{
							connection[3].connection[i]=id;
							break;
						}
					}
				}
			}
		}
	}

	if connection[1]!=id and connection[2]!=id and connection[3]!=id
	{
		break;
	}
}