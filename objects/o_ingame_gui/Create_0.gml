/// @description setup

//create clock
instance_create_layer(50,50,"instances",o_clock);

//main box
width = room_width;
height = room_height/2;

//portrait stuff
portrait_margin = 10;
portrait_width = 520;
portrait_height = 520;

portrait = noone;

//gameplay box

gameplay_box_x = portrait_margin*2 + portrait_width;
gameplay_box_y = portrait_margin;

gameplay_box_endx = width - portrait_margin;
gameplay_box_endy = height - portrait_margin;

