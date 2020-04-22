left_page=140;
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(f_note_medium);
draw_set_color(c_black)

draw_text(x+left_page,y+10,"Points");

draw_set_font(f_note_small);

if global.points<0
{
	draw_set_color(c_red)
}
else
{
	draw_set_color(c_lime)
}

draw_text(x+left_page,y+60,global.points);