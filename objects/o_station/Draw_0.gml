draw_self();
draw_set_color(c_black)

if instance_number(o_station)>1
{	
	for(var i=1;i<=10;i++)
	{
		draw_line_width(x,y,connection[i].x,connection[i].y,5);
	}
}