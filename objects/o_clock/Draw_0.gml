/// @description draw clock

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_clock);
draw_set_color(c_red)

draw_self();

draw_text(clock_x,clock_y,time);