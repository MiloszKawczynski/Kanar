draw_set_color(c_lime);

draw_sprite(s_bus_icon,0,(1-(o_bus.alarm[2]/o_bus.time_for_end))*1600,450)

for(var i=1;i<o_bus.stops_number;i++)
{
	draw_sprite(s_stop_icon,0,((1600/o_bus.stops_number)*i),450)
}