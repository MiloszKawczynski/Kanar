/// @description click to mandacik

if mouse_check_button_pressed(mb_left)
{
	if collision_point(mouse_x,mouse_y,id,0,0)
	{
		if list==1 
		{
			list=0;
		}
		else 
		{
			list=1;
		}
	}
	
	if list==1
	{
		for(var i=1;i<5;i++)
		{
			if collision_rectangle(mouse_x-101,mouse_y-(37*i),mouse_x+101,mouse_y-(37*i),self,1,0)
			{
				choosed_reason=reason[i];
				list=0;
				pticket=instance_create_layer(1440,270,"instances",o_penalty_ticket);
				pticket.reason=choosed_reason
			}
		}
	}
}
