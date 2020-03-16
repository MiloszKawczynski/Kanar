/// @description draw gui

//base
draw_rectangle_colour(0,0,width,height,c_black,c_black,c_black,c_black,0);

//portrait box
draw_rectangle_colour(
    portrait_margin, //x
    portrait_margin, //y
    portrait_width + portrait_margin, //endx
    portrait_height + portrait_margin, //endy
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

