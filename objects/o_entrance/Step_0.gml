/// @description spawning passenger

if(spawn && state == state.closed){

	state = state.opening;
	spawn = 0;

}

if(state ==state.opening){

	image_speed = 1;
	
	if(image_index == 11){
		
		state = state.closing;
		
		for(var i = 0; i < multiplier; i++){
			instance_create_layer(x,y+40+sprite_get_height(s_passenger)/2,"instances",o_passenger);
		}
		
		bus.passengers ++;
		multiplier = 1;
		
	}

}

if(state == state.closing){

	image_speed = -1;
	
	if(image_index == 0){
		
		state = state.closed;
		image_speed = 0;
		
	}

}