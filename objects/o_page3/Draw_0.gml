draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(f_note_medium);

draw_text(x+250,y+10,"Guidlines")

draw_set_halign(fa_left);
draw_set_font(f_note_small);

draw_text(x+25,y+100,"Symbol:")
draw_sprite_ext(s_symbol,0,x+200,y+110,2,2,0,c_white,1);

draw_text(x+25,y+150,"Code:")
draw_text(x+150,y+150,"Erdg34t");