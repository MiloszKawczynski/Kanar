left_page=140;
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(f_note_medium);

draw_text(x+left_page,y+10,"Guidlines");

draw_set_halign(fa_left);
draw_set_font(f_note_small);

draw_text(x+left_page-110,y+90,"Symbol:");
draw_sprite_ext(s_symbol,0,x+left_page-80+string_width("Symbol: "),y+110,2,2,0,c_white,1);

draw_text(x+left_page-110,y+150,"Code:");
draw_text(x+left_page-110+string_width("Code: "),y+150,"Erdg34t");