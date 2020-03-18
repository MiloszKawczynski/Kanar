/// @description menu setup

depth = -20;

for(var i = 0; i < 4; i++){

	bookmark[i] = instance_create_layer(
	
		x + o_ingame_gui.margin + sprite_get_width(s_bookmark) * i,
		y,
		"instances",
		o_bookmark
		
	);
	
	bookmark[i].image_index = i;
	bookmark[i].pagenr = i + 1;

}

//page swap trigger
swap = false;

//which page to trigger (initialization)
pagenr = 1;

//spawn initial page

page = instance_create_layer(
	
	x + o_ingame_gui.margin,
	y + sprite_get_height(s_bookmark),
	"instances",
	asset_get_index("o_page1")
		
);
