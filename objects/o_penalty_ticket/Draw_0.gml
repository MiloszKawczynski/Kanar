draw_self();

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(f_note_medium)
draw_text(x,y-45,"Penalty ticket");
draw_text(x,y,"Do not ignore");
draw_text(x,y+45,reason);