/// @description draw clock

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_clock);
draw_set_color(c_red);

draw_self();

draw_text(clock_x,clock_y,s_time);

draw_set_color(c_black);

//draw_text(clock_x+250,clock_y+30,string(year(global.time))+"."+string(month(global.time))+"."+string(day(global.time)));

//draw_text(clock_x+150,clock_y+180,"Code: Erdg34t");

//draw_text(clock_x+150,clock_y+230,"Symbol: 0");

