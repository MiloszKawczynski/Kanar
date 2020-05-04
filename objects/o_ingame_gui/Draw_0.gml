/// @description draw gui

//base
draw_rectangle_colour(0,0,width,height,c_black,c_black,c_black,c_black,0);

//portrait box
draw_rectangle_colour(
    margin, //x
    margin, //y
    portrait_width + margin, //endx
    portrait_height + margin, //endy
    c_gray,c_gray,c_gray,c_gray,0  //color
);

//gameplay box
draw_rectangle_colour(
    gameplay_box_x, //x
    gameplay_box_y, //y
    gameplay_box_endx, //endx
    gameplay_box_endy, //endy
    c_gray,c_gray,c_gray,c_gray,0  //color
);

//menu box
draw_rectangle_colour(
    menu_box_x, //x
    menu_box_y, //y
    menu_box_endx, //endx
    menu_box_endy, //endy
    c_gray,c_gray,c_gray,c_gray,0  //color
);

//points
//draw_set_font(f_clock);
//draw_set_color(c_black);
//draw_set_halign(fa_center);
//draw_set_valign(fa_top);
//draw_text(o_clock.clock_x-50,o_clock.clock_y+100,"points:"+" "+string(global.points));

//draw_set_color(c_lime);
//draw_rectangle(0,0,(1-o_bus.alarm[0])*o_bus.stop,10,0);