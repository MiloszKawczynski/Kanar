draw_self();

draw_set_halign(fa_center);

draw_set_font(f_note_small);
draw_text(x+250,y+100,string(year(global.time)));

draw_set_font(f_note_big);
draw_set_color(c_red);
draw_text(x+250,y+225,string(day(global.time)));

draw_set_font(f_note_small);
draw_set_color(c_black);
switch(month(global.time))
{
	case 1: month_text="January" break;
	case 2: month_text="February" break;
	case 3: month_text="March" break;
	case 4: month_text="April" break;
	case 5: month_text="May" break;
	case 6: month_text="June" break;
	case 7: month_text="July" break;
	case 8: month_text="August" break;
	case 9: month_text="September" break;
	case 10: month_text="October" break;
	case 11: month_text="November" break;
	case 12: month_text="December" break;
}

draw_text(x+250,y+325,month_text);