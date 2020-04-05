draw_self();
draw_set_color(c_black);

draw_set_font(f_price);
draw_text(x+30,y-20,string(price)+"zl");

draw_set_font(f_ticket);
draw_text(x,y,"up to "+string(value)+" min, "+string(type));

draw_text_transformed(x-170,y,code,1,1,90);

//draw_text(x+70,y+40,symbol);
draw_sprite(s_symbol,symbol,x+70,y+40);

draw_text_transformed(x+153,y,string(year(time))+"."+string(month(time))+"."+string(day(time))+" "+string(hour(time))+":"+string(minute(time)),1,1,270);