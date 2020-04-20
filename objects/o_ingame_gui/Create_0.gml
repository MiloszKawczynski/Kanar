/// @description setup

//point counter
global.points = 0;

//create clock
instance_create_layer(1920/2,30,"instances",o_clock);

//main box
width = 1920;
height = 540;

//universal vars
margin = 10;

//portrait vars
portrait_width = height - 2 * margin;
portrait_height = height - 2 * margin;

portrait = noone;

//gameplay box
gameplay_box_width = width - 2 * height;

gameplay_box_x = 2 * margin + portrait_width;
gameplay_box_y = margin;

gameplay_box_endx = 2 * margin + portrait_width + gameplay_box_width;
gameplay_box_endy = height - margin;

//menu box
menu_box_x = 3 * margin + portrait_width + gameplay_box_width;
menu_box_y = margin;

menu_box_endx = width - margin;
menu_box_endy = height - margin;

//create menu
instance_create_layer(

	3 * margin + portrait_width + gameplay_box_width,
	2 * margin,
	"instances",
	o_menu
	
);

//create bus obj
instance_create_layer(0,0,"instances",o_bus);