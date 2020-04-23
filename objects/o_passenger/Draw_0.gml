draw_self();

//debug

if global.debug==true 
{
	if checked==false
	{
		draw_set_font(f_note_medium)
		draw_set_color(c_red)
		draw_text(x,y-270,"!")
	}
}
