/// @description spawning passenger

if(keyboard_check_pressed(vk_space)) spawn = true;

if(spawn && state == state.closed){

	state = state.opening;
	spawn = 0;

}

if(state ==state.opening){

	image_speed = 1;
	
	if(image_index == 11){
		
		state = state.closing;
		
		instance_create_layer(x,y+40,"instances",o_passenger);
		o_bus.passengers ++;
		
	}

}

if(state == state.closing){

	image_speed = -1;
	
	if(image_index == 0){
		
		state = state.closed;
		image_speed = 0;
		
	}

}