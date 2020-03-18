/// @description page swap

if(swap){

	instance_destroy(page);
	
	page = instance_create_layer(
	
		x + o_ingame_gui.margin,
		y + sprite_get_height(s_bookmark),
		"instances",
		asset_get_index("o_page" + string(pagenr))
		
	);
	
	swap = false;

}
